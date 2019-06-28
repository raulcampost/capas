package com.capas.repositories;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.capas.domain.Reservacion;

public interface ReservaRepositorio extends JpaRepository<Reservacion,Integer> {

	
}
