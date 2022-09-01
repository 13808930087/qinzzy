package com.situ.jingbao.service;

import com.situ.jingbao.model.Title;

import java.util.List;

public interface TitleService {
    Title getTitle(Integer titleId) ;
    List<Title> getAllTitle() ;
}
