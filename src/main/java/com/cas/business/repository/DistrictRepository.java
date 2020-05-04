package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.District;

@Repository
public interface DistrictRepository extends JpaRepository<District, Integer>{

}
