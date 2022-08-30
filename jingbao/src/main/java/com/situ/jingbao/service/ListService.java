package com.situ.jingbao.service;

import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.Title;

import java.util.List;

public interface ListService {
    List<Goods> findAll(Goods goods);
    List<Title> findId(String categoryName);
}
