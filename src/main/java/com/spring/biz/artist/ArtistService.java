package com.spring.biz.artist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ArtistService {
	int alreadyArtist(String a_id);
	void insertArtist(HashMap idNickname);
	void addArtistInfo(Map newArtistMap) throws Exception;
	void addNewAImage(List aimageFileList) throws Exception;
	String searchFilename(String a_id);
//	void deleteArtist(ArtistVO vo);
	ArtistVO getArtist(String a_id);
	List<ArtistVO> getArtistList();
	List<ArtistVO> searchByName(String nickname);
	List<Map<String, String>> getAllPrinting(String a_id);

	int searchable(String keyword);
	List<ArtistVO> getMainArtist();
}
