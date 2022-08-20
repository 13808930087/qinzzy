package com.situ.flight.service.impl;

import com.situ.flight.dao.RoutesDao;
import com.situ.flight.model.Routes;
import com.situ.flight.model.RoutesSelect;
import com.situ.flight.service.RoutesService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoutesServiceImpl implements RoutesService {
    private RoutesDao rd;

    public RoutesServiceImpl(RoutesDao rd) {
        this.rd = rd;
    }


    public List<Routes> findAll(RoutesSelect routes) {
        routes.setLocalDate();
        return rd.findAll(routes);
    }

    public int update(Routes rou) {
        return rd.update(rou);
    }

    public Routes findId(Integer id) {
        return rd.findId(id);
    }

    public int add(Routes rou) {
        return rd.add(rou);
    }

    public int del(List<Integer> ids) {
        return rd.del(ids);
    }
}
