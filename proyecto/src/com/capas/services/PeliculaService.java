package com.capas.services;

import java.util.Date;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.capas.domain.Funcion;
import com.capas.domain.Horario;
import com.capas.domain.Pelicula;
import com.capas.domain.Reservacion;
import com.capsa.DTO.RespuestaDTO;

public interface PeliculaService {
	public List<Pelicula> findAll();
	public Pelicula findOne(Integer id);
	public List<Pelicula> findByBseleccionTrue();
	public List<Pelicula> find(Integer codigo);
	public void UpdateEstado(Integer id,Boolean b);
	public Horario buscarhorario(Integer id);
	public List<Funcion> buscarformato(Integer id);
	public Funcion buscarfuncion(Integer id);
	
	public void savecompra(Reservacion r);
	
	public void saveadmin(Reservacion r);
}
