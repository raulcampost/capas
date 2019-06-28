package com.capas.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.capas.domain.Funcion;
import com.capas.domain.Horario;
import com.capas.domain.Pelicula;
import com.capas.domain.Reservacion;
import com.capas.services.PeliculaService;
import com.capsa.DTO.RespuestaDTO;


@Controller
public class MainController {
	
	@Autowired
	public PeliculaService ps;
	
	@RequestMapping("/")
	public ModelAndView all() {
		ModelAndView mav = new ModelAndView();
		List<Pelicula> peliculas = ps.findByBseleccionTrue();
		mav.addObject("pelicula",peliculas);
		mav.setViewName("index");
		return mav;
		
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/comprar")
	public ModelAndView comprar(@RequestParam("idfuncion") Integer idfuncion,@RequestParam("idpelicula") Integer idpelicula) {
		ModelAndView mav = new ModelAndView();
		Funcion fn = ps.buscarfuncion(idfuncion);
		Horario hr = ps.buscarhorario(idfuncion);
		Pelicula pl = ps.findOne(idpelicula);
		mav.addObject("pelicula",pl);
		mav.addObject("funcion",fn);
		mav.addObject("horario",hr);
		mav.setViewName("comprar");
		
		return mav;
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/single")
	public ModelAndView single(@RequestParam("idpelicula") Integer idpelicula) {
		ModelAndView mav = new ModelAndView();
		Pelicula pl = ps.findOne(idpelicula);
		List<Funcion> edto = ps.buscarformato(idpelicula);
		mav.addObject("id",edto);
		mav.addObject("pelicula",pl);
		mav.setViewName("single");
		return mav;
	}
	
	
	@RequestMapping("/transaccioncompra")
	public ModelAndView transaccion(@RequestParam("hn") Integer hn,	@RequestParam("hm") Integer hm,@RequestParam("sub") Integer sub,
			@RequestParam("cuenta") Integer cuenta,@RequestParam("remanente") Integer remanente,@RequestParam("total") Integer total, @RequestParam("idfuncion") Integer idfuncion,@RequestParam("idpelicula") Integer idpelicula) {
		ModelAndView mav = new ModelAndView();
		Funcion fn = ps.buscarfuncion(idfuncion);
		Horario hr = ps.buscarhorario(idfuncion);
		Pelicula pl = ps.findOne(idpelicula);
		Date fecha = new Date();
		Reservacion rs = new Reservacion("COMPRA",fecha,pl.getStitulo(),fn.getSformato(),hr.getShora(),hn,hm,sub,cuenta,remanente,total,idfuncion);
		ps.savecompra(rs);
		mav.addObject("pelicula",pl);
		mav.addObject("funcion",fn);
		mav.addObject("horario",hr);
		mav.setViewName("comprar");
		
		return mav;
	}
	
	
	
	
	
}
