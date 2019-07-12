package com.springapplication.springadmindashboard.model;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table
@Setter
@Getter
public class Currency {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "currencyid")
    public Long currencyid;

    public Long getCurrencyid() {
        return currencyid;
    }

    public void setCurrencyid(Long currencyid) {
        this.currencyid = currencyid;
    }

    public String getCurrencyname() {
        return currencyname;
    }

    public void setCurrencyname(String currencyname) {
        this.currencyname = currencyname;
    }

    public String getCurrencymnemonic() {
        return currencymnemonic;
    }

    public void setCurrencymnemonic(String currencymnemonic) {
        this.currencymnemonic = currencymnemonic;
    }

    @Column(name = "currencyname")
    public String currencyname;

    @Column(name = "currencymnemonic")
    public String currencymnemonic;


}
