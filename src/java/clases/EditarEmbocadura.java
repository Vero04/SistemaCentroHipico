/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Veron
 */
public class EditarEmbocadura {
  private static final long serialVersionUID = 1l;
    private tfg.Embocaduras emb = new tfg.Embocaduras();

    public tfg.Embocaduras getEmb() {
        return emb;
    }

    public void setEmb(tfg.Embocaduras emb) {
        this.emb = emb;
    }

    public String execute() throws Exception {
        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(emb);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        }
        session.close();
        return SUCCESS;
    }  
}
