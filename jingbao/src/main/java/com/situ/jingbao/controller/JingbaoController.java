package com.situ.jingbao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jingbao")
public class JingbaoController {
    @GetMapping("/text")
    public String text(){
        return "jingbao/text";
    }
}
