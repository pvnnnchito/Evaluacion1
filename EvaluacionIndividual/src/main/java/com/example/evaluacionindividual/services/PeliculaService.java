package com.example.evaluacionindividual.services;

import com.example.evaluacionindividual.models.Pelicula;
import com.example.evaluacionindividual.repositories.PeliculaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.Valid;
import java.util.List;

@Service
public class PeliculaService {
    @Autowired
    PeliculaRepository peliculaRepository;

    public void guardarPelicula(@Valid Pelicula pelicula) {
        peliculaRepository.save(pelicula);

    }

    public List<Pelicula> findAll() {
        return peliculaRepository.findAll();
    }
}
