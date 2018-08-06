/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;

/**
 *
 * @author Veron
 */
public class envioCorreo extends ActionSupport {

    private String from;
    private static String to = "Veronicajimenezlopez35@gmail.com";
    private String password;
    private String asunto;
    private String texto;

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public static String getTo() {
        return to;
    }

    public static void setTo(String to) {
        envioCorreo.to = to;
    }

    public static Properties getProperties() {
        return properties;
    }

    public static void setProperties(Properties properties) {
        envioCorreo.properties = properties;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }
    static Properties properties = new Properties();

    static {
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
    }

    @Override
    public String execute() {
        String ret = SUCCESS;
        try {
            Session session = Session.getDefaultInstance(properties,
                    new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication
                        getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            });
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(asunto);
            message.setText(texto);
            Transport.send(message);
        } catch (Exception e) {
            ret = ERROR;
            e.printStackTrace();
        }
        return ret;
    }
}
