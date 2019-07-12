package com.springapplication.springadmindashboard.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "sector")

//@Setter
//@Getter
public class Sector {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "sectorid")
    public Long sectorid;

    @Column(name = "sectorname")
    public String sectorname;

    public Long getSectorid() {
        return sectorid;
    }

    public void setSectorid(Long sectorid) {
        this.sectorid = sectorid;
    }

    public String getSectorname() {
        return sectorname;
    }

    public void setSectorname(String sectorname) {
        this.sectorname = sectorname;
    }
}
