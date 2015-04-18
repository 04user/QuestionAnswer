package ua.nikiforov.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.nikiforov.qa.entities.Question;
import ua.nikiforov.qa.services.QuestionService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/question")
public class QuestionController {
    @Autowired
    private QuestionService questionService;

    @RequestMapping(method = RequestMethod.GET)
    public String showAddQuestionForm(Model model) {
        model.addAttribute(new Question());
        return "question";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addQuestion(@Valid Question question, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("has ERRoR");
            List<ObjectError> allErrors = bindingResult.getAllErrors();
            for (ObjectError error : allErrors) {
                System.out.println(error.getCode() + " : " + error.getDefaultMessage());
            }
            return "question";
        }
        questionService.save(question);
        return "home";
    }
}

