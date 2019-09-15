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
    private int membros;

    public Banda(String nome, String estilo, int membros) {
        this.nome = nome;
        this.estilo = estilo;
        this.membros = membros;
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

    public int getMembros() {
        return membros;
    }

    public void setMembros(int membros) {
        this.membros = membros;
    }
    
    
    
}
