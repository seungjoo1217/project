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

@WebServlet("/updateMember")
public class UpdateMemberController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/updateMember.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");
			String inputName = req.getParameter("inputName");
			String inputEmail = req.getParameter("inputEmail");
			String inputAddress = req.getParameter("inputAddress");
			
			String memberNo = req.getParameter("memberNo");
			
			Member member = new Member();
			member.setMemberId(inputId);
			member.setMemberPw(inputPw);
			member.setMemberName(inputName);
			member.setEmail(inputEmail);
			member.setAddress(inputAddress);
			
			MemberService service = new MemberService();
			
			int result = service.update(memberNo, member);
			
			HttpSession session = req.getSession();
			
			if(result > 0) {
				session.setAttribute("message", "수정 성공");
				resp.sendRedirect("/");
				
			}else {
				session.setAttribute("message", "수정 실패");
				resp.sendRedirect( req.getHeader("referer") );
				
			}
			
			
		} catch (Exception e) {
			System.out.println("[개인정보 수정 중 예외발생]");
			e.printStackTrace();
		}
	}
}
