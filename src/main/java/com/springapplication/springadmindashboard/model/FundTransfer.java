package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "fund_transfer")

@Getter
@Setter
public class FundTransfer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "fundtransferid")
    public Long fundtransferid;


    public String getReciever() {
        return reciever;
    }

    public void setReciever(String reciever) {
        this.reciever = reciever;
    }

    public Long getDebitamount() {
        return debitamount;
    }

    public void setDebitamount(Long debitamount) {
        this.debitamount = debitamount;
    }

    @OneToOne
    private Currency currency;


    public Long getFundtransferid() {
        return fundtransferid;
    }

    public void setFundtransferid(Long fundtransferid) {
        this.fundtransferid = fundtransferid;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    @Column(name = "sender")
    public String sender;

    @Column(name = "reciever")
    public String reciever;


    @Column(name = "debitamount")
    public Long debitamount;

}
