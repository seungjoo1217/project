package edu.kh.LSJProject.movie.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Movie {

	private int movieNo;
	private String movieTitle;
	private String date;
	private String location;
	private String time;
	private String seat;
	private int price;
	private String movieDeleteFlag;
	
}
