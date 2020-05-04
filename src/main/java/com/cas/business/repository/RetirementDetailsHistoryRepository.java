package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.RetirementDetailsHistory;

@Repository
public interface RetirementDetailsHistoryRepository extends JpaRepository<RetirementDetailsHistory, Integer>{

	List<RetirementDetailsHistory> findByRetirementDetailsIdOrderByUpdatedOnDesc(Integer retirementDetailsId);
}
