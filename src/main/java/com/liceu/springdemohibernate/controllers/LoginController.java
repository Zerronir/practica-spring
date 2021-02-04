package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class LoginController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    HttpSession httpSession;

    public static final Pattern VALID_EMAIL = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
    public static final Pattern VALID_PASSWORD = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{6,16}$");

   @GetMapping("/login")
   public String loginView() {

       String view = "";

       if(httpSession.getAttribute("user") != null) {

           view = "redirect:/profile";

       } else {

           view = "login";

       }

       return view;

   }

   @PostMapping("/doLogin")
   public String doLogin(@RequestParam String email, @RequestParam String password) {

       String view = "";

       if(validateMail(email) && validateMail(email)) {

           User user = userRepo.findByEmailEqualsAndPasswordEquals(email, password);
           httpSession.setAttribute("user", user);
           view = "redirect:/profile";

       } else {
           view = "redirect:/login";
       }

       return view;
   }


   public boolean validateMail(String email) {
       Matcher m = VALID_EMAIL.matcher(email);
       return m.find();
   }

   public boolean validatePass(String password) {
       Matcher m = VALID_PASSWORD.matcher(password);
       return m.find();
   }

}
