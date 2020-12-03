package com.spring.biz.artist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ArtistService {
	void insertArtist(HashMap idNickname);
	void addArtistInfo(Map newArtistMap) throws Exception;
	void addNewAImage(List aimageFileList) throws Exception;
//	void deleteArtist(ArtistVO vo);
	int alreadyArtist(String a_id);
	ArtistVO getArtist(String a_id);
	List<ArtistVO> getArtistList();
	List<ArtistVO> searchByName(String nickname);

	int searchable(String keyword);
	List<ArtistVO> getMainArtist();

	String searchFilename(String a_id);

}
