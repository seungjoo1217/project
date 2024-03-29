package edu.kh.LSJProject.member.controller;

import java.io.IOException;

import edu.kh.LSJProject.member.dto.Member;
import edu.kh.LSJProject.member.service.MemberService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signup")
public class SignupController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		session.invalidate();
		
		req.getRequestDispatcher("/WEB-INF/views/signup.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");
			String inputName = req.getParameter("inputName");
			String inputEmail = req.getParameter("inputEmail");
			String inputAddress = req.getParameter("inputAddress");
			
			Member member = new Member();
			member.setMemberId(inputId);
			member.setMemberPw(inputPw);
			member.setMemberName(inputName);
			member.setEmail(inputEmail);
			member.setAddress(inputAddress);
			
			MemberService service = new MemberService();
			
			int result = service.signup(member);
			
			HttpSession session = req.getSession();
			
			if(result > 0) {
				session.setAttribute("message", "회원가입 성공");
				resp.sendRedirect("/login");
				
			}else {
				session.setAttribute("message", "회원가입 실패");
				resp.sendRedirect( req.getHeader("referer") );
				
			}
			
			
		} catch (Exception e) {
			System.out.println("[회원가입 중 예외발생]");
			e.printStackTrace();
		}
	}
}
