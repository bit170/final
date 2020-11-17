package com.spring.biz.artist;

import java.util.List;

public interface ArtistService {
	void insertArtist(ArtistVO vo);
	void updateArtist(ArtistVO vo);
	void deleteArtist(ArtistVO vo);
	ArtistVO getArtist(ArtistVO vo);
	List<ArtistVO> getArtistList(ArtistVO vo);
}
