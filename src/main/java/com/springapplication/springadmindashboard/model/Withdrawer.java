package com.springapplication.springadmindashboard.model;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "withdrawer")
@Getter
@Setter

public class Withdrawer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "withdrawerid")
    public Long withdrawerid;

    public Long amount;



    public Long getWithdrawerid() {
        return withdrawerid;
    }

    public void setWithdrawerid(Long withdrawerid) {
        this.withdrawerid = withdrawerid;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    @ManyToOne()
    private Account account;



}
