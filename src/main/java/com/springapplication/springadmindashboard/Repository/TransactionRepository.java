package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {
}
