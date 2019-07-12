package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "account")
@Getter
@Setter
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name ="accountid")
    public Long accountid;

    @Column(name = "accountnumber")
    public Long accountnumber;

    public Long getAccountid() {
        return accountid;
    }

    public void setAccountid(Long accountid) {
        this.accountid = accountid;
    }

    public Long getAccountnumber(Long accountnumber) {
        return this.accountnumber;
    }

    public void setAccountnumber(Long accountnumber) {
        this.accountnumber = accountnumber;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    @OneToOne
    private Currency currency;

    @OneToMany(mappedBy = "account")
    private List <Withdrawer> withdrawer;

    @ManyToOne
    private AccountOfficer accountOfficer;

    @OneToOne
    private AccountCategory accountCategory;

    @ManyToOne
    private Customer customer;

    @OneToMany(mappedBy = "account")
    private List<Deposite> deposite;

    @OneToMany(mappedBy = "account")
    private List<Transaction> transaction;

    public AccountOfficer getAccountOfficer() {
        return accountOfficer;
    }

    public void setAccountOfficer(AccountOfficer accountOfficer) {
        this.accountOfficer = accountOfficer;
    }

    public AccountCategory getAccountCategory() {
        return accountCategory;
    }

    public void setAccountCategory(AccountCategory accountCategory) {
        this.accountCategory = accountCategory;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
