package models;

public class Livre {
	private int id;
	private int isbn;
	private String titre;
	private String genre;
	private String description;
	private int annee_edition;
	private Categorie categorie;
	private Personne auteur;
	public Livre() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Livre(int id, int isbn, String titre, String genre, String description, int annee_edition,
			Categorie categorie, Personne auteur) {
		super();
		this.id = id;
		this.isbn = isbn;
		this.titre = titre;
		this.genre = genre;
		this.description = description;
		this.annee_edition = annee_edition;
		this.categorie = categorie;
		this.auteur = auteur;
	}
	public Livre(int isbn, String titre, String genre, String description, int annee_edition, Categorie categorie,
			Personne auteur) {
		super();
		this.isbn = isbn;
		this.titre = titre;
		this.genre = genre;
		this.description = description;
		this.annee_edition = annee_edition;
		this.categorie = categorie;
		this.auteur = auteur;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAnnee_edition() {
		return annee_edition;
	}
	public void setAnnee_edition(int annee_edition) {
		this.annee_edition = annee_edition;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	public Personne getAuteur() {
		return auteur;
	}
	public void setAuteur(Personne auteur) {
		this.auteur = auteur;
	}
	@Override
	public String toString() {
		return "Livre [id=" + id + ", isbn=" + isbn + ", titre=" + titre + ", genre=" + genre + ", description="
				+ description + ", annee_edition=" + annee_edition + ", categorie=" + categorie + ", auteur=" + auteur
				+ "]";
	}
	
	
	

}