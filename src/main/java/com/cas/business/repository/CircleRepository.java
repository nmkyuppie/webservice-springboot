package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Circle;

@Repository
public interface CircleRepository extends JpaRepository<Circle, Integer>{

}
