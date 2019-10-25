package jspassessment;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import jspassessment.Modal;
import jspassessment.ConnectionManager;

/**
 * Servlet implementation class Ser
 */
@WebServlet("/ser")
public class Ser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MongoClient mc = ConnectionManager.getMongo();
	MongoDatabase db = ConnectionManager.getDb("Advertisement");
	MongoCollection<Document> details = db.getCollection("Details");

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Ser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		MongoCursor<Document> cursor;

		cursor = details.find().iterator();

		List<Modal> dataList = new LinkedList<>();

		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Modal data = new Modal(d.getInteger("id"), d.getString("title"), d.getString("city"),
					d.getInteger("postal"), d.getString("description"), d.getString("email"));
			dataList.add(data);
		}
		// ConnectionManager.close();

		request.setAttribute("list", dataList);
		request.getRequestDispatcher("details.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int c = 0;
		int c1 = 0;
		int id, idi = 0;
		MongoCursor<Document> cursor = details.find().iterator();
		while (cursor.hasNext()) {
			Document doc = (Document) cursor.next();
			idi = doc.getInteger("Advertisement id");
			c++;
		}
		if (c != 0) {
			id = idi;
		} else {
			id = 100;
		}
		String tit = request.getParameter("title");
		String city = request.getParameter("city");
		int postal = Integer.parseInt(request.getParameter("postal"));
		String desc = request.getParameter("description");
		String email = request.getParameter("email");
		Document document = new Document("Advertisement ID", id + 1).append("title", tit).append("city", city)
				.append("postal", postal).append("description", desc).append("email", email);
		details.insertOne(document);
		c1++;
		request.setAttribute("counter", c1);
		request.getRequestDispatcher("forms.jsp").forward(request, response);
		ConnectionManager.close();
	}
}
