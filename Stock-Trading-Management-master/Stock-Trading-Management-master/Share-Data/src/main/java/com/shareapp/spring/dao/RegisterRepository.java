package com.shareapp.spring.dao;

import com.shareapp.spring.model.Register;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RegisterRepository extends JpaRepository<Register, Integer>{

	Register findByEmail(String email); 
	
}
