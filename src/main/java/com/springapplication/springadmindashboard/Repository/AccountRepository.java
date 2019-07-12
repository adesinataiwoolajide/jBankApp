package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Long> {

//    Account findByCustomerid(Long customerid);
//
    Account findByAccountid(Long accountid);
    Account findByAccountnumber(Long accountnumber);
//
//    Account findByAccountnumber(Long accountnumber);


}
