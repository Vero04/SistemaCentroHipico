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
public class EliminarCliente {
 private static final long serialVersionUID=1l;
    private tfg.Usuarios cli = new tfg.Usuarios();

    public tfg.Usuarios getCli() {
        return cli;
    }

    public void setCli(tfg.Usuarios cli) {
        this.cli = cli;
    }
    
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();
    public String execute() throws Exception{
            Transaction tx = null;
            try{
              String query = "FROM tfg.Usuarios WHERE DNI='" + cli.getId().getDni()+ "' AND Admin=0";
              cli = (tfg.Usuarios) session.createQuery(query).uniqueResult();
              tx=session.beginTransaction();
              session.delete(cli);
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
