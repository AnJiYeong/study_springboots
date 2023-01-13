package com.study.study_springboots.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.beans.BoardBean;
import com.study.study_springboots.service.DataInfors;


// * Cast 
// - use bootstrap
// - 항목 : title, content,userName, date
// - CRUD : 
//   + list.jsp(/board) -> view.jsp(/board/view) -> list.jsp(/board/list)
//   + list.jsp(/board) -> form.jsp(/board/form) -> form.jsp(/board/form) with Post  -> list.jsp(/board/list)
//   + view.jsp(/board/view) -> edit.jsp(/board/edit) -> list.jsp(/board/list)
// @Controller
@Controller
@RequestMapping(value = "/board")
public class BoardController {
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView edit(ModelAndView modelAndView) {
        modelAndView.setViewName("board/edit");
        return modelAndView;
    }
    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)  
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("firstString", "firstValue");
        DataInfors dataInfors = new DataInfors();
        ArrayList<BoardBean> boardList = dataInfors.getDataListWithBoardBean();
        modelAndView.addObject("boardList", boardList);

        modelAndView.setViewName("board/list");
        return modelAndView;
    }
    @RequestMapping(value = {"/view"}, method = RequestMethod.GET)  
    public ModelAndView view(@RequestParam String title, ModelAndView modelAndView) {
        System.out.println("title : " + title);
        DataInfors dataInfors = new DataInfors();
        BoardBean boardBean = dataInfors.getDataWithMamberBean();
        modelAndView.addObject("boardBean", boardBean);

        modelAndView.setViewName("board/view");
        return modelAndView;
    }
    @RequestMapping(value = "/form", method = RequestMethod.GET)    
    public ModelAndView form(ModelAndView modelAndView) {
        modelAndView.setViewName("board/form");
        return modelAndView;
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)    
    public ModelAndView save(ModelAndView modelAndView) {
        // insert biz
        modelAndView.setViewName("board/list");
        return modelAndView;
    }

    // 강사님이 하신 것
    /*
     // @RequestMapping(value = "/board/form", method = RequestMethod.GET)
    public String form() {
        return "/WEB-INF/views/board/form.jsp";
    }
    // @RequestMapping(value = "/board/form", method = RequestMethod.POST)
    public String formPost() {
        // insert biz
        return "/WEB-INF/views/board/list.jsp";
    }
    // @RequestMapping(value = "/board/temp", method = RequestMethod.GET)
    public ModelAndView temp() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("searchString", "firstValue");
        // modelAndView.setViewName("/WEB-INF/views/board/temp.jsp");
        modelAndView.setViewName("/board/temp");
        // insert biz
        return modelAndView;
    }
     */
    

}



// 내가 했던 것 1
/*
 @Controller
public class BoardController {
     @RequestMapping(value = "/board/form", method = RequestMethod.GET)
    public String form() {
        return "/WEB-INF/views/board/form.jsp";
    }
    @RequestMapping(value = "/board/form", method = RequestMethod.POST)
    public String formPost() {
        // insert biz
        return "/WEB-INF/views/board/list.jsp";
    }
    
    @RequestMapping(value = {"/board", "/board/list"})
    public String list() {
        // insert biz
        return "/WEB-INF/views/board/list.jsp";
    }
    @RequestMapping("/board/view")
    public String view() {
        // insert biz
        return "/WEB-INF/views/board/view.jsp";
    }
    @RequestMapping("/board/edit")
    public String edit() {
        // insert biz
        return "/WEB-INF/views/board/edit.jsp";
    }

}

 */
