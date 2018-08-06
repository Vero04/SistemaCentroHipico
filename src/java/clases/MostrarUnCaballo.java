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
public class MostrarUnCaballo {
 private static final long serialVersionUID = 1l;
    private tfg.Caballos cabal = new tfg.Caballos();

    public tfg.Caballos getCabal() {
        return cabal;
    }

    public void setCabal(tfg.Caballos cabal) {
        this.cabal = cabal;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Caballos WHERE Cod='" + cabal.getCod() + "'";
        cabal = (tfg.Caballos) session.createQuery(query).uniqueResult();
        System.out.println(cabal);
        session.close();
        return SUCCESS;
    }   
}
