package com.xrx.jingbao.service.impl;

import com.xrx.jingbao.dao.TitleDAO;
import com.xrx.jingbao.model.Title;
import com.xrx.jingbao.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TitleServiceImpl implements TitleService {
    @Autowired

    private TitleDAO titleDAO;

    @Override
    public Title findTitle(Integer titleId) {
        return titleDAO.findTitle(titleId);
    }

    @Override
    public List<Title> findAllTitle() {
        return titleDAO.findAllTitle();
    }
}