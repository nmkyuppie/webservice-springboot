package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, Integer>{
	
}
