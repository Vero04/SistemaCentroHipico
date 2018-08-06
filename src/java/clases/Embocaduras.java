/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Veron
 */
public class Embocaduras extends ActionSupport{
    private static final long serialVersionUID=1l;
    private List <tfg.Embocaduras> Embocadura;
    public List<tfg.Embocaduras> getEmbocadura() {
            return Embocadura;
    }
    public void setEmbocadura(List<tfg.Embocaduras> Embocaduras) {
            this.Embocadura = Embocaduras;
    }
    @Override
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
       String query = "FROM tfg.Embocaduras";
       Embocadura = session.createQuery(query).list();
       System.out.println(Embocadura);
       session.close();
       return SUCCESS;
    }
}
