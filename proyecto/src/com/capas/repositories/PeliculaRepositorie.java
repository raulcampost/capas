package com.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.capas.domain.Pelicula;

public interface PeliculaRepositorie extends JpaRepository<Pelicula,Integer>{

	public List<Pelicula> findByBseleccionTrue();
	
	@Modifying
	@Query(value = "update pelicula set b_seleccion =:b where id_pelicula=:id", nativeQuery = true)
	public void UpdateEstado(@Param("id") Integer id,@Param("b") Boolean b);
	
}
