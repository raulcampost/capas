package com.capas.services;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.capas.domain.Pelicula;

public interface PeliculaService {
	public List<Pelicula> findAll();
	public List<Pelicula> find(Integer codigo);
}
