package Reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;


@WebServlet("/InsertResServlet")
public class InsertResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String inDate = request.getParameter("inDate");
		String outDate = request.getParameter("outDate");
		String room = request.getParameter("room");
		String space = request.getParameter("space");
		String guest = request.getParameter("guest");
		String adult = request.getParameter("adult");
		String children = request.getParameter("children");
		String beds = request.getParameter("beds");
		
		boolean isYes; 
		
		isYes = ReservationDBUtil.insertReservation(userName, email, inDate,  outDate, room,  space,  guest,  adult,  children, beds);
		
		if(isYes==true) {
			RequestDispatcher disp = request.getRequestDispatcher("Success.jsp");
			disp.forward(request, response);
		}else {
			RequestDispatcher disp2 = request.getRequestDispatcher("Unsuccess.jsp");
			disp2.forward(request, response);
		}

	}
}
