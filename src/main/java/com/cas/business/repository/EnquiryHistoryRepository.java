package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.EnquiryHistory;

@Repository
public interface EnquiryHistoryRepository extends JpaRepository<EnquiryHistory, Integer>{
	
	List<EnquiryHistory> findByEnquiryIdOrderByUpdatedOnDesc(Integer enquiryId);
	
}
