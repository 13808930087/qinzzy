package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.TitleDAO;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.service.TitleService;
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
