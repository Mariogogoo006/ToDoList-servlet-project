package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.Service;

import dao.Dao;
import dto.Task;
@WebServlet("/edit")
public class edit extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("taskid"));
		Dao dao=new Dao();
		try {
			Task task = dao.findById(id);
			req.setAttribute("task",task);
//			resp.getWriter().print("ID "+task.getTaskid()+" title "+ task.getTasktitle()+" des "+ task.getTaskdescription()+" date "+ task.getTaskduedate()+" status "+task.getTaskstatus()+ " prio "+task.getTaskpriority()+" uid"+task.getUserid() );
			RequestDispatcher dispatcher=req.getRequestDispatcher("editTask.jsp");
			dispatcher.include(req, resp);
		} 
		catch (Exception e) {
		}
		
	}
}
 