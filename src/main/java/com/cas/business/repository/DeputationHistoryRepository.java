package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.DeputationHistory;

@Repository
public interface DeputationHistoryRepository extends JpaRepository<DeputationHistory, Integer>{
	
	List<DeputationHistory> findByDeputationIdOrderByUpdatedOnDesc(Integer deputationId);
	
}
