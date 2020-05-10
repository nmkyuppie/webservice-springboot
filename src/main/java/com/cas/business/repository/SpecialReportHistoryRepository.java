package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.DeputationHistory;
import com.cas.business.entity.SpecialReportHistory;

@Repository
public interface SpecialReportHistoryRepository extends JpaRepository<SpecialReportHistory, Integer> {
	List<SpecialReportHistory> findBySpecialReportIdOrderByUpdatedOnDesc(Integer specialReportId);
}
