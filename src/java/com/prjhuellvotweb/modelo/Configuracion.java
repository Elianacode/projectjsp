/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prjhuellvotweb.modelo;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author Eliana Marquez Olarte
 */
public class Configuracion {
    private String sexoConfig;
    private String categoriaConfig;
    private String fichaConfig;
    private String imagenConfig;
    private String descripcionConfig;
    private String fechainicioConfig;
    private String fechafinConfig;

    public String getSexoConfig() {
        return sexoConfig;
    }

    public void setSexoConfig(String sexoConfig) {
        this.sexoConfig = sexoConfig;
    }

    public String getCategoriaConfig() {
        return categoriaConfig;
    }

    public void setCategoriaConfig(String categoriaConfig) {
        this.categoriaConfig = categoriaConfig;
    }

    public String getFichaConfig() {
        return fichaConfig;
    }

    public void setFichaConfig(String fichaConfig) {
        this.fichaConfig = fichaConfig;
    }

    public String getImagenConfig() {
        return imagenConfig;
    }

    public void setImagenConfig(String imagenConfig) {
        this.imagenConfig = imagenConfig;
    }

    public String getDescripcionConfig() {
        return descripcionConfig;
    }

    public void setDescripcionConfig(String descripcionConfig) {
        this.descripcionConfig = descripcionConfig;
    }

    public String getFechainicioConfig() {
        return fechainicioConfig;
    }

    public void setFechainicioConfig(String fechainicioConfig) {
        this.fechainicioConfig = fechainicioConfig;
    }

    public String getFechafinConfig() {
        return fechafinConfig;
    }

    public void setFechafinConfig(String fechafinConfig) {
        this.fechafinConfig = fechafinConfig;
    }

    

   
    
}