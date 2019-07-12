package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.FundTransfer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FundTransferRepository extends JpaRepository <FundTransfer, Long> {

    FundTransfer findByFundtransferid(Long fundtransferid);
}
