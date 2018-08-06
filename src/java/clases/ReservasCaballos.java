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
public class ReservasCaballos {
    private static final long serialVersionUID=1l;
    private List <tfg.Reservascaballos> ReservaCaballo;
    public List<tfg.Reservascaballos> getReservaCaballo() {
            return ReservaCaballo;
    }
    public void setReservaCaballo(List<tfg.Reservascaballos> ReservaCaballo) {
            this.ReservaCaballo = ReservaCaballo;
    }
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
       String query = "FROM tfg.Reservascaballos";
       ReservaCaballo = session.createQuery(query).list();
       System.out.println(ReservaCaballo);
       session.close();
       return SUCCESS;
    }
}
