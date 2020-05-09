package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.Family;

@Repository
public interface FamilyRepository extends JpaRepository<Family, Integer>{

	List<Family> findAllByFamilyEmployeeIdOrderByFamilyAgeDesc(Integer familyEmployeeId);
}
