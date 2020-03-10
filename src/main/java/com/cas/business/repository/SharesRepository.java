package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Member;
import com.cas.business.entity.Shares;

@Repository
public interface SharesRepository extends JpaRepository<Shares, Integer>{

	List<Shares> findAllByOrderByYearStartDesc();
}
