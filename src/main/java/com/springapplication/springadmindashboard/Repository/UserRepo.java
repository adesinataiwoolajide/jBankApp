package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends JpaRepository<User, Long> {

    User findByUsername(String username);

}
