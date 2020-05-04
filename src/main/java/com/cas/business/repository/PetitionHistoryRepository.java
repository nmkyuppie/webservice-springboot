package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.PetitionHistory;

@Repository
public interface PetitionHistoryRepository extends JpaRepository<PetitionHistory, Integer>{
	
	List<PetitionHistory> findByPetitionIdOrderByUpdatedOnDesc(Integer petitionId);
	
}
