package com.xrx.jingbao.model;

public class User {

    private Integer customerId;
    private String password;
    private String username;

    private String identifyCode;

    private String nickname;

    private String gravatarImg;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIdentifyCode() {
        return identifyCode;
    }

    public void setIdentifyCode(String identifyCode) {
        this.identifyCode = identifyCode;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getGravatarImg() {
        return gravatarImg;
    }

    public void setGravatarImg(String gravatarImg) {
        this.gravatarImg = gravatarImg;
    }
}
