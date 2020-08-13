package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

 
public class Connexion {
	public static Connection getConnection() throws SQLException{ 
		Connection connexion=null;  
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/scc","root","");
                        System.out.println("vous êtes bien connecté");
		} catch (Exception e) {
			connexion.close();
			System.out.println("problème de connexion à la base de données");
		}	
		return connexion;  
	}		
}

