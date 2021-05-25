package services;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.daoPersonne;
import models.Personne;

public class servicePersonne {
	
	public static boolean AjouterPersonne(Personne p) throws ClassNotFoundException, SQLException {
		boolean exist = daoPersonne.PersonneExiste(p.getEmail());
		if(exist) {
			return false;
		}else {
			int res = daoPersonne.AjouterEtudiant(p);
			return res == 1;
		}
	}
	
	public static Personne Authentification(String login,String password) throws ClassNotFoundException, SQLException {
		return daoPersonne.authentification(login, password);
	}
	public static ArrayList<Personne> listeAuteurs() throws ClassNotFoundException,SQLException{ 
		return daoPersonne.listeAuteurs();
	}
	
}