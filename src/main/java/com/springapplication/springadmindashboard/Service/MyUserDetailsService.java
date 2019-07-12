package com.springapplication.springadmindashboard.Service;

import com.springapplication.springadmindashboard.Principal.UserPrincipal;
import com.springapplication.springadmindashboard.Repository.UserRepo;
import com.springapplication.springadmindashboard.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepo.findByUsername(username);

        if(user == null)
            throw new UsernameNotFoundException("User 400");
        return new UserPrincipal(user);
    }
}
