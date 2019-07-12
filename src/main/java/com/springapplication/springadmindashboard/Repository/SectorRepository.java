package com.springapplication.springadmindashboard.Repository;

import com.springapplication.springadmindashboard.model.Sector;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SectorRepository extends JpaRepository <Sector, Long> {

    Sector findBySectorname(String sectorname);


}
