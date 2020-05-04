package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.PromotionDetails;

@Repository
public interface PromotionDetailsRepository extends JpaRepository<PromotionDetails, Integer>{

	List<PromotionDetails> findAllByOrderByPromotedOnDesc();
}
