package com.shareapp.spring.dao;

import com.shareapp.spring.model.Share;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("shareRepository")
public interface ShareRepository extends JpaRepository<Share, Integer> {

}
