package Dao;

import static Database.Connexion.getConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoAuthentification {

    public static String VerificationNomDeUtilisateurEtMotDePasse(String username, String password) {
        try {
            Connection connexion = getConnection();
            Statement stmt = connexion.createStatement();
            String requete = "SELECT * FROM utilisateurs WHERE NOM_DE_UTILISATEUR='" + username + "' AND MOT_DE_PASSE='" + password + "' ";
            ResultSet rs = stmt.executeQuery(requete);
            if (rs.next()) {
                int id = rs.getInt("ID");
                String nom = rs.getString("NOM");
                String prenom = rs.getString("PRENOM");
                String email = rs.getString("EMAIL");
                String telephone = rs.getString("TELEPHONE");
                String login = rs.getString("NOM_DE_UTILISATEUR");
                String pass = rs.getString("MOT_DE_PASSE");
                int etat = rs.getInt("ETAT");
                String role = rs.getString("ROLE");
                if (etat == 1) {
                    if (role.equals("Administrateur")) {
                        return "Administrateur";
                    } else if(role.equals("Etudiant")) {
                        return "Etudiant";
                    } else if(role.equals("Professeur")){
                        return "Professeur";
                    }
                } else {
                    System.out.println("CompteDesactive");
                    return "CompteDesactive";
                }
            } else {
                System.out.println("NomDeUtilisateurOuMotDePasseInvalide");
                return "NomDeUtilisateurOuMotDePasseInvalide";
            }
        } catch (SQLException ex) {
            System.out.print("Error Authentification !!");
        }
        return "0";
    }
}
