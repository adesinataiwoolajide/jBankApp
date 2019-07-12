package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "account_officer")

public class AccountOfficer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "officerid")
    public Long officerid;

    @Column(name = "officername")
    public String officername;


    public Long getOfficerid() {
        return officerid;
    }

    public void setOfficerid(Long officerid) {
        this.officerid = officerid;
    }

    public String getOfficername() {
        return officername;
    }

    public void setOfficername(String officername) {
        this.officername = officername;
    }

    @OneToMany(mappedBy = "accountOfficer")
    private List<Account> accounts;
}
