package ua.nikiforov.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.nikiforov.qa.entities.User;
import ua.nikiforov.qa.services.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
    @Autowired
    UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "registration";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String tryRegisterNewUser(@Valid User user, Errors errors) {
        if (errors.hasErrors()) {
            return "registration";
        }
        userService.save(user);
        return "redirect:/signin";
    }
}
