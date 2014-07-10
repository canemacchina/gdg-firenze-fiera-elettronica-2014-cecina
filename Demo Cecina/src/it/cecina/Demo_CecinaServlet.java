package it.cecina;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class Demo_CecinaServlet extends HttpServlet {
	private static final String COMMENTO_PROPERTY = "commento";
	private static final String COMMENTI_KIND = "commenti";

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");

		String email = UserServiceFactory.getUserService().getCurrentUser()
				.getEmail();

		resp.getWriter().println("Ciao sei autenticato come " + email);

		resp.getWriter().println("------------");

		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

		PreparedQuery pq = ds.prepare(new Query(COMMENTI_KIND));

		Iterable<Entity> commenti = pq.asIterable();

		for (Entity commento : commenti) {
			resp.getWriter().println(
					"Commento con ID " + commento.getKey().getId()
							+ ", con valore: "
							+ commento.getProperty(COMMENTO_PROPERTY) + " - "
							+ commento.getProperty("utente"));
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String descrizione = req.getParameter("descrizione");

		System.out.println("Descrizione: " + descrizione);

		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

		Entity entity = new Entity(COMMENTI_KIND);

		entity.setProperty(COMMENTO_PROPERTY, descrizione);

		entity.setProperty("utente", UserServiceFactory.getUserService()
				.getCurrentUser().getEmail());

		ds.put(entity);

		resp.sendRedirect("/demo_cecina");
	}
}
