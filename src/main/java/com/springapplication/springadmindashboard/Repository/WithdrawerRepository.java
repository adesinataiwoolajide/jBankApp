package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Withdrawer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WithdrawerRepository extends JpaRepository <Withdrawer, Long> {

    Withdrawer findByWithdrawerid(Long withdrawerid);
}
