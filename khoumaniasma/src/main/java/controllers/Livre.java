package controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Categorie;
import models.Personne;
import services.serviceLivre;

/**
 * Servlet implementation class Livre
 */
@WebServlet("/Livre")
public class Livre extends HttpServlet {
    public Livre(int parseInt, String parameter, String parameter2, String parameter3, int parseInt2,
			Categorie categorie, Personne personne) {
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/admin.jsp").include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean res = false;
		PrintWriter out = response.getWriter();
		Livre  L = new Livre(Integer.parseInt(request.getParameter("isbn")),request.getParameter("titre"), request.getParameter("genre"),request.getParameter("description"),Integer.parseInt(request.getParameter("annee_edition")),new Categorie (0,request.getParameter("CategorieNom"),null,null),new Personne(0,request.getParameter("auteurNom"),null,null,null,null));
		
		
		if(res) {
			
				out.print("votre livre a été bien ajouté");
		}else {
			out.print("Votre livre a été echoué");
		}
	}

	}

