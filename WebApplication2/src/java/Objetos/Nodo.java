package Objetos;


import Objetos.Descendiente;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author fernandajimenez
 */
public class Nodo {
    
    private String nombre; 
    private ArrayList<Descendiente> descendientes; 
    
    public Nodo(String nombre){
        this.nombre = nombre; 
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public ArrayList<Descendiente> getDescendientes(){
        return descendientes;
    }
}
