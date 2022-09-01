package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.ListDao;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.GoodsCondition;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.service.ListService;
import org.springframework.stereotype.Service;

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
            g.setNewGoodsPrice((double) ((int)(g.getNewGoodsPrice()*10))/10);
        }
        return goodss;
    }


    @Override
    public Integer findId(String categoryName) {
        return listDao.findId(categoryName);
    }
}
