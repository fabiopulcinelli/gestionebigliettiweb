package it.prova.gestionebigliettiweb.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.gestionebigliettiweb.model.Biglietto;

/**
 * Servlet implementation class PrepareSearchBigliettoServlet
 */
@WebServlet("/PrepareSearchBigliettoServlet")
public class PrepareSearchBigliettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrepareSearchBigliettoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("search_biglietto_attr", new Biglietto());
		request.getRequestDispatcher("/biglietto/search.jsp").forward(request, response);
	}

}
