package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.CourtCase;

@Repository
public interface CourtCaseRepository extends JpaRepository<CourtCase, Integer>{

	List<CourtCase> findAllByOrderByIdDesc();

	CourtCase findByDocumentId(String documentId);

}
