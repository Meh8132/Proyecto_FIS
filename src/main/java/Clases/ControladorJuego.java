package Clases;

import Clases.Jugador;
import Clases.Tarjeta;

import java.util.ArrayList;
import java.util.Random;


public class ControladorJuego {

    ArrayList<Jugador> listaJugadores = new ArrayList<Jugador>();
    ArrayList<Tarjeta> listaTarjetas = new ArrayList<Tarjeta>();
    ArrayList<Integer> tarjetasJugadas = new ArrayList<Integer>();


    public void AgregarJugador(String nombre) {
        listaJugadores.add(new Jugador(nombre, 0));
    }

    public void EliminarJugador(String nombre) {
        int pos = BuscarJugador(nombre);
        listaJugadores.remove(pos);
    }

    public void SumarPtos(boolean reto, Tarjeta tarjeta, String nombre) {
        int pos = BuscarJugador(nombre);
        if (reto) {
            listaJugadores.get(pos).setPuntaje(tarjeta.getPuntos());
        }
    }

    public int BuscarJugador(String nombre) {
        for (int i = 0; i <= listaJugadores.size(); i++) {
            if (listaJugadores.get(i).getNombre().equals(nombre)) {
                return i;
            }
        }
        return -1;
    }

    public String GenerarTurnos() {
        Random turno = new Random();
        return listaJugadores.get(turno.nextInt(listaJugadores.size())).getNombre();
    }

    public void imprimirLista() {
        for (int i = 0; i < listaJugadores.size(); i++) {
            System.out.println(listaJugadores.get(i).getNombre());
        }
    }

    public Tarjeta DevolverTarjeta() {
        if (tarjetasJugadas.size() == 1) {
            tarjetasJugadas.removeAll(tarjetasJugadas);
        }
        Random numeroIndice = new Random(); //Numero random que trae carta de la bd
        int x = numeroIndice.nextInt(1);
        while (tarjetasJugadas.contains(x)) {
            x = numeroIndice.nextInt(1);
        }
        tarjetasJugadas.add(x);
        return listaTarjetas.get(x);
    }

    public void inicializarArray() {
        dbConexion conexion = new dbConexion();
        listaTarjetas = conexion.DevolverListaTarjeta();
    }

    public void inicializarJugadores(ArrayList<Jugador> listaJugadores) {
        this.listaJugadores = listaJugadores;
    }
    public ArrayList<Jugador> getListaJugadores(){
        return this.listaJugadores;
    }
}
