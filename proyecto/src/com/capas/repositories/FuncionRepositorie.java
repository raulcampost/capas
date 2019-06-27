package com.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.capas.domain.Funcion;

public interface FuncionRepositorie extends JpaRepository<Funcion,Integer> {
	
	public List<Funcion> findByIdpelicula(Integer id);
	public Funcion findByIdfuncion(Integer id);
	
}
