package DClear.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/getTutorDetails")
public class getTutorDetails extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tclass=request.getParameter("class");
		RequestDispatcher dispatcher=null;
		String tclasses=request.getParameter(tclass);
		HttpSession session=request.getSession();
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://dclear.c6oihiaxexbs.eu-north-1.rds.amazonaws.com/dclear","arunkumar","Arunr!90085");
				PreparedStatement ps = con.prepareStatement("select * from tutor_user where tclasses=?");
				ps.setString(1, tclasses);
				ResultSet rs=ps.executeQuery();
				dispatcher =request.getRequestDispatcher("studentHome.jsp");
				int rowCount=0;
				if(rowCount>0)
				{
				while(rs.next())
				{
					session.setAttribute("tname",rs.getString("firstname"));
					session.setAttribute("email",rs.getString("email"));
					session.setAttribute("phone",rs.getString("phone"));
					dispatcher =request.getRequestDispatcher("studentHome.jsp");	
					
					
				}
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
