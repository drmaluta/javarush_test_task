package com.mike.javarush.controller;

import com.mike.javarush.domain.User;
import com.mike.javarush.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by Mike on 7/25/2016.
 */

@Controller
@RequestMapping("")
public class AppController {
    @Autowired
    UserService service;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = { "/", "/userspage"}, method = RequestMethod.GET)
    public String listUsers(ModelMap model, Integer offset, Integer maxResults) {
        List<User> users = service.findAllUsers(offset, maxResults);
        model.addAttribute("users", users);
        model.addAttribute("count", service.count());
        model.addAttribute("offset", offset);
        return "userspage";
    }

    @RequestMapping(value = {"/users/find"}, method = RequestMethod.GET)
    public String findByName(Model model, String name){
        List<User> users = service.findUsersByName(name);
        model.addAttribute("users", users);
        return "resultpage";
    }

    @RequestMapping(value = {"/users/add"}, method = RequestMethod.GET)
    public String addUser(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        //model.addAttribute("edit", false);
        return "addpage";
    }

    @RequestMapping(value = {"/users/edit"}, method = RequestMethod.GET)
    public String editUser(@RequestParam(value="id") Integer id, Model model) {
        User user = service.findById(id);
        model.addAttribute("user", user);
        //model.addAttribute("edit", true);
        return "editpage";
    }

    @RequestMapping(value = {"/users/add"}, method = RequestMethod.POST)
    public String saveUser(@Valid User user,  BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "addpage";
        }

        /*
        if (service.addUser(user)){
            FieldError nameError =new FieldError("user","name",messageSource.getMessage("non.unique.name", new String[]{user.getName()}, Locale.getDefault()));
            result.addError(nameError);
            return "addpage";
        }
        */
        user.setDate(new Date());
        service.saveUser(user);
        model.addAttribute("addedpage", "User " + user.getName() + " registered successfully");
        return "addedpage";
    }

    @RequestMapping(value = {"/users/edit"}, method = RequestMethod.POST)
    public String saveEdit(@Valid User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "editage";
        }

        /*
        if (service.addUser(user)){
            FieldError nameError =new FieldError("user","name",messageSource.getMessage("non.unique.name", new String[]{user.getName()}, Locale.getDefault()));
            result.addError(nameError);
            return "editage";
        }*/

        service.updateUser(user);
        model.addAttribute("editedpage", "User " + user.getName()	+ " updated successfully");
        return "editedpage";
    }

    @RequestMapping(value = {"/users/delete"}, method = RequestMethod.GET)
    public String deleteUser(@RequestParam(value="id") Integer id, Model model) {
        User user = service.findById(id);
        service.deleteUserByID(id);
        model.addAttribute("deletedpage", "User " + user.getName() + " deleted successfully");
        return "deletedpage";
    }
}
