/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Veron
 */
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class destruirSesion extends ActionSupport implements SessionAware {

    private Map<String, Object> sesion;

    @Override
    public String execute() throws Exception {
        SessionMap session = (SessionMap) ActionContext.getContext().getSession();
        session.invalidate();
        sesion = null;
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sesion = map;
    }
}