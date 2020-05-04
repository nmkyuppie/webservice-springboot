package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.AuditDetails;

@Repository
public interface AuditDetailsRepository extends JpaRepository<AuditDetails, Integer>{

	List<AuditDetails> findAllByOrderByYearStartDesc();
}
