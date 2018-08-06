/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Veron
 */
public class VariasReservas {
private static final long serialVersionUID = 1l;
    private tfg.Reservascaballos reservCabal = new tfg.Reservascaballos();

    public tfg.Reservascaballos getReservCabal() {
        return reservCabal;
    }

    public void setReservCabal(tfg.Reservascaballos reservCabal) {
        this.reservCabal = reservCabal;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Reservascaballos WHERE Cliente='" + reservCabal.getId().getCliente()+ "'";
        reservCabal = (tfg.Reservascaballos) session.createQuery(query).list();
        System.out.println(reservCabal);
        session.close();
        return SUCCESS;
    }    
}
