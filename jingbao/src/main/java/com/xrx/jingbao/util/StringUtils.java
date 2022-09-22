package com.xrx.jingbao.util;

public class StringUtils {

    public static boolean isBlank(String str) {
		return str == null || str.trim().equals("") || str.trim().equals("null");
    }

    public static boolean isNotBlank(String str) {
        return !isBlank(str);
    }
}
