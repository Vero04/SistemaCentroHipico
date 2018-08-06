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
public class MostrarUnCliente {

    private static final long serialVersionUID = 1l;
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

    public String execute() throws Exception {
        String query = "FROM tfg.Usuarios WHERE Usuario='" + cli.getId().getUsuario()+ "' AND Admin='0'";
        cli = (tfg.Usuarios) session.createQuery(query).uniqueResult();
        System.out.println(cli);
        session.close();
        return SUCCESS;
    }   
}
