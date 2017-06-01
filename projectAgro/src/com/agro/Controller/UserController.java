package com.agro.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.agro.DAO.DAO;
import com.agro.Model.User;

/**
 * Servlet implementation class searchController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		// TODO Auto-generated method stub
  		doPost(request, response);
  	}

  	/**
  	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  	 */
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		// TODO Auto-generated method stub
  		/* 
		 * In case user typed surname in Greek (or other language), we override the name of the character encoding used in the body of this request.
		 * Because, If a character encoding is not specified, the Servlet specification requires that an encoding of ISO-8859-1 is used.
		 * It method must be called prior to reading request parameters. Otherwise, it has no effect.  
		 */
		request.setCharacterEncoding("UTF-8");

  		/*
		 * Read surname parameter from the request object. 
		 */
  		String userName = request.getParameter("name");
  		String userSurname = request.getParameter("surname");
  		String userEmail = request.getParameter("email");
  		String userPass = request.getParameter("password");
  		String userGender = request.getParameter("gender");
  		Integer bday = Integer.parseInt(request.getParameter("day"));
  		Integer bmonth = Integer.parseInt(request.getParameter("month"));
  		Integer byear = Integer.parseInt(request.getParameter("year"));
  		
		
  		
  		//LocalDate bdate = LocalDate.now( ZoneId.of( "Europe/Greece" ) );     // Use proper "continent/region" time zone names; never use 3-4 letter codes like "EST" or "IST".
  		LocalDate bdate = LocalDate.of(byear, bmonth, bday);
  		java.sql.Date birth_date = java.sql.Date.valueOf(bdate);
  		
  		
  		//response.getWriter().append(request.getParameter("day")+ "<br />");
		RequestDispatcher register = request.getRequestDispatcher("/Agro_userIndex.jsp");
		
		if(userPass.length() < 4 || bday >31 ||bday <1 || bmonth >12 || bmonth< 1 || byear < 1920){
			request.setAttribute("errormessage", "You inserted invalid data");
			register.forward(request, response);
		}else{
			
			try {
				DAO userDAO = new DAO(); 
				User user = new User(userName, userSurname, userEmail, userPass, userGender, birth_date);
				userDAO.userSignup(user);
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				
				request.setAttribute("message", "Your registration has been completed successfully!");
				register.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.setAttribute("message", "A problem occured with your registration !");
				PrintWriter out = new PrintWriter(response.getWriter());
				out.println("<h2>A problem occured with your registration. Try again!</h2>");

			}
		}
  		

  		 
  	}
 
}

