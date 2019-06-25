package com.capas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.capas.Dao.PeliculaDao;
import com.capas.domain.Pelicula;
import com.capas.repositories.PeliculaRepositorie;


@Service
public class PeliculaServiceImpl implements PeliculaService {

	@Autowired
	public PeliculaDao pd;
	
	@Autowired
	public PeliculaRepositorie pr;
	
	
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

	

}
