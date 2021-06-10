package com.pedro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pedro.entity.Alumno;
import com.pedro.repository.AlumnoRepository;

@Service
public class AlumnoServiceImpl implements AlumnoService{

	@Autowired
	private AlumnoRepository ar;
	
	@Override
	public void insertaAlumno(Alumno a) {
		ar.save(a);
		
	}

	@Override
	public List<Alumno> listaAlumnoPorNombre(String nombre) {
		return ar.listaAlumnoPorNombre(nombre);
		
	}

}
