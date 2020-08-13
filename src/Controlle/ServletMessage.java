package Controlle;
import Dao.DaoMessage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletMessage", urlPatterns = {"/ServletMessage"})
public class ServletMessage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if (request.getMethod().equals("POST") && path.equals("/messageAdmin.message")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            String nom = request.getParameter("nom").trim();
            System.out.println(nom);
            String prenom = request.getParameter("prenom").trim();
            System.out.println(prenom);
            String message = request.getParameter("message").trim();
            String objet = request.getParameter("objet").trim();
            System.out.println(objet);
            System.out.println(message);
            String role = request.getParameter("role").trim();
            System.out.println(role);
            ClassBeans.MolelMessage  msg = new ClassBeans.MolelMessage();
            
            msg.setId_utilisateur(id);
            msg.setNom(nom);
            msg.setPrenom(prenom);
            msg.setObjet(objet);
            msg.setMessage(message);
            msg.setRole(role);
             
            
            DaoMessage ajouteMessageAdmin = new DaoMessage();
            int requete = ajouteMessageAdmin.MessageAdmin(msg);
            if (requete > 0) {
            String messageAdmin = "Votre message à bien été envoyé";
            request.getSession().setAttribute("messageAdmin", messageAdmin);
            response.sendRedirect("informationAdmin.utilisateur?id=" + id);
            }  
        }
    }

}
