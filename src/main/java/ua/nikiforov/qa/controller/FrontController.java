package ua.nikiforov.qa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * "Front Controller"
 *
 * @author Sergey Nikiforov
 */
@Controller
public class FrontController {
    @RequestMapping("/")
    public @ResponseBody String hello() {
        return "Hello World";
    }
}
