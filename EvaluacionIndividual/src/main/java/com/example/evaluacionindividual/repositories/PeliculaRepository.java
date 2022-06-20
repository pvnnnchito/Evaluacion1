package com.example.evaluacionindividual.repositories;

import com.example.evaluacionindividual.models.Pelicula;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping
public interface PeliculaRepository extends JpaRepository <Pelicula, Long> {


}
