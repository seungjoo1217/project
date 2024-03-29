package edu.kh.LSJProject.member.controller;

import java.io.IOException;

import edu.kh.LSJProject.member.service.MemberService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/findId")
public class FindIdController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/find/findId.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String inputName = req.getParameter("inputName");
			String inputPw = req.getParameter("inputPw");
			
			System.out.println(inputName);
			System.out.println(inputPw);
			
			MemberService service = new MemberService();
			
			String id = service.findId(inputName, inputPw);
			
			HttpSession session = req.getSession();
			
			String message1 = inputName + "님의 아이디는 [" + id + "] 입니다.";
			
			if(id != null) {
				session.setAttribute("message", message1);
				resp.sendRedirect("/login");
			} else {
				session.setAttribute("message", "아이디를 찾을 수 없습니다.");
				resp.sendRedirect( req.getHeader("referer") );
			}
			
		}catch (Exception e) {
			System.out.println("[아이디찾기 중 오류 발생]");
			e.printStackTrace();
		}
		
	}
}
