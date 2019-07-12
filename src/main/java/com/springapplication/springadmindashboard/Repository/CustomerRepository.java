package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

    Customer findByCustomerid(Long customerid);
}
