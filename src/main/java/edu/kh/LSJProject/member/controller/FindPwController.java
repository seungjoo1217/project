package edu.kh.LSJProject.member.controller;

import java.io.IOException;

import edu.kh.LSJProject.member.service.MemberService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/findPw")
public class FindPwController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/find/findPw.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String inputName = req.getParameter("inputName");
			String inputId = req.getParameter("inputId");
			
			MemberService service = new MemberService();
			
			String Pw = service.findPw(inputName, inputId);
			
			HttpSession session = req.getSession();
			
			String message1 = inputName + "님의 아이디는 [" + Pw + "] 입니다.";
			
			if(Pw != null) {
				session.setAttribute("message", message1);
				resp.sendRedirect("/login");
			} else {
				session.setAttribute("message", "비밀번호를 찾을 수 없습니다.");
				resp.sendRedirect( req.getHeader("referer") );
			}
			
		}catch (Exception e) {
			System.out.println("[비밀번호찾기 중 오류 발생]");
			e.printStackTrace();
		}
	}
}
