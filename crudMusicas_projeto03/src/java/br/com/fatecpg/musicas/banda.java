/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

/**
 *
 * @author Estudos
 */
public class Banda {
    
    private String nome;
    private String estilo;
    private int membro;

    public Banda(String nome, String estilo, int membro) {
        this.nome = nome;
        this.estilo = estilo;
        this.membro = membro;
    }

    public Banda() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstilo() {
        return estilo;
    }

    public void setEstilo(String estilo) {
        this.estilo = estilo;
    }

    public int getMembro() {
        return membro;
    }

    public void setMembro(int membro) {
        this.membro = membro;
    }
    
    
}
