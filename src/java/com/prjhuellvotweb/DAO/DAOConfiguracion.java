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

/**
 *
 * @author Estiven Mazo Moreno
 */

public class DAOConfiguracion {
    String sql;    
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
            pst.setString(2, c.getFichaConfig());
            pst.setString(2, c.getImagenConfig());
            pst.setString(2, c.getDescripcionConfig());
            pst.setDate(6, c.getFechainicioConfig());
            pst.setDate(7, c.getFechafinConfig());
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
        String sql = "SELECT * FROM configuracion";
        Configuracion c = new Configuracion();
        try {
            pst = con.prepareStatement(sql);
            ResultSet r = pst.executeQuery(sql);
            while (r.next()) {                
                c.setSexoConfig(r.getString("sexoConfig"));
                c.setCategoriaConfig(r.getString("categoriaConfig"));
                c.setDescripcionConfig(r.getString("descripcionConfig"));
                c.setFichaConfig(r.getString("fichaConfig"));
                c.setImagenConfig("imagenConfig");
                c.setFechainicioConfig(r.getDate("fechainicioConfig"));
                c.setFechafinConfig(r.getDate("fechafinConfig"));
            }
            return c;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
