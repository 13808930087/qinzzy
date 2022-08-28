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
    public List<Title> getTitle(int parentId) {
        return titleDao.getTitle(parentId);

    }
}
