package kr.co.T2Market.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	//회원 아이디
	private String member_id;
	
	
	//회원 비밀번호
	private String pass;
	
	//회원 이름 
	private String member_name;
	
	//회원 이메일
	private String email;
	
	//회원 우편번호
	private String address;
	
	//회원 주소
	private String address2;
	
	//회원 상세주소
	private String address3;
	
	//관리자 구분(0: 일반 사용자 , 1: 관리자)
	private int adminck;
	
	//등록일자
	private int regdate;
	
	//회원 돈
	private int money;
	
	private String active;
	
}
