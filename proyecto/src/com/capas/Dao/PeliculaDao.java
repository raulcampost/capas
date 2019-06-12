package com.capas.Dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.capas.domain.Pelicula;


public interface PeliculaDao {
	public List<Pelicula> findAll() throws DataAccessException;
}
