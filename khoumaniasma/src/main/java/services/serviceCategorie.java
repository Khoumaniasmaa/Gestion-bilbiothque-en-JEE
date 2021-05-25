package services;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.daoCategorie;
import models.Categorie;

public class serviceCategorie {
	public static ArrayList<Categorie> listeCategories() throws SQLException, ClassNotFoundException{
		
		
		return ( ArrayList<Categorie>)daoCategorie.listeCategories();
	}
}
