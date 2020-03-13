package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.SocietyEmployee;

@Repository
public interface SocietyEmployeeRepository extends JpaRepository<SocietyEmployee, Integer>{

	List<SocietyEmployee> findAll();
}
