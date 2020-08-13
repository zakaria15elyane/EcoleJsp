package Dao;

import ClassBeans.MolelMessage;
import static Database.Connexion.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class DaoMessage {

    public static int MessageAdmin(MolelMessage message) {
        int status = 0;
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("INSERT INTO `messages` (NOM, PRENOM, MESSAGE, ID_UTILISATEUR, OBJET, ROLE) values(?,?,?,?,?,?)");
            ps.setString(1, message.getNom());
            ps.setString(2, message.getPrenom());
            ps.setString(3, message.getMessage());
            ps.setInt(4, message.getId_utilisateur());
            ps.setString(5, message.getObjet() );
            ps.setString(6, message.getRole() );
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
