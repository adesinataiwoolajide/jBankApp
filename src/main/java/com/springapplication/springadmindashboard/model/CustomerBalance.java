package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table
@Getter
@Setter
public class CustomerBalance {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "balanceid")
    public Long balanceid;
    public Long openab;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Long closeab;
    public Long onlineac;
    public Long onlinecb;
    public Long workingb;

    public Long getBalanceid() {
        return balanceid;
    }

    public void setBalanceid(Long balanceid) {
        this.balanceid = balanceid;
    }

    public Long getOpenab() {
        return openab;
    }

    public void setOpenab(Long openab) {
        this.openab = openab;
    }

    public Long getCloseab() {
        return closeab;
    }

    public void setCloseab(Long closeab) {
        this.closeab = closeab;
    }

    public Long getOnlineac() {
        return onlineac;
    }

    public void setOnlineac(Long onlineac) {
        this.onlineac = onlineac;
    }

    public Long getOnlinecb() {
        return onlinecb;
    }

    public void setOnlinecb(Long onlinecb) {
        this.onlinecb = onlinecb;
    }

    public Long getWorkingb() {
        return workingb;
    }

    public void setWorkingb(Long workingb) {
        this.workingb = workingb;
    }



    @OneToOne
    private Account account;


}
