package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Deputation;

@Repository
public interface DeputationRepository extends JpaRepository<Deputation, Integer>{

	List<Deputation> findAllByOrderByIdDesc();
}
