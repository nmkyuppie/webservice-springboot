package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.SpecialReport;

@Repository
public interface SpecialReportRepository extends JpaRepository<SpecialReport, Integer> {
	List<SpecialReport> findAllByOrderByIdDesc();
}
