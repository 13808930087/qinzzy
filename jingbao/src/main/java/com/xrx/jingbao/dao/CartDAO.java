package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.Cart;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CartDAO {

    Integer updateCart(@Param("cart") Cart cart);

    Integer deleteCart(@Param("customerId")Integer customerId, @Param("goodsId")Integer goodsId);

    Cart findCartOne(@Param("customerId")Integer customerId, @Param("goodsId")Integer goodsId);
    List<Cart> findCart(int customerId);

    Integer saveCart(@Param("cart")Cart cart);

}
