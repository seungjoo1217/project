package edu.kh.LSJProject.member.controller;

import java.io.IOException;

import edu.kh.LSJProject.member.service.MemberService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteMember")
public class DeleteMemberController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			MemberService service = new MemberService();
			
			String memberNo = req.getParameter("memberNo");
			
			int result = service.deleteMember(memberNo);
			
			req.getRequestDispatcher("WEB-INF/views/delete.jsp").forward(req, resp);
			
			if(result > 0) {
				session.setAttribute("message", "탈퇴 성공");
				session.invalidate();
				resp.sendRedirect("/");
			} else {
				session.setAttribute("message", "탈퇴 실패");
				String referer = req.getHeader("referer");
				resp.sendRedirect(referer);
			}
			
			
		} catch(Exception e) {
			System.out.println("[탈퇴 중 오류발생]");
			e.printStackTrace();
		}
	}
}
