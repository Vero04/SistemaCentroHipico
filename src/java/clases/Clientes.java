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
public class Clientes {

    private static final long serialVersionUID = 1l;
    private List<tfg.Usuarios> Usuario;

    public List<tfg.Usuarios> getUsuario() {
        return Usuario;
    }

    public void setUsuarios(List<tfg.Usuarios> Usuario) {
        this.Usuario = Usuario;
    }

    public String execute() throws Exception {
        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();
        String query = "FROM tfg.Usuarios WHERE Admin=0";
        Usuario = session.createQuery(query).list();
        session.close();
        return SUCCESS;
    }

    String getPassword() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
