package com.capas.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.capas.domain.Pelicula;
import com.capas.services.PeliculaService;


@Controller
public class MainController {
	
	@Autowired
	public PeliculaService ps;
	
	@RequestMapping("/")
	public ModelAndView all() {
		ModelAndView mav = new ModelAndView();
		List<Pelicula> peliculas = ps.findAll();
		mav.addObject("pelicula",peliculas);
		mav.setViewName("index");
		return mav;
		
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/single")
	public ModelAndView single(@RequestParam("idpelicula") Integer idpelicula) {
		ModelAndView mav = new ModelAndView();
		List<Pelicula> pl = ps.find(idpelicula);
		mav.addObject("pelicula",pl);
		mav.setViewName("single");
		return mav;
	}
	
}
