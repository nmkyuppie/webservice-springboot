package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.SocietyEmployeeHistory;

@Repository
public interface SocietyEmployeeHistoryRepository extends JpaRepository<SocietyEmployeeHistory, Integer>{

	List<SocietyEmployeeHistory> findBySocietyEmployeeIdOrderByUpdatedOnDesc(Integer societyEmployeeId);
}
