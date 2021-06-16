package Objetos;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author fernandajimenez
 */
public class Descendiente {
    private Nodo nodo;
    private int costo;
    
    public Descendiente (Nodo nodo, int costo){
        this.nodo = nodo;
        this.costo = costo; 
    }
    
     public Nodo getNodo(){
        return nodo;
    }
     public int getCosto(){
        return costo;
    }
     
}
