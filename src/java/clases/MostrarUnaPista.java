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
public class MostrarUnaPista {
private static final long serialVersionUID = 1l;
    private tfg.Pistas pist = new tfg.Pistas();

    public tfg.Pistas getPist() {
        return pist;
    }

    public void setPist(tfg.Pistas pist) {
        this.pist = pist;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Pistas WHERE Numero='" + pist.getNumero()+ "'";
        pist = (tfg.Pistas) session.createQuery(query).uniqueResult();
        System.out.println(pist);
        session.close();
        return SUCCESS;
    }    
}
