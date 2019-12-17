package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Society;

@Repository
public interface BranchRepository extends JpaRepository<Society, Integer>{

}
