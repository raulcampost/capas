package com.capas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.capas.domain.Pelicula;
import com.capas.services.PeliculaService;

@Controller
public class AdminController {

	@Autowired
	public PeliculaService ps;
	
	@RequestMapping("/admin")
	public ModelAndView adminAll() {
		ModelAndView mav = new ModelAndView();
		List<Pelicula> peliculas = ps.findAll();
		mav.addObject("pelicula",peliculas);
		mav.setViewName("admin");
		return mav;
		
	}
	
	
}
