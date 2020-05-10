package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.RTIHistory;

@Repository
public interface RTIHistoryRepository extends JpaRepository<RTIHistory, Integer>{

	List<RTIHistory> findByRtiIdOrderByUpdatedOnDesc(Integer rtiId);
}
