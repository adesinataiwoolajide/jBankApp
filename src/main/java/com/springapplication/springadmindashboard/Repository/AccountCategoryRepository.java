package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.AccountCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountCategoryRepository extends JpaRepository<AccountCategory, Long> {

    //AccountCategory findByAccountCategoryName(String accountcategoryname);
}
