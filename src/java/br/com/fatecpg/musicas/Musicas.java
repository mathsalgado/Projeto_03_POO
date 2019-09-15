/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;



/**
 *
 * @author Usuário
 */
public class Musicas {
    private String nomeMusica;
    private String nomeBanda;
    private String nomeDisco;
    
    public Musicas (String nomeMusica, String nomeBanda, String nomeDisco){
        this.nomeBanda = nomeBanda;
        this.nomeDisco = nomeDisco;
        this.nomeMusica = nomeMusica;
        
    } 

    public String getNomeMusica() {
        return nomeMusica;
    }

    public void setNomeMusica(String nomeMusica) {
        this.nomeMusica = nomeMusica;
    }

    public String getNomeBanda() {
        return nomeBanda;
    }

    public void setNomeBanda(String nomeBanda) {
        this.nomeBanda = nomeBanda;
    }

    public String getNomeDisco() {
        return nomeDisco;
    }

    public void setNomeDisco(String nomeDisco) {
        this.nomeDisco = nomeDisco;
    }
}


