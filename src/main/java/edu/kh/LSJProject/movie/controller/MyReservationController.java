package edu.kh.LSJProject.movie.controller;

import java.io.IOException;
import java.util.List;

import edu.kh.LSJProject.member.dto.Member;
import edu.kh.LSJProject.movie.dto.Movie;
import edu.kh.LSJProject.movie.model.service.MovieService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/myReservation")
public class MyReservationController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			MovieService service = new MovieService();
			
			if(session.getAttribute("loginMember") == null) {
				session.setAttribute("message", "로그인이 필요한 서비스입니다");
				session.invalidate();
				resp.sendRedirect("/login");
			}
			
			String seat = req.getParameter("seatNumber");
			
			Movie movie = (Movie) session.getAttribute("movie");
			Member member = (Member) session.getAttribute("loginMember");
			
			movie.setSeat(seat);
			
			session.setAttribute("movie", movie);
			
			int result = service.insert(movie, member);
			
			if(result > 0) {
				List<Movie> movieList = service.selectAll(member.getMemberNo());
				session.setAttribute("movieList", movieList);
				req.getRequestDispatcher("/WEB-INF/views/myReservation.jsp").forward(req, resp);
			} else {
				resp.sendRedirect( req.getHeader("referer") );
			}
			
		}catch (Exception e) {
			System.out.println("[예매 중 오류발생]");
			e.printStackTrace();
		}
	}
}
