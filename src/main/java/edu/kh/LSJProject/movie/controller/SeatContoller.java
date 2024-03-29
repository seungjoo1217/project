package edu.kh.LSJProject.movie.controller;

import java.io.IOException;

import edu.kh.LSJProject.movie.dto.Movie;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/seat")
public class SeatContoller extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			
			String inputDate = req.getParameter("inputDate");
			String inputMovie = req.getParameter("inputMovie");
			String inputLocation = req.getParameter("inputLc");
			String inputTime = req.getParameter("inputTime");
			
			Movie movie = new Movie();
			
			movie.setDate(inputDate);
			movie.setMovieTitle(inputMovie);
			movie.setLocation(inputLocation);
			movie.setTime(inputTime);
			
			session.setAttribute("movie", movie);
			
			req.getRequestDispatcher("/WEB-INF/views/seat.jsp").forward(req, resp);
			
		}catch (Exception e) {
			System.out.println("[예매 중 오류 발생]");
		}
	}
}
