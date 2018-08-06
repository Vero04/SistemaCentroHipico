/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Veron
 */
public class ReservasServicios {
 private static final long serialVersionUID=1l;
    private List <tfg.Reservasservicios> ReservaServicio;
    public List <tfg.Reservasservicios> getReservaServicio(){
        return ReservaServicio;
    }
    public void setClase(List<tfg.Reservasservicios> ReservaServicio){
        this.ReservaServicio= ReservaServicio;
    }
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
       String query = "FROM tfg.Reservasservicios";
       ReservaServicio = session.createQuery(query).list();
       session.close();
       return SUCCESS;
    }

    String getPassword() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }   
}
