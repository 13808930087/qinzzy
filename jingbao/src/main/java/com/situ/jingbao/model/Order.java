package com.situ.jingbao.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

public class Order {

    private Integer orderId;
    private String orderIdentifier;
    private Integer customerId;
    private String consignee;
    private String address;
    private BigDecimal total;
    private String phone;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime orderTime;//下单时间

    private PayType payType;//支付方式

    private OrderState orderState = OrderState.CREATED;//订单状态

    private List<OrderItem> orderItemList;//订单项
    public String getPhone() {
        return phone;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderIdentifier() {
        return orderIdentifier;
    }

    public void setOrderIdentifier(String orderIdentifier) {
        this.orderIdentifier = orderIdentifier;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }



    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public String getOrderTime() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        if (this.orderTime != null) {
            return orderTime.format(formatter);
        } else {
            return null;
        }
    }

    public void setOrderTime(LocalDateTime orderTime) {
        this.orderTime = orderTime;
    }

    public PayType getPayType() {
        return payType;
    }

    public void setPayType(PayType payType) {
        this.payType = payType;
    }

    public OrderState getOrderState() {
        return orderState;
    }

    public void setOrderState(OrderState orderState) {
        this.orderState = orderState;
    }

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getLocalOrderTime() {
        //2017年09月14日 17:31:05
        if (this.orderTime != null) {
            return this.orderTime.format(DateTimeFormatter.ofPattern("yyyy年MM月dd日 HH:mm:ss"));
        } else {
            return "";
        }
    }


    public Integer getOrderId() {
        return orderId;
    }


    public enum PayType {
        ALI_PAY("支付宝"),
        TENCENT_PAY("微信支付"),
        HUAWEI_PAY("华为支付"), YINLIAN_PAY("银联支付");
        private final String name;

        PayType(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        @Override
        public String toString() {
            return this.name;
        }
    }

    public enum OrderState {
        CREATED("未支付"), PAIED("已支付"),
        SEND("已发货"), CONFIRMED("确认收货"), CANCELD("已作废");
        private final String name;

        OrderState(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        @Override
        public String toString() {
            return this.name;
        }
    }
}
