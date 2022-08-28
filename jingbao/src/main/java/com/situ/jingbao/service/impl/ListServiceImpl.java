package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.ListDao;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.service.ListService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ListServiceImpl  implements ListService {
    private ListDao listDao;

    public ListServiceImpl(ListDao listDao) {
        this.listDao = listDao;
    }

    @Override
    public List<Goods> findAll(Goods goods) {
       List<Goods> goodss= listDao.findAll(goods);
       for (Goods g : goodss){
           g.takeNewGoodsPrice();
          g.setNewGoodsPrice((double) ((int)(g.getNewGoodsPrice()*10))/10);
       }
        return goodss;
    }
}
