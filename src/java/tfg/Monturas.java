package tfg;
// Generated 25-jul-2018 12:22:30 by Hibernate Tools 4.3.1



/**
 * Monturas generated by hbm2java
 */
public class Monturas  implements java.io.Serializable {


     private int cod;
     private String estado;
     private String tipo;
     private String color;

    public Monturas() {
    }

    public Monturas(int cod, String estado, String tipo, String color) {
       this.cod = cod;
       this.estado = estado;
       this.tipo = tipo;
       this.color = color;
    }
   
    public int getCod() {
        return this.cod;
    }
    
    public void setCod(int cod) {
        this.cod = cod;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }




}


