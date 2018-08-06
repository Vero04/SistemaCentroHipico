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
public class EliminarEmpresa {
 private static final long serialVersionUID=1l;
    private tfg.Empresas empres = new tfg.Empresas();

    public tfg.Empresas getEmpres() {
        return empres;
    }

    public void setEmpres(tfg.Empresas empres) {
        this.empres = empres;
    }
    
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();
    public String execute() throws Exception{
            Transaction tx = null;
            try{
              String query = "FROM tfg.Empresas WHERE Cod='" + empres.getCod()+ "'";
              empres = (tfg.Empresas) session.createQuery(query).uniqueResult();
              tx=session.beginTransaction();
              session.delete(empres);
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
