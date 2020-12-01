package com.spring.biz.artist;

import java.util.List;

public interface ArtistService {
	void insertArtist(ArtistVO vo);
	void updateArtist(ArtistVO vo);
	void deleteArtist(ArtistVO vo);
	ArtistVO getArtist(String id);
	List<ArtistVO> getArtistList();
	List<ArtistVO> searchByName(String nickname);
	int searchable(String keyword);
}
