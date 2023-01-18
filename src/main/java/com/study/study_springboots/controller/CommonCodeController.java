package com.study.study_springboots.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.dao.CommonCodeDao;

@Controller
public class CommonCodeController {

    @Autowired
    CommonCodeDao commonCodeDao;

    @RequestMapping(value = "/list")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("list", "list");
        ArrayList<Map> list = (ArrayList<Map>) commonCodeDao.getList();
        modelAndView.addObject("list", list);

        modelAndView.setViewName("commonCode/list");

        /*
        for(int i = 0; i < list.size(); i++) {
            Map item = list.get(i);
            System.out.println(item.get("COMMON_CODE_ID"));
            System.out.println(item.get("NAME"));
            System.out.println(item.get("ORDER_NUMBER"));
        }
         */

        return modelAndView;
    }
}
