

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegInsert
 */
@WebServlet("/RegInsert")
public class RegInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegInsert() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Uname = request.getParameter("Uname");
		String email = request.getParameter("email");
		String pswd = request.getParameter("Pass");
		
		RegBean rb = new RegBean();
		rb.setUname(Uname);
		
		rb.setEmail(email);
		rb.setPswd(pswd);
		
		RegDAO dao = new RegDAO();
		try {
			int i = dao.reg_insert(rb);
			if(i > 0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("login.html");
				request.setAttribute("RegisterBean",rb);
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("error.html");
				rd.include(request, response);
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