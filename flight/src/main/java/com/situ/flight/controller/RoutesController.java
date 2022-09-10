package com.situ.flight.controller;

import com.situ.flight.model.Routes;
import com.situ.flight.model.RoutesSelect;
import com.situ.flight.service.RoutesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;
@Controller
@RequestMapping("/routes")
public class RoutesController {
    //private static final Logger LOGGER= LoggerFactory.getLogger(RoutesController.class);
    private static final Log LOGGER= LogFactory.getLog(RoutesController.class);
   @Autowired
    private RoutesService rsi;

    public RoutesController(RoutesService rsi) {
        this.rsi = rsi;
    }

    @RequestMapping("/list")
    protected String list(RoutesSelect routes, Integer pageNum, Integer pageSize, Map<String, Object> map) throws ServletException, IOException {

        LOGGER.error("查询");
        if (pageNum==null) {
            pageNum = 1;
        }
        if (pageSize==null) {
            pageSize = 20;
        }
        RoutesSelect rou = new RoutesSelect();
        if (routes != null) {
            rou = routes;
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Routes> rss = rsi.findAll( rou);
        PageInfo<Routes> pi=new PageInfo(rss);
        pi.calcByNavigatePages(5);
        pi.setNavigatePages(5);
        map.put("routes_list", rss);
        map.put("pi", pi);
        map.put("rou", rou);
        return "routes/RoutesList";
    }

    @PostMapping(value = "/modify", produces = "application/json;charset=utf-8")
    @ResponseBody
    private Map<String, Object> modify(Routes routes) throws ServletException, IOException {
        Routes rou = new Routes();
        if (routes != null) {
            rou = routes;
        }
        int num = rsi.update(rou);
        boolean bool;
        String rows;
        Map<String, Object> json = new HashMap<>();
        if (num > 0) {
            bool = true;
            rows = "修改成功";
        } else {
            bool = false;
            rows = "修改失败";
        }
        json.put("success", bool);
        json.put("rows", rows);
        return json;
    }

    @PostMapping(value = "/getId", produces = "application/json;charset=utf-8")
    @ResponseBody
    private Map<String, Object> getId(Routes routes) throws ServletException, IOException {
        Map<String, Object> json = new HashMap<>();
        boolean bool;
        if (routes.getRoutesId() != null) {
            Routes rou =null;
            rou = rsi.findId(routes.getRoutesId());
            if (rou != null) {
                routes=rou;
                bool = true;
                json.put("success", bool);
                json.put("routesId", routes.getRoutesId());
                json.put("departCity", routes.getDepartCity());
                json.put("arrivalCity", routes.getArrivalCity());
                json.put("arrivalDate", routes.getArrivalDate().toString());
                json.put("departDate", routes.getDepartDate().toString());
                json.put("planeId", routes.getPlaneId());
                json.put("commonPrice", routes.getCommonPrice());
                json.put("commerialPrice", routes.getCommerialPrice());
                json.put("firstPrice", routes.getFirstPrice());
            } else {
                bool = false;
                json.put("success", bool);
            }
        } else {
            bool = false;
            json.put("success", bool);
        }
        return json;
    }

    @PostMapping(value = "/add", produces = "application/json;charset=utf-8")
    @ResponseBody
    private Map<String, Object> add(Routes routes) throws ServletException, IOException {

        boolean bool;
        String rows;
        Map<String, Object> json = new HashMap<>();
        if (routes.getRoutesId() != null) {
            Routes rou = new Routes();
            if (routes != null) {
                rou = routes;
            }
            if (rsi.findId(rou.getRoutesId()) !=null ) {
                bool = false;
                rows = "id已存在";
            } else {
                int num = rsi.add(rou);
                if (num > 0) {
                    bool = true;
                    rows = "添加成功";
                } else {
                    bool = false;
                    rows = "添加失败";
                }
            }
        } else {
            bool = false;
            rows = "id不能为空";
        }
        json.put("success", bool);
        json.put("rows", rows);
        return json;
    }

    @PostMapping(value = "/delete", produces = "application/json;charset=utf-8")
    @ResponseBody
    private Map<String, Object> delete(HttpServletRequest req) throws IOException {
        String[] strIds = req.getParameterValues("ids");
        List<Integer> ids = Stream.of(strIds).map(Integer::valueOf).toList();
        int num = rsi.del(ids);
        boolean bool;
        String rows;
        Map<String, Object> json = new HashMap<>();
        if (num > 0) {
            bool = true;
            rows = "删除成功";
        } else {
            bool = false;
            rows = "删除失败";
        }
        json.put("success", bool);
        json.put("rows", rows);
        return json;
    }


}
