package controler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.Task;

public class test {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
		PreparedStatement pst=con.prepareStatement("update task set tasktitle=?,taskdescription=?,taskpriority=?,taskduedate=?,taskstatus=? where taskid=?");
		pst.setString(1, "title");
		pst.setString(2,"dess");
		pst.setString(3, "pri");
		pst.setString(4,"date");
		pst.setString(5, "stst" );
		pst.setInt(6, 7);
		int res=pst.executeUpdate()+1;
		System.out.println("rest"+res);
	}

}
