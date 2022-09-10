package com.situ.flight.dao;

import com.situ.flight.model.Routes;
import com.situ.flight.model.RoutesSelect;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface RoutesDao {
    List<Routes> findAll(@Param("routes") RoutesSelect routes);

    int add(@Param("routes")Routes rou) ;

    Routes findId(Integer routesId) ;

    int del(@Param("ids") List<Integer> ids) ;

    int update(@Param("routes")Routes rou);
}
