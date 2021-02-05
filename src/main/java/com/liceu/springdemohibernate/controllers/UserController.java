package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    HttpSession httpSession;

    @Autowired
    UserRepo userRepo;

    @GetMapping("/profile")
    public String getProfile() {

        String view = "";

        if(httpSession.getAttribute("user") != null) {
            view = "profile";
        } else {
            view = "redirect:/login";
        }

        return view;

    }

}
