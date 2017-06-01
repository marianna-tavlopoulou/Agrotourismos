package com.agro.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.agro.DAO.DAO;
import com.agro.Model.Hotel;

/**
 * Servlet implementation class HotelController
 */
@WebServlet("/HotelController")
public class HotelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher hotels = request.getRequestDispatcher("HotelByRegion.jsp");
		RequestDispatcher error =request.getRequestDispatcher("ErrorPage.jsp");
		DAO hotelDAO = new DAO();
		String name = request.getParameter("name");
		ArrayList<Hotel> hotelList = new ArrayList<Hotel>();
		
		try{
			hotelList = hotelDAO.getHotelsByCity(name);
			request.setAttribute("hotelList", hotelList);
			request.setAttribute("name", name);
			hotels.forward(request, response);
			
		}catch(Exception e){
			
			e.printStackTrace();
			
			//request.setAttribute("message", e.getMessage());
			//error.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
