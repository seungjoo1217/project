package edu.kh.LSJProject.movie.model.service;

import java.sql.Connection;
import java.util.List;

import static edu.kh.LSJProject.common.JDBCTemplate.*;

import edu.kh.LSJProject.member.dto.Member;
import edu.kh.LSJProject.movie.dto.Movie;
import edu.kh.LSJProject.movie.model.dao.MovieDAO;

public class MovieService {
	MovieDAO dao = new MovieDAO();
	
	public List<Movie> selectAll(int memberNo) throws Exception{
		
		Connection conn = getConnection();
		
		List<Movie> todoList = dao.selectAll(conn, memberNo);
		
		close(conn);
		
		return todoList;
	}

	public int insert(Movie movie, Member member) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.insert(conn, movie, member);
		
		if(result > 0) commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}


}
