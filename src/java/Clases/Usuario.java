/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author carlox
 */
public class Usuario {
    private int victorias;
    private int derrotas;
    private int empates;
    

    public Usuario() {
        this.victorias=0;
        this.derrotas=0;
        this.empates=0;
    }

    public int getVictorias() {
        return victorias;
    }

    public void setVictorias() {
        this.victorias ++;
    }

    public int getDerrotas() {
        return derrotas;
    }

    public void setDerrotas() {
        this.derrotas ++;
    }
    public int getEmpates() {
        return empates;
    }

    public void setEmpates() {
        this.empates ++;
    }
    
    
    
    
}
