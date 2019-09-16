/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;


import java.util.ArrayList;
/**
 *
 * @author THIAGOFELIPE
 */
public class DbDiscos {
    private static ArrayList<Discos> discos;
    
    public static ArrayList<Discos> getDiscos(){
        if (discos == null){
             discos = new ArrayList<>();
             discos.add(new Discos("Life on The Murder Scene","My Chemical Romance","Emocore","I Never Told You What I Do for a Living"));
             discos.add(new Discos("From Under the Cork Tree","Fall Out Boy","Pop Rock","Dance, Dance"));            
        }
        return discos;
    }
    
    public static void addDiscos(Discos disco){
        getDiscos().add(disco);
    }
    
    public static void setDiscos(int index, Discos disco){
        getDiscos().set(index, disco);
    }
    
    public static void removeDiscos(int index){
        getDiscos().remove(index);
    }
    
}
