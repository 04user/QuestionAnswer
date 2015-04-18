package ua.nikiforov.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.nikiforov.qa.entities.Question;
import ua.nikiforov.qa.services.QuestionService;

/**
 * "Front Controller"
 *
 * @author Sergey Nikiforov
 */
@Controller
public class HomeController {
    @Autowired
    private QuestionService questionService;

    @RequestMapping("/")
    public String hello(Model model) {
        Iterable<Question> questions = questionService.findAll();
        questions.forEach(question -> System.out.println(question.getTitle()));
        model.addAttribute("questions", questions);
        return "home";
    }
}
