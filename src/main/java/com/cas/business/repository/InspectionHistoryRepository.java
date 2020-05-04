package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.InspectionHistory;

@Repository
public interface InspectionHistoryRepository extends JpaRepository<InspectionHistory, Integer>{
	
	List<InspectionHistory> findByInspectionIdOrderByUpdatedOnDesc(Integer inspectionId);
	
}
