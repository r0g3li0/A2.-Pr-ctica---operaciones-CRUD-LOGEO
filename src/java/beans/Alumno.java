package beans;

import java.text.DecimalFormat;

public class Alumno
{
    private String matricula;
    private String nombre;
    private String genero;
    
 
    public Alumno() 
    {
        matricula = " ";
        nombre = " ";
        genero = " ";
    
 
    }
    public Alumno(String matricula, String nombre, String genero) 
    {
        this.matricula = matricula;
        this.nombre = nombre;
        this.genero = genero;
        
     }
    
    public String getMatricula()
    {
        return matricula;
    }
    public void setMatricula(String matricula)
    {
        this.matricula = matricula;
    }
    public String getNombre()
    {
        return nombre;
    }
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }
    public String getGenero()
    {
        return genero;
    }
    public void setGenero(String genero)
    {
        this.genero = genero;
    }
}