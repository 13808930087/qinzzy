package com.situ.flight.service;

import com.situ.flight.model.Routes;
import com.situ.flight.model.RoutesSelect;
import org.springframework.stereotype.Service;

import java.util.List;
public interface RoutesService {
    List<Routes> findAll(RoutesSelect routes) ;
    public int update(Routes rou);
    public Routes findId(Integer id);
    public int add(Routes rou);
    public int del(List<Integer> ids);
}
