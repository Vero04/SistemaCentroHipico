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
public class MostrarUnTrabajador {
 private static final long serialVersionUID = 1l;
    private tfg.Trabajadores trabaj = new tfg.Trabajadores();

    public tfg.Trabajadores getTrabaj() {
        return trabaj;
    }

    public void setTrabaj(tfg.Trabajadores trabaj) {
        this.trabaj = trabaj;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Trabajadores WHERE DNI='" + trabaj.getDni()+ "'";
        trabaj = (tfg.Trabajadores) session.createQuery(query).uniqueResult();
        System.out.println(trabaj);
        session.close();
        return SUCCESS;
    }   
}
