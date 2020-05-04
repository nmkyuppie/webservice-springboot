package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.BoardDetailsHistory;

@Repository
public interface BoardDetailsHistoryRepository extends JpaRepository<BoardDetailsHistory, Integer>{
	
	List<BoardDetailsHistory> findByBoardDetailsIdOrderByUpdatedOnDesc(Integer boardDetailsId);
	
}
