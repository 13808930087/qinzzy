package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.LoginDao;
import com.situ.jingbao.dao.TitleDao;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.service.TitleService;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TitleServiceImpl implements TitleService {

    private TitleDao titleDao;

    public TitleServiceImpl(TitleDao titleDao) {
        this.titleDao = titleDao;
    }


    @Override
    public Title findTitle(Integer titleId) {
        return titleDao.findTitle(titleId);
    }

    @Override
    public List<Title> findAllTitle() {
        return titleDao.findAllTitle();
    }
}
