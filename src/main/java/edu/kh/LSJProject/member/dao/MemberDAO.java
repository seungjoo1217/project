package edu.kh.LSJProject.member.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import static edu.kh.LSJProject.common.JDBCTemplate.*;

import edu.kh.LSJProject.member.dto.Member;
import oracle.net.aso.m;

public class MemberDAO {
	
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public MemberDAO() {
		try {
			prop = new Properties();
			
			String filepath
				= MemberDAO.class.getResource("/edu/kh/LSJProject/sql/member-sql.xml").getPath();
			
			prop.loadFromXML( new FileInputStream(filepath) );
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Member login(Connection conn, String inputId, String inputPw) throws Exception{
		Member loginMember = null;
		
		try {
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputId);
			pstmt.setString(2, inputPw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				loginMember = new Member();
				loginMember.setMemberNo(rs.getInt(1));
				loginMember.setMemberId(rs.getString(2));
				loginMember.setMemberName(rs.getString(3));
				loginMember.setEmail(rs.getString(4));
				loginMember.setAddress(rs.getString(5));
				loginMember.setEnrollDate(rs.getString(6));
				
			}
		} finally {
			close(rs);
			close(pstmt);
		}
		

		return loginMember;
	}

	public int signup(Connection conn, Member member) throws Exception{
		int result = 0;
		
		try {
			String sql = prop.getProperty("signup");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getAddress());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public String findId(Connection conn, String inputName, String inputPw) throws Exception{
		String id = null;
		try {
			String sql = prop.getProperty("findId");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputName);
			pstmt.setString(2, inputPw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("MEMBER_ID");

			}
		} finally {
			close(rs);
			close(pstmt);
		}
		return id;
	}

	public String findPw(Connection conn, String inputName, String inputId) throws Exception{
		String Pw = null;
		try {
			String sql = prop.getProperty("findPw");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputName);
			pstmt.setString(2, inputId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Pw = rs.getString("MEMBER_PW");

			}
		} finally {
			close(rs);
			close(pstmt);
		}
		return Pw;
	}

	public int update(Connection conn, String memberNo, Member member) throws Exception{
		int result = 0;
		
		try {
			String sql = prop.getProperty("update");
			System.out.println(memberNo);
			System.out.println(member);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, memberNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMember(Connection conn, String memberNo) throws Exception{
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteMember");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberNo);
			
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
