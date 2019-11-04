package Resultado;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author carlox
 */
public class Resultado {

    private String tabla[][];
    private String resultado;

    public Resultado() {
        this.tabla = new String[5][5];
        this.resultado = "Pierde";
        crearTabla();
    }

    /**
     * Funcion en la que comprobaremos si hemos ganado.
     *
     * @param j Valor de la opcion elegida por el jugador
     * @param m Valor de la opcion elegida por la maquina
     * @return
     */
    public int ganar(int j, int m) {
        int sol = 0;
        if (tabla[j][m].equals("Gana")) {
            sol = 2;
        }
        if (tabla[j][m].equals("Empate")) {
            sol = 1;
        }
        return sol;
    }

    /**
     * Creamos una tabla con un orden concreto en el que miraremos el resultado
     * de la partida. El orden sera Piedra=0, Papel=1, Tijeras=2, Lagarto=3 y
     * Spock=4.
     */
    private void crearTabla() {
        // Empate, pierde, gana,   gana,   pierde
        // gana,   empate, pierde, pierde, gana
        // pierde, gana,   empate, gana,   pierde
        // pierde, gana,   pierde, empata, gana
        // gana,   pierde, gana,   pierde, empata
        for (int i = 0; i < 5; i++) {
            int cont = 1;
            for (int j = 0; j < 5; j++) {
                if (i == j) {
                    tabla[i][j] = "Empate";
                }
                if (i != j && i >= 3) {
                    if (j != 4) {
                        cambiarResultado();
                    }
                    tabla[i][j] = resultado;
                }
                if (i != j && i < 3) {
                    tabla[i][j] = resultado;
                    cont++;
                    if (cont % 2 == 0 || j == 4) {
                        cambiarResultado();
                    }
                }
            }
        }
    }

    /**
     * Funcion que cambia el valor del resultado.
     */
    private void cambiarResultado() {
        if (this.resultado.equals("Gana")) {
            this.resultado = "Pierde";
        } else {
            this.resultado = "Gana";
        }
    }
}
