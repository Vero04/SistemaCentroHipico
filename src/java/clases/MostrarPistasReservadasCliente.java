package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import tfg.Reservaspistas;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Veron
 */
public class MostrarPistasReservadasCliente {

    private static final long serialVersionUID = 1l;
    private List<tfg.Reservaspistas> ReservaPista;
    private tfg.Reservaspistas pistCli = new tfg.Reservaspistas();

    public Reservaspistas getPistCli() {
        return pistCli;
    }

    public void setPistCli(Reservaspistas pistCli) {
        this.pistCli = pistCli;
    }

    public List<tfg.Reservaspistas> getReservaPista() {
        return ReservaPista;
    }

    public void setReservaPista(List<tfg.Reservaspistas> ReservaPista) {
        this.ReservaPista = ReservaPista;
    }

    public String execute() throws Exception {
        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();
        String query = "FROM tfg.Reservaspistas WHERE Cliente='" + pistCli.getId().getCliente() + "'";
        ReservaPista = session.createQuery(query).list();
        System.out.println(ReservaPista);
        session.close();
        return SUCCESS;
    }
}
