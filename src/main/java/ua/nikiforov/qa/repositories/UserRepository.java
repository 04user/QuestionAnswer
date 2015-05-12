package ua.nikiforov.qa.repositories;

import org.springframework.data.repository.CrudRepository;
import ua.nikiforov.qa.entities.User;

public interface UserRepository extends CrudRepository<User, Long> {}
