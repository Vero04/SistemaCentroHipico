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
public class MostrarUnaCuadra {

    private static final long serialVersionUID = 1l;
    private tfg.Cuadras cuad = new tfg.Cuadras();

    public tfg.Cuadras getCuad() {
        return cuad;
    }

    public void setCuad(tfg.Cuadras cuad) {
        this.cuad = cuad;
    }
    Configuration conf = new Configuration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
    SessionFactory factory = conf.buildSessionFactory(builder.build());
    Session session = factory.openSession();

    public String execute() throws Exception {
        String query = "FROM tfg.Cuadras WHERE Numero='" + cuad.getNumero() + "'";
        cuad = (tfg.Cuadras) session.createQuery(query).uniqueResult();
        System.out.println(cuad);
        session.close();
        return SUCCESS;
    }
}
