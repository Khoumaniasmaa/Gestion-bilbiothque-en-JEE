package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Personne;
import services.servicePersonne;


@WebServlet("/inscription")
public class inscription extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/inscription.jsp").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean res = false;
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Personne p = new Personne(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("email"), request.getParameter("mdp"), null);
		 try {
			res = servicePersonne.AjouterPersonne(p);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if(res) {
			Personne per = (Personne)session.getAttribute("personne");
			if(per==null) {
				response.sendRedirect("http://localhost:8081/khoumaniasma/authentification.jsp");
			}else {
				response.sendRedirect("http://localhost:8081/khoumaniasma/Inscription.jsp");
			}
		}else {
			out.print("Votre inscription a été echoué");
		}
	}

}