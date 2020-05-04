package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.PromotionDetailsHistory;

@Repository
public interface PromotionDetailsHistoryRepository extends JpaRepository<PromotionDetailsHistory, Integer>{

	List<PromotionDetailsHistory> findByPromotionDetailsIdOrderByUpdatedOnDesc(Integer promotionDetailsId);
}
