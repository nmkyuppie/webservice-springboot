package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.StockVerificationHistory;

@Repository
public interface StockVerificationHistoryRepository extends JpaRepository<StockVerificationHistory, Integer>{

	List<StockVerificationHistory> findByStockVerificationIdOrderByUpdatedOnDesc(Integer stockVerificationId);
}
