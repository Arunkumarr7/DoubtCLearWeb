package DClear.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/tutorRegistrationClass")
public class tutorRegistrationClass extends HttpServlet {
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String estatus=request.getParameter("estatus");
		String coursename=request.getParameter("coursename");
		String cstatus=request.getParameter("cstatus");
		String experience=request.getParameter("experience");
		String language=request.getParameter("language");
		String tclasses=request.getParameter("tclasses");
RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://dclear.c6oihiaxexbs.eu-north-1.rds.amazonaws.com/dclear","arunkumar","Arunr!90085");
			PreparedStatement ps=con.prepareStatement("insert into tutor_user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, country);
			ps.setString(6, state);
			ps.setString(7, password);
			ps.setString(8, gender);
			ps.setString(9, age);
			ps.setString(10, estatus);
			ps.setString(11, coursename);
			ps.setString(12, cstatus);
			ps.setString(13, experience);
			ps.setString(14, language);
			ps.setString(15, tclasses);
			int rowCount=ps.executeUpdate();
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('successfully registerd');");
			out.println("</script>");
			dispatcher =request.getRequestDispatcher("tutorlogin.jsp");
			if(rowCount>0)
			{
				request.setAttribute("status", "success");
				
			}
			else
			{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
