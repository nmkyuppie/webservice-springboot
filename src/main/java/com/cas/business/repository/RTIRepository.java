package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.RTI;

@Repository
public interface RTIRepository extends JpaRepository<RTI, Integer>{

	List<RTI> findAllByOrderByIdDesc();

	RTI findByDocumentId(String documentId);

}
