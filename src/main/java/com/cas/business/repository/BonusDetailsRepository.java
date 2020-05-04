package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.BonusDetails;

@Repository
public interface BonusDetailsRepository extends JpaRepository<BonusDetails, Integer>{

	List<BonusDetails> findAllByOrderByIdDesc();
}
