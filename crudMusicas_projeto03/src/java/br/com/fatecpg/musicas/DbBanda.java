/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

import java.util.ArrayList;

/**
 *
 * @author Estudos
 */
public class DbBanda {
    
    private static ArrayList<Banda> bandas;
    
    public static ArrayList<Banda> getBandas(){
        if (bandas == null){
             bandas= new ArrayList<>();
             bandas.add(new Banda("My Chemical Romance","emocore",4));
             bandas.add(new Banda("Fall Out Boy","pop rock",4));            
        }
        return bandas;
    }
    
    public static void addBandas(Banda band){
        getBandas().add(band);
    }
    
    public static void setBanda(int index, Banda band){
        getBandas().set(index, band);
    }
    
    public static void removeBanda(int index){
        getBandas().remove(index);
    }
    
}
