package com.situ.flight.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class RoutesSelect {
        private Integer routesId;
        private String departCity;
        private String arrivalCity;
        private String departDate;
        private String arrivalDate;
        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime departDateStart;
        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime departDateEnd;
        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime arrivalDateStart;
         @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime arrivalDateEnd;
        private Integer planeId;
        private Double commonPrice;
        private Double commerialPrice;
        private Double firstPrice;
    public void setLocalDate() {
        if(departDate!=null&&departDate!=""){
            //2022-08-03 00:00:00 - 2022-09-20 00:00:00
            String[] temp;
            String delimeter = " - ";  // 指定分割字符
            temp = departDate.split(delimeter); // 分割字符串
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            this.departDateStart = LocalDateTime.parse(temp[0], formatter);
            this.departDateEnd = LocalDateTime.parse(temp[1], formatter);
        }
        if(arrivalDate!=null&&arrivalDate!=""){
            //2022-08-03 00:00:00 - 2022-09-20 00:00:00
            String[] temp;
            String delimeter = " - ";  // 指定分割字符
            temp = arrivalDate.split(delimeter); // 分割字符串
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            this.arrivalDateStart = LocalDateTime.parse(temp[0], formatter);
            this.arrivalDateEnd = LocalDateTime.parse(temp[1], formatter);
        }
    }

    public String getDepartDate() {
        return departDate;
    }

    public void setDepartDate(String departDate) {
        this.departDate = departDate;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

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

    public LocalDateTime getDepartDateStart() {
        return departDateStart;
    }

    public void setDepartDateStart(LocalDateTime departDateStart) {
        this.departDateStart = departDateStart;
    }

    public LocalDateTime getDepartDateEnd() {
        return departDateEnd;
    }

    public void setDepartDateEnd(LocalDateTime departDateEnd) {
        this.departDateEnd = departDateEnd;
    }

    public LocalDateTime getArrivalDateStart() {
        return arrivalDateStart;
    }

    public void setArrivalDateStart(LocalDateTime arrivalDateStart) {
        this.arrivalDateStart = arrivalDateStart;
    }

    public LocalDateTime getArrivalDateEnd() {
        return arrivalDateEnd;
    }

    public void setArrivalDateEnd(LocalDateTime arrivalDateEnd) {
        this.arrivalDateEnd = arrivalDateEnd;
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
