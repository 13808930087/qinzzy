package com.situ.jingbao.service.impl;


import com.situ.jingbao.dao.ListDAO;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.GoodsCondition;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Service
public class ListServiceImpl  implements ListService {

    @Autowired
    private ListDAO listDAO;

    @Override
    public List<Goods> findGoods(GoodsCondition gs) {
       return listDAO.findGoods(gs);

    }

    @Override
    public Goods findGoodsId(int goodsId) {
        return   listDAO.findGoodsId(goodsId);
    }


    @Override
    public Integer findId(String categoryName) {
        return listDAO.findId(categoryName);
    }
}
