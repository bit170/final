package com.spring.biz.artist.impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.biz.artist.ArtistVO;

public class ArtistDAOSpring {

	private JdbcTemplate jdbcTemplate;
	
	//SQL문
	private final String ARTIST_INSERT
		= "INSERT INTO ARTIST (ID, NICKNAME, A_DETAIL, A_IMG) "
		+ "VALUES ?, ?, ?, ?";
	private final String ARTIST_UPDATE
		= "UPDATE ARTIST "
		+ "SET A_DETAIL = ?, A_IMG = ? "
		+ "WHERE ID = ?";
	private final String ARTIST_DELETE
		= "DELETE FROM ARTIST WHERE ID = ?";
	private final String ARTIST_GET
		= "SELECT * FROM ARTIST WHERE ID = ?";
	private final String ARTIST_LIST
		= "SELECT * FROM ARTIST";
	private final String ARTIST_ALLPRINT
		= "SELECT P_CODE, P_NAME_ P_IMG FROM PRODUCT WHERE A_ID = ?";
	
	public ArtistDAOSpring() {
		System.out.println("~~~ ArtistDAOSpring() 객체 생성 ~~~");
	}
	
	//작가등록
	public void insertArtist(ArtistVO vo) {
		System.out.println("===> Spring JDBC로 insertArtist() 실행");
	}
	
	
	}
