package models;
import java.util.ArrayList;

public class Categorie {
	
	private int id;
	private String nom;
	private String description;
	private ArrayList<Livre> livres;
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Categorie(int id, String nom, String description, ArrayList<Livre> livres) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
		this.livres = livres;
	}
	public Categorie(String nom, String description, ArrayList<Livre> livres) {
		super();
		this.nom = nom;
		this.description = description;
		this.livres = livres;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public ArrayList<Livre> getLivres() {
		return livres;
	}
	public void setLivres(ArrayList<Livre> livres) {
		this.livres = livres;
	}
	@Override
	public String toString() {
		return "Categorie [id=" + id + ", nom=" + nom + ", description=" + description + ", livres=" + livres + "]";
	}
	
	
	

}