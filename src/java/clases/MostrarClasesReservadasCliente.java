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
public class MostrarClasesReservadasCliente {

    private static final long serialVersionUID = 1l;
    private List<tfg.Clasesclientes> ReservaClase;
    private tfg.Clasesclientes clasCli = new tfg.Clasesclientes();

    public tfg.Clasesclientes getClasCli() {
        return clasCli;
    }

    public void setClasCli(tfg.Clasesclientes clasCli) {
        this.clasCli = clasCli;
    }

    public List<tfg.Clasesclientes> getReservaClase() {
        return ReservaClase;
    }

    public void setReservaClase(List<tfg.Clasesclientes> ReservaClase) {
        this.ReservaClase = ReservaClase;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Clasesclientes WHERE Asistente='" + clasCli.getId().getAsistente() + "'";
        ReservaClase = session.createQuery(query).list();
        System.out.println(ReservaClase);
        session.close();
        return SUCCESS;
    }
}
