package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "customer")
//@Setter
//@Getter
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "customerid")
    public Long customerid;

    @Column(name = "mnemonic")
    public String mnemonic;

    public Long getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Long customerid) {
        this.customerid = customerid;
    }

    public String getMnemonic() {
        return mnemonic;
    }

    public void setMnemonic(String mnemonic) {
        this.mnemonic = mnemonic;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public Sector getSector() {
        return sector;
    }

    public void setSector(Sector sector) {
        this.sector = sector;
    }

    public Long getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(Long phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getKinname() {
        return kinname;
    }

    public void setKinname(String kinname) {
        this.kinname = kinname;
    }

    public String getKinaddress() {
        return kinaddress;
    }

    public void setKinaddress(String kinaddress) {
        this.kinaddress = kinaddress;
    }


    @Column(name = "customername")
    public String customername;

    @OneToOne
    private Sector sector;




    @Column(name = "phonenumber")
    public Long phonenumber;

    @Column(name = "nationality")
    public String nationality;

    @Column(name = "gender")
    public String gender;

    @OneToMany(mappedBy = "customer")
    private List<Account> accounts;

    @OneToMany(mappedBy = "customer")
    private List<Transaction> transaction;


    @Column(name = "address")
    public String address;

    public List<Deposite> getDeposite() {
        return deposite;
    }

    public void setDeposite(List<Deposite> deposite) {
        this.deposite = deposite;
    }

    @Column(name = "kinname")
    public String kinname;

    @Column(name = "kinaddress")
    public String kinaddress;

    @OneToMany( mappedBy = "customer")
    private List<Deposite> deposite;


}
