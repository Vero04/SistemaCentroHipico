package clases;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author fran
 */
public class login extends ActionSupport implements SessionAware {

    private tfg.Usuarios User = new tfg.Usuarios();
    private Map<String, Object> sesion;

    @Override
    public String execute() throws Exception {

        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();
        try {
            String query = "FROM  Usuarios WHERE Usuario='" + User.getId().getUsuario()+ "' AND Password='" + User.getId().getPassword()+ "'";

            List users = session.createQuery(query).list();
            if ((users.size() > 0) && (users.size() < 2)) {
                if (User.getId().getUsuario().compareTo("System_Admin")== 0) {
                    sesion.put("usuario", User.getId().getUsuario());
                    sesion.put("admin", 1);
                    return "privado";
                } else {
                    sesion.put("usuario", User.getId().getUsuario());
                    return SUCCESS;
                }
            } else {
                return INPUT;
            }
        } catch (HibernateException e) {
            throw e;
        } finally {
            session.close();
        }

    }

    public tfg.Usuarios getUser() {
        return User;
    }

    public void setUser(tfg.Usuarios User) {
        this.User = User;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sesion = map;
    }
}
