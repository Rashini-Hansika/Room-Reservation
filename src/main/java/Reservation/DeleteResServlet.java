package Reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteResServlet")
public class DeleteResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		
		boolean isYes;
		
		isYes = ReservationDBUtil.deleteReservation(userName);
		
		if(isYes==true) {
			RequestDispatcher dispatcher= request.getRequestDispatcher("Reservation.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Reservation> resDetail = ReservationDBUtil.getReservationDetails(userName);
			request.setAttribute("resDetail", resDetail);
			
			RequestDispatcher dispatcher= request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
	}

}
