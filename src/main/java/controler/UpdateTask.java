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
import dto.Task;
import dto.User;

@WebServlet("/updatetask")
public class UpdateTask extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			int taskid=Integer.parseInt(req.getParameter("taskid"));
			String tasktitle=req.getParameter("tasktitle");
			String taskdescription=req.getParameter("taskdescription");
			String taskduedate=req.getParameter("taskduedate");
			String taskpriority=(req.getParameter("taskpriority")==null)?req.getParameter("pre-priority"):req.getParameter("taskpriority");
			String taskstatus=req.getParameter("taskstatus");
			int userid=Integer.parseInt(req.getParameter("userid"));
//			resp.getWriter().print("ID "+taskid+" title "+ tasktitle+" des "+ taskdescription+" date "+ taskduedate+" status "+taskstatus+ " prio "+taskpriority+" uid"+userid );
			

			try {

				Dao dao=new Dao();
				Task task =new Task(taskid,tasktitle,taskdescription,taskduedate,taskpriority,taskstatus,userid);
//				resp.getWriter().print("ID "+task.getTaskid()+" title "+ task.getTasktitle()+" des "+ task.getTaskdescription()+" date "+ task.getTaskduedate()+" status "+task.getTaskstatus()+ " prio "+task.getTaskpriority()+" uid"+task.getUserid() );

				int res=dao.UpdateTask(task);
//				
				if(res>0) {
					
					HttpSession session =req.getSession();
					User u=(User)session.getAttribute("user");
					req.setAttribute("tasks", dao.getalltask(u.getUserid()));
					RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
					dispatcher.include(req, resp);
				}
				else {
					HttpSession session =req.getSession();
					User u=(User)session.getAttribute("user");
					req.setAttribute("tasks", dao.getalltask(u.getUserid()));
					RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
					dispatcher.include(req, resp);

				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();

			}  
		}
}
