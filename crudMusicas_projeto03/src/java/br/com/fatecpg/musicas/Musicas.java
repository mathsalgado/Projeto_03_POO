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
    private String Musica;
    private String Banda;
    private String Disco;
    
    public Musicas (String Musica, String Banda, String Disco) {
        this.Musica = Musica;
        this.Banda = Banda;
        this.Disco = Disco;
        
    } 

    public String getMusica() {
        return Musica;
    }

    public void setMusica(String Musica) {
        this.Musica = Musica;
    }

    public String getBanda() {
        return Banda;
    }

    public void setBanda(String Banda) {
        this.Banda = Banda;
    }

    public String getDisco() {
        return Disco;
    }

    public void setDisco(String Disco) {
        this.Disco = Disco;
    }
}

