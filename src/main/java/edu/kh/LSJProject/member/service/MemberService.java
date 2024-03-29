package edu.kh.LSJProject.member.service;

import java.sql.Connection;

import static edu.kh.LSJProject.common.JDBCTemplate.*;
import edu.kh.LSJProject.member.dao.MemberDAO;
import edu.kh.LSJProject.member.dto.Member;

public class MemberService {
	
	private MemberDAO dao = new MemberDAO();

	public Member login(String inputId, String inputPw) throws Exception{
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, inputId, inputPw);
		
		close(conn);
		
		return loginMember;
	}

	public int signup(Member member) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.signup(conn, member);
		
		if(result > 0) commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public String findId(String inputName, String inputPw) throws Exception{
		
		Connection conn = getConnection();
		
		String id = dao.findId(conn, inputName, inputPw);
		
		close(conn);
		
		return id;
	}

	public String findPw(String inputName, String inputId) throws Exception {
		Connection conn = getConnection();
		
		String Pw = dao.findPw(conn, inputName, inputId);
		
		close(conn);
		
		return Pw;
	}

	public int update(String memberNo, Member member) throws Exception{
		Connection conn = getConnection();
		
		int result = dao.update(conn, memberNo, member);
		
		if(result > 0) commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int deleteMember(String memberNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.deleteMember(conn, memberNo);
		
		if(result > 0) commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

}
