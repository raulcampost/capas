package com.capas.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.capas.domain.Pelicula;



@Repository
public class PeliculaDaoImpl implements PeliculaDao {

	@PersistenceContext(unitName="cine")
	private EntityManager em;
	
	@Override
	public List<Pelicula> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer(); 
		sb.append("select * from public.pelicula");
		Query query = em.createNativeQuery(sb.toString(),Pelicula.class);
		List<Pelicula> res = query.getResultList();
		return res;
	}

	@Override
	public List<Pelicula> find(Integer codigo) throws DataAccessException {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer(); 
		sb.append("select * from public.pelicula where id_pelicula =:query1");
		Query query = em.createNativeQuery(sb.toString(),Pelicula.class);
		query.setParameter("query1", codigo);
		List<Pelicula> res = query.getResultList();
		return res;
	}

}
