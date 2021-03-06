package tfg;
// Generated 25-jul-2018 12:22:30 by Hibernate Tools 4.3.1



/**
 * ClasesId generated by hbm2java
 */
public class ClasesId  implements java.io.Serializable {


     private String diaSemana;
     private int cod;
     private String hora;

    public ClasesId() {
    }

    public ClasesId(String diaSemana, int cod, String hora) {
       this.diaSemana = diaSemana;
       this.cod = cod;
       this.hora = hora;
    }
   
    public String getDiaSemana() {
        return this.diaSemana;
    }
    
    public void setDiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }
    public int getCod() {
        return this.cod;
    }
    
    public void setCod(int cod) {
        this.cod = cod;
    }
    public String getHora() {
        return this.hora;
    }
    
    public void setHora(String hora) {
        this.hora = hora;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ClasesId) ) return false;
		 ClasesId castOther = ( ClasesId ) other; 
         
		 return ( (this.getDiaSemana()==castOther.getDiaSemana()) || ( this.getDiaSemana()!=null && castOther.getDiaSemana()!=null && this.getDiaSemana().equals(castOther.getDiaSemana()) ) )
 && (this.getCod()==castOther.getCod())
 && ( (this.getHora()==castOther.getHora()) || ( this.getHora()!=null && castOther.getHora()!=null && this.getHora().equals(castOther.getHora()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getDiaSemana() == null ? 0 : this.getDiaSemana().hashCode() );
         result = 37 * result + this.getCod();
         result = 37 * result + ( getHora() == null ? 0 : this.getHora().hashCode() );
         return result;
   }   


}


