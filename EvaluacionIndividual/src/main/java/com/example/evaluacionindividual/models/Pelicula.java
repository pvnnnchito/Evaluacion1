package com.example.evaluacionindividual.models;

import javax.persistence.*;

@Entity
@Table(name="peliculas")
public class Pelicula {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private String categoria;
    private Integer anio;

    public Pelicula() {
    }

    public Pelicula(String nombre, String categoria, Integer anio) {
        this.nombre = nombre;
        this.categoria = categoria;
        this.anio = anio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Integer getAnio() {
        return anio;
    }

    public void setAnio(Integer anio) {
        this.anio = anio;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}






