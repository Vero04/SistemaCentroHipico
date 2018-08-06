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
public class ReservasClases extends ActionSupport{
    private static final long serialVersionUID=1l;
    private List <tfg.Clasesclientes> ReservaClase;
    public List <tfg.Clasesclientes> getReservaClase(){
        return ReservaClase;
    }
    public void setReservaClase(List<tfg.Clasesclientes> ReservaClase){
        this.ReservaClase= ReservaClase;
    }
    @Override
    public String execute() throws Exception{
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();
       String query = "FROM tfg.Clasesclientes";
       ReservaClase = session.createQuery(query).list();
       session.close();
       return SUCCESS;
    }

    String getPassword() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
