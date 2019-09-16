/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

/**
 *
 * @author THIAGOFELIPE
 */
public class Discos {
    
    private String nome;
    private String banda;
    private String genero;
    private String music;
    

    public Discos(String nome, String banda, String genero, String music) {
        this.nome = nome;
        this.banda = banda;
        this.genero = genero;
        this.music = music;
    }

    public Discos() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getBanda() {
        return banda;
    }

    public void setBanda(String banda) {
        this.banda = banda;
    }
    
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }
        
}
