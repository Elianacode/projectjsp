/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prjhuellvotweb.DAO;

import com.prjhuellvotweb.Util.Conexion;
import com.prjhuellvotweb.modelo.Configuracion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Estiven Mazo Moreno
 */

public class DAOConfiguracion {
    String sql; 
    ResultSet rs;
    PreparedStatement pst;
    Connection con;
    private void conectar(){
    con = Conexion.conectar("mysql");
    }
    
    public boolean RegistarConfig(Configuracion c) {
        conectar();
        try {
            sql = "INSERT INTO configuracion VALUES (?,?,?,?,?,?,?)";
            pst = con.prepareStatement(sql);
            pst.setString(1,c.getSexoConfig());
            pst.setString(2, c.getCategoriaConfig());
            pst.setString(3, c.getFichaConfig());
            pst.setString(4, c.getImagenConfig());
            pst.setString(5, c.getDescripcionConfig());
            pst.setString(6, c.getFechainicioConfig());
            pst.setString(7, c.getFechafinConfig());
            if (pst.executeUpdate() == 1) {
                System.out.println("Se ha registrado su configuración");

            } else {
                System.out.println("Han ocurrido errores durante la configuración");
            }
            pst.close();
            con.close();
            return true;
        } catch (SQLException ex) {
            System.out.println("Error al configurar por favor verifique, " + ex);
        }
        return false;
    }
    
    public Configuracion consultarConfig() {
        conectar();
        sql = "SELECT * FROM configuracion";
        Configuracion c = new Configuracion();
        try {
            pst = con.prepareStatement(sql);
            ResultSet r = pst.executeQuery(sql);
            if (r.next()) {                
                c.setSexoConfig(r.getString(1));
                System.out.println(c.getSexoConfig());
                c.setCategoriaConfig(r.getString("categoriaConfig"));
                c.setDescripcionConfig(r.getString("descripcionConfig"));                
//                c.setFichaConfig(r.getString("fichaConfig"));
//                c.setImagenConfig("imagenConfig");
//                c.setFechainicioConfig(r.getDate("fechainicioConfig"));
//                c.setFechafinConfig(r.getDate("fechafinConfig"));
            }
            return c;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    public int contar() {
        conectar();
        sql = "SELECT COUNT(*) FROM configuracion";
        int tot= 0;
       
        try {
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {                
                tot= rs.getInt(1);                
            }            
        } catch (SQLException ex) {
            System.out.println("Error verificando configuración, " + ex);
        }finally{
            try {
                pst.close();
                rs.close();
                con.close();                
            } catch (SQLException ex) {
                Logger.getLogger(DAOConfiguracion.class.getName()).log(Level.SEVERE, null, ex);
            }finally{
                return tot;
            }
        }
    }
}
