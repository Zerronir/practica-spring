package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {

    @Autowired
    UserRepo userRepo;

    @GetMapping("/i")
    public String index(Model model) {

        User user = userRepo.findById(1L).get();

        model.addAttribute("user", user);

        return "index";
    }

}
