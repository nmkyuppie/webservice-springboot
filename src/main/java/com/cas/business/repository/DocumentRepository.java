package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Document;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Integer>{ 
	
	List<Document> findAllByGroupIdAndIsActive(String groupId, Boolean isActive);
}