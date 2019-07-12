package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.text.DateFormat;
import java.util.List;

@Entity
@Table(name = "deposite")
@Getter
@Setter
public class Deposite {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "depositeid")
    public Long depositeid;

    @Column(name = "sendername")
    public String sendername;

    @Column(name = "senderphone")
    public Long senderphone;

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Column(name = "amount")
    public Long amount;

    @ManyToOne()
    private Account account;

    @ManyToOne
    private Customer customer;

    @Column(name = "depositedate")
    @DateTimeFormat
    public DateFormat depositedate;


    public Long getDepositeid() {
        return depositeid;
    }

    public void setDepositeid(Long depositeid) {
        this.depositeid = depositeid;
    }

    public String getSendername() {
        return sendername;
    }

    public void setSendername(String sendername) {
        this.sendername = sendername;
    }

    public Long getSenderphone() {
        return senderphone;
    }

    public void setSenderphone(Long senderphone) {
        this.senderphone = senderphone;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public DateFormat getDepositedate() {
        return depositedate;
    }

    public void setDepositedate(DateFormat depositedate) {
        this.depositedate = depositedate;
    }
}
