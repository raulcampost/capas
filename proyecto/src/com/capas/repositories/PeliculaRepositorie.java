package com.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capas.domain.Pelicula;

public interface PeliculaRepositorie extends JpaRepository<Pelicula,Integer>{

	public List<Pelicula> findByBseleccionTrue();
	
}
