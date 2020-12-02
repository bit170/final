package com.spring.biz.artist;

import java.util.HashMap;
import java.util.List;

public interface ArtistService {
	void insertArtist(HashMap<String,Object> idNickname);
	void updateArtist(ArtistVO vo);
	void deleteArtist(ArtistVO vo);
	int alreadyArtist(String id);
	ArtistVO getArtist(String id);
	List<ArtistVO> getArtistList();
	List<ArtistVO> searchByName(String nickname);
}
