package com.liceu.springdemohibernate.repos;

import com.liceu.springdemohibernate.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {

    User findByEmailEqualsAndPasswordEquals(String email, String password);

}
