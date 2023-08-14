package DClear.registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/studentFeedback")
public class studentFeedback extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		RequestDispatcher dispatcher=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://dclear.c6oihiaxexbs.eu-north-1.rds.amazonaws.com/dclear","arunkumar","Arunr!90085");
			PreparedStatement ps=con.prepareStatement("insert into student_feedback values(?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, message);
			ps.executeUpdate();
			dispatcher =request.getRequestDispatcher("studentHome.jsp");
			int rowCount=0;
			if(rowCount>0)
			{
				request.setAttribute("status", "success");
				request.setAttribute("fmessage", "thank you we contact to you soon");
				
				
			}
			else
			{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
