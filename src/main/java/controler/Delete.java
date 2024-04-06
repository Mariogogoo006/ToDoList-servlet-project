package controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.User;

@WebServlet("/delete")

public class Delete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int taskid=Integer.parseInt(req.getParameter("taskid"));
		
		Dao dao =new Dao();                                                                                                                       
		{
			try {
				 
				dao.deleteTask(taskid);
				
				HttpSession session =req.getSession();
				User u=(User)session.getAttribute("user");		
				req.setAttribute("tasks", dao.getalltask(u.getUserid()));
				RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
				dispatcher.include(req, resp);
			}
			catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			
		}  
		
	}
}
