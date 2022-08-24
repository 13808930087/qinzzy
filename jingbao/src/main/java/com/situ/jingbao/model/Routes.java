package com.situ.jingbao.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Routes {
    private Integer routesId;
    private String departCity;
    private String arrivalCity;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime departDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime arrivalDate;
    private Integer planeId;
    private Double commonPrice;
    private Double commerialPrice;
    private Double firstPrice;

    public Integer getRoutesId() {
        return routesId;
    }

    public void setRoutesId(Integer routesId) {
        this.routesId = routesId;
    }

    public String getDepartCity() {
        return departCity;
    }

    public void setDepartCity(String departCity) {
        this.departCity = departCity;
    }

    public String getArrivalCity() {
        return arrivalCity;
    }

    public void setArrivalCity(String arrivalCity) {
        this.arrivalCity = arrivalCity;
    }

    public String getDepartDate() {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        if (this.departDate != null) {
            return departDate.format(formatter);
        } else {
            return null;
        }

    }

    public void setDepartDate(LocalDateTime departDate) {
        this.departDate = departDate;
    }

    public String getArrivalDate() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        if (this.arrivalDate != null) {
            return arrivalDate.format(formatter);
        } else {
            return null;
        }
    }

    public void setArrivalDate(LocalDateTime arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public Integer getPlaneId() {
        return planeId;
    }

    public void setPlaneId(Integer planeId) {
        this.planeId = planeId;
    }

    public Double getCommonPrice() {
        return commonPrice;
    }

    public void setCommonPrice(Double commonPrice) {
        this.commonPrice = commonPrice;
    }

    public Double getCommerialPrice() {
        return commerialPrice;
    }

    public void setCommerialPrice(Double commerialPrice) {
        this.commerialPrice = commerialPrice;
    }

    public Double getFirstPrice() {
        return firstPrice;
    }

    public void setFirstPrice(Double firstPrice) {
        this.firstPrice = firstPrice;
    }


}
