package com.situ.flight.util;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.sql.*;
import java.time.*;
import java.util.Date;
import java.util.*;

public final class JdbcUtils {
    public static final String MTSQL_DRIVER = "com.mysql.cj.jdbc.Driver";

    private JdbcUtils() {

    }

    // 连接数据库
    public static Connection getConnection(String driverName, String url, String user, String password) {
        // 获取数据库连接

        try {
            // 1.加载数据库驱动，参数为驱动类名称
            Class.forName(driverName);
            // 2.获取数据库连接
            return DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败", e);
        }
    }

    public static Connection getConnection(String url, String user, String password) {
        // 2.获取数据库连接
        return getConnection(MTSQL_DRIVER, url, user, password);
    }

    // 返回一个结果集
    public static ResultSet execouteQuery(Connection conn, String sql, Object... args) {
        try {
            // 3.创建传输sql的载体
            PreparedStatement ps = conn.prepareStatement(sql);
            // 5.传值给ps的？
            for (int i = 0; i < args.length; i++) {
                ps.setObject(i + 1, args[i]);
            }
            // 返回一个ResultSet结果集
            return ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            // TODO: handle exception
            throw new RuntimeException("查询结果集失败", e);
        }
    }

    // 返回一个对象的集合
    public static <T> T query(Connection conn, ResultSetHandler<T> handler, String sql, Object... args) {
        // 接受结果集
        ResultSet rs = execouteQuery(conn, sql, args);
        // 获取结果集；返回
        return handler.handle(rs);
    }

    // 增删改查
    public static int updata(Connection conn, String sql, Object... args) {
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            for (int i = 0; i < args.length; i++) {
                ps.setObject(i + 1, args[i]);
            }
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // TODO: handle exception
            throw new RuntimeException("对数据库进行增删改查失败", e);
        }
    }

    // 关闭数据库
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    // 将str数据库的列名，转换成javabeand对应的属性名
    public static String underlineToCamel(String str) {

        StringBuilder sb = new StringBuilder();
        // 根据_分割字符串存到字符串数组
        String[] tokens = str.split("_");
        sb.append(tokens[0]);
        for (int i = 1; i < tokens.length; i++) {
            // 获取第一个字符
            String firstLetter = tokens[i].substring(0, 1);
            // 获取第二个字符
            String remian = tokens[i].substring(1);
            // 第一个字符转换成大写，其他不变
            sb.append(firstLetter.toUpperCase() + remian);
        }
        return sb.toString();

    }

    // 将obj转换成pd属性修饰符对象类型
    private static Object cast(Object obj, PropertyDescriptor pd) {
        if (obj == null) {
            return obj;
        }
        // 如果是integer类型
        if (pd.getPropertyType() == Integer.class) {
            // 强转成number再专成int
            return ((Number) obj).intValue();
        }

        if (pd.getPropertyType() == Long.class) {
            return ((Number) obj).longValue();
        }

        if (pd.getPropertyType() == Float.class) {
            return ((Number) obj).floatValue();
        }

        if (pd.getPropertyType() == Double.class) {
            return ((Number) obj).doubleValue();
        }

        if (pd.getPropertyType() == LocalDate.class) {
            Instant is = Instant.ofEpochMilli(((Date) obj).getTime());
            return LocalDate.ofInstant(is, ZoneId.systemDefault());
        }

        if (pd.getPropertyType() == LocalTime.class) {
            Instant is = Instant.ofEpochMilli(((Date) obj).getTime());
            return LocalTime.ofInstant(is, ZoneId.systemDefault());
        }

        if (pd.getPropertyType() == LocalDateTime.class) {
            Instant is = Instant.ofEpochMilli(((Date) obj).getTime());
            return LocalDateTime.ofInstant(is, ZoneId.systemDefault());
        }

        return obj;
    }

    // 将结果集转换成任意类型的接口
    public interface ResultSetHandler<T> {
        // 将结果集转换成任意类型的抽象方法
        public T handle(ResultSet rs);
    }

    public static class LongResultSetHandler implements ResultSetHandler<Long> {
        @Override
        public Long handle(ResultSet rs) {
            try {
                if (rs.next()) {
                    return rs.getLong(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw new RuntimeException("结果集转换异常", e);
            }
            return 0l;

        }
    }

    // 实现ResultSetHandler接口
    public static class BeanListHandler<T> implements ResultSetHandler<List<T>> {

        // 使用constructor存储获取构造函数
        private final Constructor<T> constructor;
        // 存储结果集中所有的列名（别名）

        // 存储所有属性描述符，以属性名为key
        private final Map<String, PropertyDescriptor> descriptors = new HashMap<>();

        public BeanListHandler(Class<T> clazz) {

            try {
                // 获取一个javabean的信息
                BeanInfo bi = Introspector.getBeanInfo(clazz);

                // 获取javabean的所有的属性的描述符
                PropertyDescriptor[] pds = bi.getPropertyDescriptors();
                for (PropertyDescriptor pd : pds) {
                    descriptors.put(pd.getName(), pd);
                }

                // 强转要求模型必须有一个公有的无参的构造函数
                // 获取构造函数
                this.constructor = clazz.getDeclaredConstructor();
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                throw new RuntimeException("无法调用模型类无参的构造函数", e);

            }
        }

        @Override
        public List<T> handle(ResultSet rs) {
            // 创建任意类型的集合
            List<T> result = new ArrayList<>();
            List<String> columns = new ArrayList<>();
            try {
                // 结果集元数据
                ResultSetMetaData rsmd = rs.getMetaData();
                // 存储结果集个数
                int count = rsmd.getColumnCount();
                for (int i = 0; i < count; i++) {
                    columns.add(rsmd.getColumnLabel(i + 1));// 遍历结果集获取列名

                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            // todo从结果集取数据存到目标集合
            try {
                while (rs.next()) {
                    // 获取构造函数;创建对象
                    T t = this.constructor.newInstance();
                    for (String column : columns) {
                        // 获取数据库的值
                        Object obj = rs.getObject(column);
                        // 设置到目标对象
                        String property = underlineToCamel(column);
                        // 获取描述某属性的属性描述符对象
                        PropertyDescriptor pd = descriptors.get(property);
                        // 获取属性的写方法
                        Method method = pd.getWriteMethod();
                        // 通过反射给T设置值,,,,cast将obj改成pd类型，pd是属性的描述符对象
                        method.invoke(t, cast(obj, pd));

                    }
                    // 存到result集合
                    result.add(t);

                }
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            // 返回给用户
            return result;
        }

    }
}