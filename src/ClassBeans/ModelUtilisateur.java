package ClassBeans;

public class ModelUtilisateur {
    private int id;
    private String nom;
    private String prenom;
    private String email;
    private String nom_de_utilisateur;
    private String mod_de_passe;
    private int etat;
    private String role;
    private String telephone;

    public ModelUtilisateur() {
    }

    public ModelUtilisateur(int id, String nom, String prenom, String email, String nom_de_utilisateur, String mod_de_passe, int etat, String role, String telephone) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.nom_de_utilisateur = nom_de_utilisateur;
        this.mod_de_passe = mod_de_passe;
        this.etat = etat;
        this.role = role;
        this.telephone = telephone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNom_de_utilisateur() {
        return nom_de_utilisateur;
    }

    public void setNom_de_utilisateur(String nom_de_utilisateur) {
        this.nom_de_utilisateur = nom_de_utilisateur;
    }

    public String getMod_de_passe() {
        return mod_de_passe;
    }

    public void setMod_de_passe(String mod_de_passe) {
        this.mod_de_passe = mod_de_passe;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    
}
