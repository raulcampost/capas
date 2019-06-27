package com.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capas.domain.Horario;

public interface HorarioRepositorie extends JpaRepository<Horario,Integer>{

	public Horario findByIdfuncion(Integer id);
	
	
}
