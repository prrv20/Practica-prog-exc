package com.pedro.service;

import java.util.List;

import com.pedro.entity.Alumno;


public interface AlumnoService {

	
	public abstract void insertaAlumno(Alumno a);
	public List<Alumno> listaAlumnoPorNombre(String nombre);
}
