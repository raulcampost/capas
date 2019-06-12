package com.capas.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/all")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		List<Pelicula> peliculas = new ArrayList<>();
		
		Pelicula pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/aladdin.jpg");
		pelicula.setSsingular("resources/img/sg/aladdin.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/alita.jpg");
		pelicula.setSsingular("resources/img/sg/alita.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/capitanamarvel.jpg");
		pelicula.setSsingular("resources/img/sg/capitanamarvel.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/endgame.jpg");
		pelicula.setSsingular("resources/img/sg/endgame.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/glass.jpg");
		pelicula.setSsingular("resources/img/sg/glass.jpeg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/godzilla.jpg");
		pelicula.setSsingular("resources/img/sg/godzilla.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/it.jpg");
		pelicula.setSsingular("resources/img/sg/it.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/john.jpg");
		pelicula.setSsingular("resources/img/sg/john.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/joker.jpg");
		pelicula.setSsingular("resources/img/sg/joker.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/leon.jpg");
		pelicula.setSsingular("resources/img/sg/leon.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/maninblack.jpg");
		pelicula.setSsingular("resources/img/sg/maninblack.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/spider.jpg");
		pelicula.setSsingular("resources/img/sg/spider.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/terminator.jpg");
		pelicula.setSsingular("resources/img/sg/terminator.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/toy.jpg");
		pelicula.setSsingular("resources/img/sg/toy.jpg");
		peliculas.add(pelicula);
		
		pelicula = new Pelicula();
		pelicula.setSportada("resources/img/bn/xmen.jpg");
		pelicula.setSsingular("resources/img/sg/xmen.jpg");
		peliculas.add(pelicula);
		
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
	public String single() {
		return "single";
	}
	
}
