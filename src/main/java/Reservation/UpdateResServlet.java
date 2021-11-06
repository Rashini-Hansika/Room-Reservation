package Reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateResServlet")
public class UpdateResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String inDate = request.getParameter("inDate");
		String outDate = request.getParameter("outDate");
		String room= request.getParameter("room");
		String space = request.getParameter("space");
		String guest = request.getParameter("guest");
		String adult = request.getParameter("adult");
		String children = request.getParameter("children");
		String beds = request.getParameter("beds");
		
		boolean isYes;
		
		isYes = ReservationDBUtil.updateReservation(userName, email, inDate, outDate, room, space, guest, adult, children, beds);
		
		if(isYes == true) {
			List<Reservation> cusDetails = ReservationDBUtil.getReservationDetails(userName);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
		else {
			List<Reservation> cusDetails = ReservationDBUtil.getReservationDetails(userName);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
	}

}
