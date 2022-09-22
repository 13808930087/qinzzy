package com.xrx.jingbao.service.impl;


import com.xrx.jingbao.dao.ListDAO;
import com.xrx.jingbao.model.Goods;
import com.xrx.jingbao.model.GoodsCondition;
import com.xrx.jingbao.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
