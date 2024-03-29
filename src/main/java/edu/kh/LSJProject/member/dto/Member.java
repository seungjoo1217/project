package edu.kh.LSJProject.member.dto;

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
public class Member {

	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String email;
	private String Address;
	private String enrollDate;
	private String memberDeleteFlag;
}
