package uts.edu.java.login;

import uts.edu.java.login.entity.User;
import uts.edu.java.login.repository.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

@org.springframework.context.annotation.Configuration
public class DataLoader {

    @Bean
    CommandLineRunner init(UserRepository repo, PasswordEncoder encoder) {
        return args -> {

            if(repo.findByUsername("admin") == null) {

                User user = new User();

                user.setUsername("admin");
                user.setPassword(encoder.encode("1234"));
                user.setRole("ROLE_ADMIN");

                repo.save(user);
            }
        };
    }
}