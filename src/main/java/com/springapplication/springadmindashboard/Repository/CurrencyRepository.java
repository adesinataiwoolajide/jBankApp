package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Currency;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CurrencyRepository extends JpaRepository <Currency, Long> {

    Currency findByCurrencymnemonic(String currencymnemonic);


}
