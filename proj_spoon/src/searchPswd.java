

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class searchPswd
 */
@WebServlet("/searchPswd")
public class searchPswd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public searchPswd() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("Uname");
		String pswd = request.getParameter("Pass");
		
		 if(username.equals("admin")&&pswd.equals("admin123")){
			 request.setAttribute("name", username);
				request.getRequestDispatcher("adminhome.jsp").forward(request, response); 
		 }
		 else {
		
		RegBean lb = new RegBean();
		lb.setUname(username);
		lb.setPswd(pswd);
		 PrintWriter out=response.getWriter();  
		
		LogDAO log = new LogDAO();
		int i=0;
		
		
		try {
			i = log.getUser(lb);
			
			if(i>0){
				
				request.setAttribute("name", username);
				request.getRequestDispatcher("home2.jsp").forward(request, response); 
            
        }else{  
        	  
             request.getRequestDispatcher("login.html").include(request, response);   
        }  
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		 }
	}
}