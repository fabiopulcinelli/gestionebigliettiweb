package it.prova.gestionebigliettiweb.service;

import it.prova.gestionebigliettiweb.dao.BigliettoDAO;
import it.prova.gestionebigliettiweb.dao.BigliettoDAOImpl;

public class MyServiceFactory {

	// implementiamo il singleton in modo da evitare
	// proliferazione di riferimenti
	private static BigliettoService ARTICOLO_SERVICE_INSTANCE = null;
	private static BigliettoDAO ARTICOLODAO_INSTANCE = null;

	public static BigliettoService getBigliettoServiceInstance() {
		if (ARTICOLO_SERVICE_INSTANCE == null)
			ARTICOLO_SERVICE_INSTANCE = new BigliettoServiceImpl();

		if (ARTICOLODAO_INSTANCE == null)
			ARTICOLODAO_INSTANCE = new BigliettoDAOImpl();

		ARTICOLO_SERVICE_INSTANCE.setBigliettoDao(ARTICOLODAO_INSTANCE);

		return ARTICOLO_SERVICE_INSTANCE;
	}

}
