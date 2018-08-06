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
public class EliminarCaballoDueno {
 private static final long serialVersionUID=1l;
    private tfg.Caballosduenos cabalduen = new tfg.Caballosduenos();

    public tfg.Caballosduenos getCabalDuen() {
        return cabalduen;
    }

    public void setCabalDuen(tfg.Caballosduenos cabalduen) {
        this.cabalduen = cabalduen;
    }
    
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();
    public String execute() throws Exception{
            Transaction tx = null;
            try{
              String query = "FROM tfg.Caballosduenos WHERE (Caballo='" + cabalduen.getId().getCaballo()+ "') AND (Dueno='"+cabalduen.getId().getDueno()+"')";
              cabalduen = (tfg.Caballosduenos) session.createQuery(query).uniqueResult();
              tx=session.beginTransaction();
              session.delete(cabalduen);
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
