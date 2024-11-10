package student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete",loadOnStartup = 0)
public class DeleteServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		int id=Integer.parseInt(req.getParameter("id"));
		Student std=em.find(Student.class, id);
		et.begin();
		em.remove(std);
		et.commit();
		
		PrintWriter pw=resp.getWriter();
		RequestDispatcher rd=req.getRequestDispatcher("view.jsp");
		rd.forward(req, resp);
	}
}
