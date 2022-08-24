package com.situ.jingbao.util;

import java.math.BigInteger;
import java.security.MessageDigest;

//加密
public class Md5Utils {

    public static String encrypt(String str) {
        byte[] digest = null;
        try {
			MessageDigest md = MessageDigest.getInstance("md5");
			digest = md.digest(str.getBytes("utf-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
		String mdString = new BigInteger(1, digest).toString(16);
		return mdString;
    }

}
