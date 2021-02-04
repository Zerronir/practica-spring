package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class Controller1 {

    @Autowired
    UserRepo userRepo;

    @GetMapping("/users")
    @ResponseBody
    public String getPersons() {
        User users = userRepo.findById(1L).get();
        return users.toString();
    }

}
