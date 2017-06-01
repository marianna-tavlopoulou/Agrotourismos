package com.agro.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agro.DAO.DAO;
import com.agro.Model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		request.setCharacterEncoding("UTF-8");
		//Read parameters from the request object
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		RequestDispatcher success = request.getRequestDispatcher("/Agro_userIndex.jsp");//redirect to this page if the user is registered
		RequestDispatcher fail = request.getRequestDispatcher("/Register.jsp");//redirect to the registration page

		DAO logDAO = new DAO();
		try{
			User user = logDAO.authenticateUser(email, password);
			if(user != null){
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				success.forward(request, response);
			}else{
				fail.forward(request, response);
			}
				
		}catch(Exception e){
			e.getMessage();
		}
	}

}
