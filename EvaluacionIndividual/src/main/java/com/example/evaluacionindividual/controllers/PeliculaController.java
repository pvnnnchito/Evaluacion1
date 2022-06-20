package com.example.evaluacionindividual.controllers;

import com.example.evaluacionindividual.models.Pelicula;
import com.example.evaluacionindividual.services.PeliculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/pelicula")
public class PeliculaController {

    @Autowired
    PeliculaService peliculaService;

    @RequestMapping("")
    public String inicio(@ModelAttribute("pelicula") Pelicula pelicula) {
        return "pelicula.jsp";
    }

    @PostMapping("/guardar")
    public String guardarPelicula(@Valid @ModelAttribute("pelicula") Pelicula pelicula,
                                  BindingResult resultado,
                                  Model model) {
        if (resultado.hasErrors()) {
            model.addAttribute("msgError", "Datos erroneos");
            return "pelicula.jsp";
        } else {
            List<Pelicula> listaPeliculas = peliculaService.findAll();
            //pasamos la lista de autos al jsp
            model.addAttribute("peliculasCapturadas", listaPeliculas);
            return "mostrarPelicula.jsp";
        }
    }
}



