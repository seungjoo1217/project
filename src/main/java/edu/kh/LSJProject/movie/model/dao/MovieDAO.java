package edu.kh.LSJProject.movie.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static edu.kh.LSJProject.common.JDBCTemplate.*;

import edu.kh.LSJProject.member.dao.MemberDAO;
import edu.kh.LSJProject.member.dto.Member;
import edu.kh.LSJProject.movie.dto.Movie;

public class MovieDAO {
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public MovieDAO() {
		try {
			prop = new Properties();
			
			String filepath
				= MemberDAO.class.getResource("/edu/kh/LSJProject/sql/movie-sql.xml").getPath();
			
			prop.loadFromXML( new FileInputStream(filepath) );
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Movie> selectAll(Connection conn, int memberNo) throws Exception{
		
		List<Movie> movieList = new ArrayList<Movie>();
		
		try {
			String sql = prop.getProperty("selectAll");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				Movie movie = new Movie();
				
				movie.setMovieTitle(rs.getString(1));
				movie.setDate(rs.getString(2));
				movie.setLocation(rs.getString(3));
				movie.setTime(rs.getString(4));
				movie.setSeat(rs.getString(5));
				
				movieList.add(movie);
			}
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return movieList;
	}

	public int insert(Connection conn, Movie movie, Member member) throws Exception{
		int result = 0;
		
		try {
			String sql = prop.getProperty("insert");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie.getMovieTitle());
			pstmt.setString(2, movie.getDate());
			pstmt.setString(3, movie.getLocation());
			pstmt.setString(4, movie.getTime());
			pstmt.setString(5, movie.getSeat());
			pstmt.setInt(6, member.getMemberNo());
			
			result = pstmt.executeUpdate();
			
			
		} finally {
			close(pstmt);
		}
		return result;
	}


}
