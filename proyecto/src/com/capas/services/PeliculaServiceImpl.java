package com.capas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capas.Dao.PeliculaDao;
import com.capas.domain.Pelicula;


@Service
public class PeliculaServiceImpl implements PeliculaService {

	@Autowired
	public PeliculaDao pd;
	
	@Override
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return pd.findAll();
	}

}
