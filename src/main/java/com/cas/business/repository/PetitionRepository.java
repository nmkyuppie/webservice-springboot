package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Petition;

@Repository
public interface PetitionRepository extends JpaRepository<Petition, Integer>{

	List<Petition> findAllByOrderByIdDesc();

	Petition findByDocumentId(String documentId);

}
