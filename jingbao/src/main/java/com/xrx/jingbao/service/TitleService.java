package com.xrx.jingbao.service;

import com.xrx.jingbao.model.Title;

import java.util.List;

public interface TitleService {
    Title findTitle(Integer titleId) ;
    List<Title> findAllTitle() ;
}
