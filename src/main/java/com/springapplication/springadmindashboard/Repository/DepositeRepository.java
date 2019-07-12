package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Deposite;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepositeRepository extends JpaRepository <Deposite, Long> {

    Deposite findByDepositeid(Long depositeid);
}
