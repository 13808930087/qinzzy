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
       return listDao.findGoods(gs);

    }

    @Override
    public Goods findGoodsId(int goodsId) {
        return   listDao.findGoodsId(goodsId);
    }


    @Override
    public Integer findId(String categoryName) {
        return listDao.findId(categoryName);
    }
}
