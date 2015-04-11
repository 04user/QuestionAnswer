package ua.nikiforov.qa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * "Front Controller"
 *
 * @author Sergey Nikiforov
 */
@Controller
public class FrontController {
    @RequestMapping("/")
    public String hello() {
        return "home";
    }
}
