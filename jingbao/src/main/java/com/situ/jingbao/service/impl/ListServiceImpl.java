package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.ListDao;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.GoodsCondition;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.service.ListService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Service
public class ListServiceImpl  implements ListService {
    private ListDao listDao;

    public ListServiceImpl(ListDao listDao) {
        this.listDao = listDao;
    }

    @Override
    public List<Goods> findGoods(GoodsCondition gs) {
        List<Goods> goodss= listDao.findGoods(gs);
        for (Goods g : goodss){
                g.takeNewGoodsPrice();
        }
        return goodss;
    }

    @Override
    public Goods getGoodsId(int goodsId) {
        return listDao.getGoodsId(goodsId);
    }


    @Override
    public Integer findId(String categoryName) {
        return listDao.findId(categoryName);
    }
}
