package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.NoteRepo;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ViewController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    HttpSession httpSession;

    @Autowired
    NoteRepo noteRepo;

    @GetMapping("/")
    public String index() {
        return "index";
    }

}
