package ua.nikiforov.qa.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.nikiforov.qa.entities.User;
import ua.nikiforov.qa.repositories.UserRepository;

/**
 * @author Sergey Nikiforov
 */
@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void save(User user) {
        userRepository.save(user);
    }
}
