package com.spring.biz.artist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ArtistService {
	void insertArtist(HashMap idNickname);
	void addArtistInfo(Map newArtistMap) throws Exception;
	void addNewAImage(List aimageFileList) throws Exception;
//	void deleteArtist(ArtistVO vo);
	int alreadyArtist(String id);
	ArtistVO getArtist(String id);
	List<ArtistVO> getArtistList();
	List<ArtistVO> searchByName(String nickname);
	String searchFilename(String id);
}
