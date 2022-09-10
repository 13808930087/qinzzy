package com.situ.jingbao.dao;

import com.situ.jingbao.model.Cart;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CartDao {

    Integer updateCart(@Param("cart") Cart cart);

    Integer removeCart(@Param("customerId")Integer customerId, @Param("goodsId")Integer goodsId);

    Cart getCartOne(@Param("customerId")Integer customerId, @Param("goodsId")Integer goodsId);
    List<Cart> getCart(int customerId);

    Integer addCart(@Param("cart")Cart cart);

}
