package com.rational.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String printHello(ModelMap model, HttpServletRequest request) {
        model.addAttribute("message", "Hello Spring MVC Framework!");

        return "index";
    }
}
