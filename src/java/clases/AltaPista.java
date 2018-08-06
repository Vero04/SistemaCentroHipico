/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import static org.apache.struts2.ServletActionContext.getServletContext;
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
public class AltaPista {
  private static final long serialVersionUID = 1L;
    private tfg.Pistas pist = new tfg.Pistas();
    private String caratulasPathUp;
    private String caratulasPathDown;
    private File fileUpload;
    private String fileUploadContentType;
    private String fileUploadFileName;

    public String execute() throws Exception {
       Configuration conf = new Configuration().configure();
       StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
       SessionFactory factory = conf.buildSessionFactory(builder.build());
       Session session = factory.openSession();

        caratulasPathUp = getServletContext().getInitParameter("fotos-path-up");
        caratulasPathDown = getServletContext().getInitParameter("fotos-path-down");

        OutputStream out = null;
        InputStream filecontent = null;

        String final_caratula = new Date().getTime() + "-" + fileUploadFileName;
        String servidorPath = caratulasPathUp + File.separator + final_caratula;
        String ClientePath = caratulasPathDown + File.separator + final_caratula;
        out = new FileOutputStream(new File(servidorPath));
        filecontent = new FileInputStream(fileUpload);

        // Escribimos el fichero de la caratula
        int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
        }
        out.close();
        pist.setImagen(ClientePath);

            Transaction tx = null;
            try{
              tx=session.beginTransaction();
              session.save(pist);
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

    public tfg.Pistas getPist() {
        return pist;
    }

    public void setPist(tfg.Pistas pist) {
        this.pist = pist;
    }

    public File getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(File fileUpload) {
        this.fileUpload = fileUpload;
    }

    public String getFileUploadContentType() {
        return fileUploadContentType;
    }

    public void setFileUploadContentType(String fileUploadContentType) {
        this.fileUploadContentType = fileUploadContentType;
    }

    public String getFileUploadFileName() {
        return fileUploadFileName;
    }

    public void setFileUploadFileName(String fileUploadFileName) {
        this.fileUploadFileName = fileUploadFileName;
    }
  
}
