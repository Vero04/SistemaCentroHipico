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
public class MostrarUnaClase {
   private static final long serialVersionUID = 1l;
    private tfg.Clases clas = new tfg.Clases();

    public tfg.Clases getClas() {
        return clas;
    }

    public void setClas(tfg.Clases clas) {
        this.clas = clas;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Clases WHERE Cod='" + clas.getId().getCod() + "'";
        clas = (tfg.Clases) session.createQuery(query).uniqueResult();  
        System.out.println(clas);
        session.close();
        return SUCCESS;
    } 
}
