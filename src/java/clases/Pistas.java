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
public class Pistas {
   private static final long serialVersionUID=1l;
    private List <tfg.Pistas> Pista;
    public List<tfg.Pistas> getPista() {
            return Pista;
    }
    public void setPista(List<tfg.Pistas> Pista) {
            this.Pista = Pista;
    }
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
       String query = "FROM tfg.Pistas";
       Pista = session.createQuery(query).list();
       System.out.println(Pista);
       session.close();
       return SUCCESS;
    } 
}
