/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

import java.util.ArrayList;

/**
 *
 * @author Usuário
 */
public class DbMusicas {
    private static ArrayList <Musicas> musicas;
    
    public static ArrayList <Musicas> getMusicas(){
        if (musicas == null){
            musicas = new ArrayList<>();
            musicas.add(new Musicas("I'm Not Okay", "My Chemical Romance", "Life on the Murder Scene"));
            musicas.add(new Musicas("Sugar, We're Going Down","Fall Out Boys" , "From Under the Cork Tree"));
        }
        return musicas;
    } 
    
    public static void addMusicas(Musicas musica){
    
        getMusicas().add(musica);
    }
    public static void setMusicas(int index, Musicas musica){
        getMusicas().set(index, musica);
    }
    public static void removeMusicas(int index){
        getMusicas().remove(index);        
    }
}
