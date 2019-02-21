/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.logica;

import modelo.Persona;

/**
 *
 * @author Sergio Remiro
 */
public class GestionPersona {
    private Persona persona;
    
    private static GestionPersona instancia;
    private GestionPersona() {}
    GestionPersona getInstancia(){
        if (instancia == null) instancia = new GestionPersona();
        return instancia;
    }
    private boolean validarEdad(String edad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public enum TipoResultado {OK, SIN_VALORES, EDAD_MAL};
    
    
    public boolean validarDatosPersona(String nombre,String edad) {
        return (nombre.equals("") || edad.equals(""));
       
    }
    public boolean validadEdad(String edad){
        return edad.matches("^[0.9]+$");
    }
    
    public TipoResultado guardarPersona(String nombre, String edad) {
        if(validarDatosPersona(nombre, edad)) {
            if (validarEdad(edad)) {
                int iEdad = Integer.parseInt(edad);
                this.persona = new Persona(nombre, iEdad);
                return TipoResultado.OK;
            }else {
                return TipoResultado.EDAD_MAL;
            }
        }else{
            return TipoResultado.SIN_VALORES;
        }      
    }
     public Persona getPersona() {
         return persona;
     }
}
