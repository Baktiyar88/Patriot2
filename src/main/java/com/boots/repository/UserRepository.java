package com.boots.repository;

//import com.boots.entity.User;
//import org.springframework.data.jpa.repository.JpaRepository;
//
//public interface UserRepository extends JpaRepository<User, Long> {
//    User findByUsername(String username);
//}
import org.springframework.data.jpa.repository.JpaRepository;
import com.boots.entity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    // Добавьте этот метод для поддержки поиска по ID больше заданного
    List<User> findByIdGreaterThan(Long id);
}
