package student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teacher.Teacher;

@WebServlet(urlPatterns = "/login",loadOnStartup = 0)
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
		EntityTransaction et=em.getTransaction();
		Query q = em.createQuery("select t from Teacher t where t.userName=:uname and t.password=:pass");
		q.setParameter("uname", username);
		q.setParameter("pass", password);
		List<Teacher> th=q.getResultList();
		if(th.size()!=0)
		{
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h1 id =log>Logged In Successfully.....</h1><body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			rd.include(req, resp);
		}
		else
		{
				PrintWriter pw=resp.getWriter();
				pw.write("<html><body><h1 id =log>Invalid Credentials.....</h1><body></html>");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.include(req, resp);
		}
	}
}
