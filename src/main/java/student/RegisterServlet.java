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

@WebServlet(urlPatterns = "/register",loadOnStartup = 0)
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long mobile=Long.parseLong(req.getParameter("mobile"));
		int age=Integer.parseInt(req.getParameter("age"));
		String place=req.getParameter("place");
		
		Student std=new Student(0, name, email, mobile, age, place);
		
		et.begin();
		em.merge(std);
		et.commit();
		
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1 id =log>Student Registered Successfully.....</h1><body></html>");
		RequestDispatcher rd=req.getRequestDispatcher("view.jsp");
		rd.include(req, resp);
	}
}
