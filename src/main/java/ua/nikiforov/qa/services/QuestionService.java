package ua.nikiforov.qa.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.nikiforov.qa.entities.Question;
import ua.nikiforov.qa.repositories.QuestionRepository;

import java.util.List;

/**
 * @author Sergey Nikiforov
 */
@Service
public class QuestionService {
    @Autowired
    private QuestionRepository questionRepository;

    public void save(Question question) {
        questionRepository.save(question);
    }

    public Iterable<Question> findAll() {
        return questionRepository.findAll();
    }
}
