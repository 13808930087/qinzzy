package com.situ.jingbao.service;

import com.situ.jingbao.model.Goods;

import java.util.List;

public interface ListService {
    List<Goods> findAll(Goods goods);
}
