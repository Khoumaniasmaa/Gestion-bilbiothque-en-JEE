 package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import models.Personne;
import models.Role;

public class daoPersonne {
	
	/*public static int inscription(Personne p) throws ClassNotFoundException, SQLException {
			String role=null;
			if(p.getRole().equals(Role.ADMIN)) {
				role="admin";
			}else if(p.getRole().equals(Role.ETUDIANT)) {
				role="etudiant";
			}else {
				role="auteur";
			}
			Connexion.Connect();
			int res = Connexion.Maj("INSERT INTO `personne`(`nom`, `prenom`, `email`, `mdp`, `role`) VALUES ('"+p.getNom()+"','"+p.getPrenom()+"','"+p.getEmail()+"','"+p.getMdp()+"','"+role+"')");
			Connexion.Disconnect();
			return res;
	}*/
	
	public static int AjouterEtudiant(Personne p) throws ClassNotFoundException, SQLException {
		Connexion.Connect();
		int res = Connexion.Maj("INSERT INTO `personne`(`nom`, `prenom`, `email`, `mdp`, `role`) VALUES ('"+p.getNom()+"','"+p.getPrenom()+"','"+p.getEmail()+"','"+p.getMdp()+"','etudiant')");
		Connexion.Disconnect();
		return res;
	}
		
	public static boolean PersonneExiste(String email) throws ClassNotFoundException, SQLException {
		boolean exist = false ;
		Connexion.Connect();
		ResultSet res = Connexion.Select("select * from personne where email='"+email+"'");
		if(res.next()) {
			exist=true;
		}
		Connexion.Disconnect();
		return exist;
	}
	public static Personne PersonneParId(int id) throws ClassNotFoundException, SQLException {
		Personne p=null;
		Connexion.Connect();
		ResultSet res = Connexion.Select("select * from personne where id="+id);
		if(res.next()) {
			p=new Personne(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), null);
			if(res.getString(6).equals("etudiant")) {
				p.setRole(Role.ETUDIANT);
			} else if(res.getString(6).equals("admin")) {
				p.setRole(Role.ADMIN);
			}else {
				p.setRole(Role.AUTEUR);
			}
		}
		Connexion.Disconnect();
		return p;
	}
	public static ArrayList<Personne> listeAuteurs() throws SQLException, ClassNotFoundException{
		ArrayList<Personne> personnes = new ArrayList<Personne>();
		Connexion.Connect();
		ResultSet res = Connexion.Select("select * from personne where role='auteur'");
		while(res.next()) {
		Personne p =new Personne(res.getInt(1), res.getString(2),res.getString(3),res.getString(4),res.getString(5), null);
		personnes.add(p);
		}
		Connexion.Disconnect();
		return personnes;
		}
	public static int getICatPerByName(String name) throws SQLException, ClassNotFoundException
	{
	int idcat=0;
	Connexion.Connect();
	ResultSet res = Connexion.Select("select * from personne where nom='"+name+"'");
	if(res.next()) {
	idcat=res.getInt(1);
	}
	Connexion.Disconnect();
	return idcat;
	}
	public static Personne authentification(String login,String password) throws SQLException, ClassNotFoundException {
		ResultSet res = null;
		Personne p=null;
		Connexion.Connect();
		res = Connexion.Select("select * from personne where email='"+login+"' and mdp='"+password+"'");
		if(res.next()) {
			p=new Personne(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), null);
			if(res.getString(6).equals("etudiant")) {
				p.setRole(Role.ETUDIANT);
			} else if(res.getString(6).equals("admin")) {
				p.setRole(Role.ADMIN);
			}else {
				p.setRole(Role.AUTEUR);
			}
		}
		Connexion.Disconnect();
		return p;
	}
}