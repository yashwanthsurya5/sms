package teacher;

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

import student.Student;

@WebServlet(urlPatterns = "/teachreg",loadOnStartup = 0)
public class TeacherRegsiterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long mobile=Long.parseLong(req.getParameter("mobile"));
		String userName=req.getParameter("uname");
		String password=req.getParameter("password");
		
		Teacher th=new Teacher(0, name, email, mobile, userName, password);
		
		et.begin();
		em.merge(th);
		et.commit();
		
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1 id =log>Teacher Registered Successfully.....</h1><body></html>");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		rd.include(req, resp);
	}
}
