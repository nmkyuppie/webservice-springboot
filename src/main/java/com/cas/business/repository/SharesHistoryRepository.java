package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.SharesHistory;

@Repository
public interface SharesHistoryRepository extends JpaRepository<SharesHistory, Integer>{

	List<SharesHistory> findBySharesIdOrderByUpdatedOnDesc(Integer sharesId);
}
