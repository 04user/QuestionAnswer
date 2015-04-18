package ua.nikiforov.qa.repositories;

import org.springframework.data.repository.CrudRepository;
import ua.nikiforov.qa.entities.Question;

public interface QuestionRepository extends CrudRepository<Question, Long> {}
