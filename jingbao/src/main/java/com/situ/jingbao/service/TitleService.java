package com.situ.jingbao.service;

import com.situ.jingbao.model.Title;

import java.util.List;

public interface TitleService {
    List<Title> getTitle(int parentId) ;
}
