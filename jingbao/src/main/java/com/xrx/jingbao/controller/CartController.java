package com.xrx.jingbao.controller;

import com.xrx.jingbao.common.Global;
import com.xrx.jingbao.model.Cart;
import com.xrx.jingbao.model.Goods;
import com.xrx.jingbao.model.Title;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.service.CartService;
import com.xrx.jingbao.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private TitleService titleService;
    @Autowired
    private CartService cartService;

    @RequestMapping("/list")
    public String cart(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        head(map,session );
        map.put("pageName", "购物车");
        return "cart";
    }

    @PostMapping(value = "/addCart", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> saveCart(Cart cart, Goods goods, User user, Integer goodsNum, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        cart.setGoodsImg(goods.getGoodsFirstImg());
        cart.setGoodsPrice( goods.getNewGoodsPrice());
        if (cart.getGoodsNum() == null) {
            cart.setGoodsNum(1);
        }
        if (cart.getGoodsNum() ==1) {
            cart.setTotal(goods.getNewGoodsPrice());
        } else {
            cart.setTotal(cart.getGoodsPrice().multiply(new BigDecimal((int) cart.getGoodsNum())));
        }
        boolean b;
        Cart dbCart=cartService.findCartOne(cart.getCustomerId(),cart.getGoodsId());
        if(dbCart==null){
            b= cartService.saveCart(cart);
        }else {
            dbCart.setGoodsNum(cart.getGoodsNum()+dbCart.getGoodsNum());
            dbCart.setGoodsPrice(cart.getGoodsPrice());
            dbCart.setTotal(dbCart.getGoodsPrice().multiply(new BigDecimal((int) dbCart.getGoodsNum())));
            b=cartService.updateCart(dbCart);
        }
        if (b) {
            json.put("success", true);
            json.put("addCartPrompt", "购物车添加成功");
        } else {
            json.put("success", false);
            json.put("addCartPrompt", "购物车添加失败");
        }
        return json;
    }

    @PostMapping(value = "/updateCart", produces = "application/json;charset=utf-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> updateCart(Cart cart, HttpSession session) {
        boolean b = cartService.updateCart(cart);
        return ResponseEntity.ok(Map.of("success", b));
    }

    @PostMapping(value = "/deleteCart", produces = "application/json;charset=utf-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> deleteCart(Cart cart, HttpSession session) {
        boolean b = cartService.deleteCart(cart);
        return ResponseEntity.ok(Map.of("success", b));
    }
    public void head(Map<String, Object> map, HttpSession session ){
        List<Title> titles = titleService.findAllTitle();
        map.put("titles", titles);
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            if (user.getNickname() != null) {
                map.put("login_user_name", user.getNickname());
            } else {
                map.put("login_user_name", user.getUsername());
            }
        } else {
            map.put("login_user_name", "个人信息");
        }
        if (user != null) {
            map.put("login_or_name1", "个人信息");
            map.put("login_url1", "user/userTemp");
            map.put("login_or_name2", "注销");
            map.put("login_url2", "/logout");
        } else {
            map.put("login_or_name1", "登录");
            map.put("login_url1", "/login");
            map.put("login_or_name2", "注册");
            map.put("login_url2", "/login?sign=0");
        }
        List<Cart> carts = cartService.findCart(user);
        map.put("carts", carts);
    }

}
