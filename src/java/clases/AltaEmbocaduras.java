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
import tfg.Embocaduras;

/**
 *
 * @author Veron
 */
public class AltaEmbocaduras {
    private static final long serialVersionUID=1l;
    private tfg.Embocaduras Emb = new tfg.Embocaduras();

    public Embocaduras getEmb() {
        return Emb;
    }

    public void setEmb(tfg.Embocaduras  Emb) {
        this.Emb = Emb;
    }
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
            Transaction tx = null;
            try{
              tx=session.beginTransaction();
              session.save(Emb);
              tx.commit();
            }catch(HibernateException e){ 
               if(tx!=null) {
                   tx.rollback();
               }
               throw e;
            }  
       session.close();
       return SUCCESS;
    }
}