package com.pedro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pedro.entity.Alumno;
import com.pedro.service.AlumnoService;

@Controller
public class AlumnosController {
	
	@Autowired AlumnoService as;
	
	//Metodo para llamar al Formulario de Registro
	@RequestMapping("/verAlumno")
	public String ver() {
		return "registraAlumno";
	}
	//Metodo para mostrar al Listado de Alumnos
	@RequestMapping("/listarAlumno")
		public String listar(String filtro, Model m) {
			List<Alumno> lista = as.listaAlumnoPorNombre(filtro);
			m.addAttribute("alumnos", lista);
			return "consultaAlumno";
		}
	
	//Metodo para Guardar Alumnos
	@RequestMapping("/registroDeAlumno")
	public String registrar(Alumno a) {
		as.insertaAlumno(a);
		return "registraAlumno";
	}
	
}
