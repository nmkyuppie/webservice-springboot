package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Block;

@Repository
public interface BlockRepository extends JpaRepository<Block, Integer>{
	
	List<Block> findByCircleId(Integer circleId);
	
}
