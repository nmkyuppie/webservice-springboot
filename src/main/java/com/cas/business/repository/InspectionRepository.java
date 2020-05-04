package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Inspection;

@Repository
public interface InspectionRepository extends JpaRepository<Inspection, Integer>{

	List<Inspection> findAllByOrderByIdDesc();

	Inspection findByDocumentId(String documentId);

}
