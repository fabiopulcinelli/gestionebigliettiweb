package it.prova.gestionebigliettiweb.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.gestionebigliettiweb.model.Biglietto;
import it.prova.gestionebigliettiweb.service.MyServiceFactory;

/**
 * Servlet implementation class ExecuteDeleteBigliettoServlet
 */
@WebServlet("/ExecuteDeleteBigliettoServlet")
public class ExecuteDeleteBigliettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ExecuteDeleteBigliettoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idBiglietto = request.getParameter("idBiglietto");

		Biglietto bigliettoDaEliminare;
		try {
			bigliettoDaEliminare = MyServiceFactory.getBigliettoServiceInstance().caricaSingoloElemento(Long.parseLong(idBiglietto));
			MyServiceFactory.getBigliettoServiceInstance().rimuovi(bigliettoDaEliminare.getId());
			request.setAttribute("listaBigliettiAttribute", MyServiceFactory.getBigliettoServiceInstance().listAll());
			request.setAttribute("successMessage", "Operazione effettuata con successo");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			request.setAttribute("errorMessage", "Attenzione si è verificato un errore.");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			e1.printStackTrace();
			return;
		}

		// andiamo ai risultati
		request.getRequestDispatcher("/biglietto/results.jsp").forward(request, response);
	}

}
