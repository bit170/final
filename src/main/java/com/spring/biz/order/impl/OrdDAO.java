package com.spring.biz.order.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.order.OrdVO;
import com.spring.biz.order.S_OrdVO;
import com.spring.biz.order.SellVO;

@Repository
public class OrdDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public OrdDAO() {
		System.out.println(">>> OrdDAO() 객체 생성");
	}
	
	public void insertOrd(OrdVO vo) {
		mybatis.insert("ordDAO.insertOrd", vo);
	}
	
	public void insertS_Ord(S_OrdVO svo) {
		mybatis.insert("ordDAO.insertS_Ord", svo);
		System.out.println("insertS_Ord() 완료! : " + svo);
	}
	
	public List<S_OrdVO> getS_OrdList(String o_code){
		return mybatis.selectList("ordDAO.getS_OrdList", o_code);
	}
	
	public List<OrdVO> getOrdList(String id){
		return mybatis.selectList("ordDAO.getOrdList", id);
	}
	
	public List<SellVO> getSellList(String a_id){
		return mybatis.selectList("ordDAO.getSellList", a_id);
	}
	
}
