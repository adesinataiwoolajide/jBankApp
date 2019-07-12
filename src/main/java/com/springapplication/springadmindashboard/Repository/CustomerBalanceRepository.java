package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.CustomerBalance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerBalanceRepository extends JpaRepository<CustomerBalance, Long>  {
}
