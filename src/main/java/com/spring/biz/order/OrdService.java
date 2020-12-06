package com.spring.biz.order;

import java.util.List;

public interface OrdService {
	void insertOrd(OrdVO vo);
	List<OrdVO> getOrdList(String id);
	void insertS_Ord(S_OrdVO svo);
	List<S_OrdVO> getS_OrdList(String o_code);
	List<SellVO> getSellList(String a_id);
}
