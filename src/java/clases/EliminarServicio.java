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
public class EliminarServicio {
        private static final long serialVersionUID=1l;
    private tfg.Servicios servi = new tfg.Servicios();

    public tfg.Servicios getServi() {
        return servi;
    }

    public void setServi(tfg.Servicios servi) {
        this.servi = servi;
    }
    
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();
    public String execute() throws Exception{
            Transaction tx = null;
            try{
              String query = "FROM tfg.Servicios WHERE Cod='" + servi.getCod()+ "'";
              servi = (tfg.Servicios) session.createQuery(query).uniqueResult();
              tx=session.beginTransaction();
              session.delete(servi);
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
