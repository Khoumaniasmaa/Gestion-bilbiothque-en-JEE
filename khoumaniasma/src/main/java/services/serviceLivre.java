package services;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.daoLivre;
import models.Livre;

public class serviceLivre {
	public static ArrayList<Livre> listeLivres() throws SQLException, ClassNotFoundException{
	
	
	return ( ArrayList<Livre>)daoLivre.listeLivres();
}
	public static boolean AjouterLivre(Livre l) throws ClassNotFoundException, SQLException {
		boolean exist = daoLivre.LivreExiste(l.getIsbn());
		if(exist) {
			return false;
		}else {
			int res = daoLivre.AjouterLivre(l);
			return res == 1;

	}
}}

