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
public class MostrarUnaMontura {
    private static final long serialVersionUID = 1l;
    private tfg.Monturas mont = new tfg.Monturas();

    public tfg.Monturas getMont() {
        return mont;
    }

    public void setMont(tfg.Monturas mont) {
        this.mont = mont;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Monturas WHERE Cod='" + mont.getCod() + "'";
        mont = (tfg.Monturas) session.createQuery(query).uniqueResult();  
        System.out.println(mont);
        session.close();
        return SUCCESS;
    } 
}
