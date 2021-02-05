package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
   public String doLogin(@RequestParam("email") String email, @RequestParam("password") String password) {

       String view = "";

       if(validateMail(email) && validatePass(password)) {

           User user = userRepo.findByEmailEqualsAndPasswordEquals(email, password);
           httpSession.setAttribute("user", user);
           view = "redirect:/profile";

       } else {
           view = "redirect:/login";
       }

       return view;
   }

   @GetMapping("/register")
   public String registerView() {
       String view = "";

       if(httpSession.getAttribute("user") != null) {
           view = "register";
       } else {
           view = "redirect:/profile";
       }

       return view;
   }


   @PostMapping("/doRegister")
   public String doRegister(
           @RequestParam("name") String name,
           @RequestParam("surname") String surname,
           @RequestParam("nickname") String nickname,
           @RequestParam("email") String email,
           @RequestParam("password") String password) {

       String view = "";

       if(validateMail(email) && validatePass(password)) {

           User user = new User();

           user.setEmail(email);
           user.setPassword(password);
           user.setName(name);
           user.setNickName(nickname);
           user.setSurname(surname);

           userRepo.save(user);

           httpSession.setAttribute("user", user);

           view = "redirect:/profile";

       } else {
           view = "redirect:/register";
       }

       return view;

   }

   @GetMapping("/logout")
   public String doLogout() {
       String view = "";

       if(httpSession.getAttribute("user") != null) {
           httpSession.removeAttribute("user");
           view = "redirect:/";
       } else {
           view = "redirect:/register";
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
