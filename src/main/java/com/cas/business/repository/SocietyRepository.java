package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Society;

@Repository
public interface SocietyRepository extends JpaRepository<Society, Integer>{
	
	List<Society> findByOrderByIdAsc();

}
