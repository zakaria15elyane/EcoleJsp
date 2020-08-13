package Controlle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletAuthentification", urlPatterns = {"/servletAuthentification"})
public class ServletAuthentification extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if (request.getMethod().equals("POST") && path.equals("/index.authentification")) {

            String nomDeUtilisateur = request.getParameter("nomDeUtilisateur").trim();

            String motDePasse = request.getParameter("motDePasse").trim();

            PrintWriter out = response.getWriter();

            out.print(motDePasse);
            out.print(nomDeUtilisateur);

            String requete = Dao.DaoAuthentification.VerificationNomDeUtilisateurEtMotDePasse(nomDeUtilisateur, motDePasse);
            
            if (requete.equals("Administrateur")) {
                String Administrateur = "Administrateur";
                request.getSession().setAttribute("Administrateur", Administrateur);
                response.sendRedirect("EspaceAdmin.jsp");
                
            } else if (requete.equals("Etudiant")) {
                String Administrateur = "Etudiant";
                request.getSession().setAttribute("Etudiant", Administrateur);
                response.sendRedirect("EspaceEtudiant.jsp");

            }else if (requete.equals("Professeur")) {
                String Professeur = "Professeur";
                request.getSession().setAttribute("Professeur", Professeur);
                response.sendRedirect("EspaceProfesseur.jsp");

            } else if (requete.equals("CompteDesactive")) {
                String messageErreur = "Votre compte a été désactivé. Contacter administrateur s'il vous plaît !!! ";
                request.setAttribute("messageErreur", messageErreur);
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

            } else {
                String messageErreur = "Votre identifiant est inconnu ou votre mot de passe est faux.\n" +
                            "Recommencez en corrigeant votre Nom d'utilisateur ou votre mot de passe.";
                request.setAttribute("messageErreur", messageErreur);
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            }

        }

    }

}
