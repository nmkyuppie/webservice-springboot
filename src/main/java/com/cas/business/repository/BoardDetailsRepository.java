package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.BoardDetails;

@Repository
public interface BoardDetailsRepository extends JpaRepository<BoardDetails, Integer>{

	List<BoardDetails> findAllByOrderByElectedYearFromDesc();
}
