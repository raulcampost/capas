package com.capas.services;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.capas.Dao.PeliculaDao;
import com.capas.domain.Funcion;
import com.capas.domain.Horario;
import com.capas.domain.Pelicula;
import com.capas.domain.Reservacion;
import com.capas.repositories.FuncionRepositorie;
import com.capas.repositories.HorarioRepositorie;
import com.capas.repositories.PeliculaRepositorie;
import com.capas.repositories.ReservaRepositorio;
import com.capsa.DTO.RespuestaDTO;


@Service
public class PeliculaServiceImpl implements PeliculaService {

	@Autowired
	public PeliculaDao pd;
	
	@Autowired
	public PeliculaRepositorie pr;
	
	@Autowired
	public FuncionRepositorie fr;
	
	@Autowired
	public HorarioRepositorie hr;
	
	@Autowired
	public ReservaRepositorio rr;
	
	
	//este metodo busca todas las peliculas sin restriccion
	@Override
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return pr.findAll();
	}

	
	//este metodo busca todas las peliculas que esten en true
	@Override
	public List<Pelicula> findByBseleccionTrue() {
		// TODO Auto-generated method stub
		return pr.findByBseleccionTrue();
	}
	
	
	@Override
	public List<Pelicula> find(Integer codigo) {
		// TODO Auto-generated method stub
		return pd.find(codigo);
	}

	@Override
	public Pelicula findOne(Integer id) {
		// TODO Auto-generated method stub
		return pr.findById(id).get();
	}


	@Transactional
	public void UpdateEstado(Integer id, Boolean b) {
		// TODO Auto-generated method stub
		pr.UpdateEstado(id, b);
	}



	@Override
	public List<Funcion> buscarformato(Integer id) {
		// TODO Auto-generated method stub
		return fr.findByIdpelicula(id);
	}

	@Override
	public Funcion buscarfuncion(Integer id) {
		// TODO Auto-generated method stub
		return fr.findByIdfuncion(id);
	}
	
	
	@Override
	public Horario buscarhorario(Integer id) {
		// TODO Auto-generated method stub
		return hr.findByIdfuncion(id);
	}


	@Transactional
	public void savecompra(Reservacion r) {
		
		rr.save(r);
		
	}


	@Transactional
	public void saveadmin(Reservacion r) {
		// TODO Auto-generated method stub
		rr.save(r);
	}




	

}
