package com.springapplication.springadmindashboard.model;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name ="users")

@Setter
@Getter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    public Long user_id;

    @Column(name = "user_name")

//    @Min(value = 3, message = "The User Name must be Greater Than 3 Chars")
    public String username;

    @Column(name = "password")
//    @Min(value = 3, message = "The Password must be Greater Than 3 Chars")

    public String password;

    @Column(name = "status")

//    @Max(value = 1)
    public boolean status;

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Column(name = "fullname")
    public String name;

    @Column(name = "role")
    public String role;




}
