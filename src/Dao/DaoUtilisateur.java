package Dao;

import static Database.Connexion.getConnection;
import ClassBeans.ModelUtilisateur;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoUtilisateur {

    public ArrayList<ModelUtilisateur> getAllUsersAdmin() throws SQLException {
        ArrayList<ModelUtilisateur> utilisateurAdmin = new ArrayList<ModelUtilisateur>();
        Connection connexion = getConnection();
        Statement stmt = connexion.createStatement();
        ResultSet resutlSet = stmt.executeQuery("SELECT * FROM `utilisateurs` WHERE `ROLE` = 'Administrateur'");
        while (resutlSet.next()) {
            ModelUtilisateur utilisateur = new ModelUtilisateur();
            utilisateur.setId(resutlSet.getInt("id"));
            utilisateur.setNom(resutlSet.getString("nom"));
            utilisateur.setPrenom(resutlSet.getString("prenom"));
            utilisateur.setEmail(resutlSet.getString("email"));
            utilisateur.setRole(resutlSet.getString("role"));
            utilisateur.setTelephone(resutlSet.getString("telephone"));
            utilisateur.setEtat(resutlSet.getInt("etat"));
            utilisateurAdmin.add(utilisateur);
        }
        return utilisateurAdmin;
    }

    public void SupprimerUtilisateurAdmin(int id) {
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("delete from utilisateurs where ID=? ");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public static int AjouteUtilisateurAdmin(ModelUtilisateur utilisateur) {
        int status = 0;
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("insert into utilisateurs(NOM, PRENOM, EMAIL, TELEPHONE, NOM_DE_UTILISATEUR, MOT_DE_PASSE,ETAT,ROLE) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, utilisateur.getNom());
            ps.setString(2, utilisateur.getPrenom());
            ps.setString(3, utilisateur.getEmail());
            ps.setString(4, utilisateur.getTelephone());
            ps.setString(5, utilisateur.getNom_de_utilisateur());
            ps.setString(6, utilisateur.getMod_de_passe());
            ps.setInt(7, 1);
            ps.setString(8, utilisateur.getRole());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public ModelUtilisateur getUtilisateurAdminById(int id) throws SQLException {
        Connection connexion = getConnection();
        ModelUtilisateur utilisateur = null;
        try {
            PreparedStatement ps = connexion.prepareStatement("SELECT * FROM `utilisateurs` WHERE ID = ?");
            ps.setInt(1, id);
            ResultSet res = ps.executeQuery();
            if (res.next()) {
                utilisateur = new ModelUtilisateur();
                utilisateur.setId(res.getInt("id"));
                utilisateur.setNom(res.getString("nom"));
                utilisateur.setPrenom(res.getString("prenom"));
                utilisateur.setEmail(res.getString("email"));
                utilisateur.setTelephone(res.getString("telephone"));
                utilisateur.setRole(res.getString("role"));
                utilisateur.setEtat(res.getInt("etat"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return utilisateur;
    }

    public ModelUtilisateur UpdateUtilisateurAdmin(ModelUtilisateur  utilisateur) {
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("UPDATE utilisateurs SET NOM=?, PRENOM=?, EMAIL=?, TELEPHONE=? WHERE ID=?");
            ps.setString(1, utilisateur.getNom());
            ps.setString(2, utilisateur.getPrenom());
            ps.setString(3, utilisateur.getEmail());
            ps.setString(4, utilisateur.getTelephone());
            ps.setInt(5, utilisateur.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("");
        }
        return utilisateur;

    }
    public ModelUtilisateur UpdateMotDePasseAdmin(ModelUtilisateur  utilisateur) {
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("UPDATE utilisateurs SET MOT_DE_PASSE=? WHERE ID=?");
            ps.setString(1, utilisateur.getMod_de_passe());
            ps.setInt(2, utilisateur.getId());           
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("");
        }return utilisateur;
         
    }
    public ModelUtilisateur UpdateNomDeUtilisateurAdmin(ModelUtilisateur  utilisateur) {
        try {
            Connection connexion = getConnection();
            PreparedStatement ps = connexion.prepareStatement("UPDATE utilisateurs SET NOM_DE_UTILISATEUR=? WHERE ID=?");
            ps.setString(1, utilisateur.getNom_de_utilisateur());
            ps.setInt(2, utilisateur.getId());           
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("");
        }return utilisateur;
         
    }
        public ArrayList<ModelUtilisateur> getUtilisateurAdminParMc(String recherche) throws SQLException {
        ArrayList<ModelUtilisateur> utilisateurs = new ArrayList<ModelUtilisateur>();

        Connection connexion = getConnection();
        PreparedStatement ps = connexion.prepareStatement("SELECT * FROM `utilisateurs`  WHERE `ROLE` = 'Administrateur' AND  NOM LIKE ? ");
        ps.setString(1, recherche);
        ResultSet res = ps.executeQuery();
        while (res.next()) {
            ModelUtilisateur utilisateur = new ModelUtilisateur();
            utilisateur.setId(res.getInt("id"));
            utilisateur.setNom(res.getString("nom"));
            utilisateur.setPrenom(res.getString("prenom"));
            utilisateur.setEmail(res.getString("email"));
            utilisateur.setRole(res.getString("role"));
            utilisateur.setTelephone(res.getString("telephone"));
            utilisateur.setEtat(res.getInt("etat"));
            utilisateurs.add(utilisateur);
        }
        return utilisateurs;

    }

 
}
