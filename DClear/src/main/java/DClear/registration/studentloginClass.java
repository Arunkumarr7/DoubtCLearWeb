package DClear.registration;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/studentloginClass")
public class studentloginClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://dclear.c6oihiaxexbs.eu-north-1.rds.amazonaws.com/dclear","arunkumar","Arunr!90085");
			PreparedStatement ps=con.prepareStatement("select * from student_user where email=? and password=?" );
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				session.setAttribute("name",rs.getString("firstname"));
				dispatcher =request.getRequestDispatcher("studentHome.jsp");	
			}
			else
			{
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("studentlogin.jsp");
			}
			dispatcher.forward(request, response);
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}

}
