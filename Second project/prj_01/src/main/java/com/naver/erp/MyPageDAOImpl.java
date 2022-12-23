package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDAOImpl implements MyPageDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	
	public List<Map> getBookInfo(String str){
		List<Map> bookInfo = this.sqlSession.selectList(
				"com.naver.erp.MyPageDAO.getBookInfo"
				,str
				);
		return bookInfo;
	}
	
	
	
	public int changePw(Map map) {
		int updatePw = this.sqlSession.update(
				"com.naver.erp.MyPageDAO.changePw"
				,map
				);
		return updatePw;
		
	}
	
	public List<Map> getBuyStore(String str){
		List<Map> buyStore = this.sqlSession.selectList(
				"com.naver.erp.MyPageDAO.getBuyStore"
				,str
				);
		return buyStore;
	}
	
	public List<Map> getJjimInfo(String str){
		List<Map> jjimInfo = this.sqlSession.selectList(
				"com.naver.erp.MyPageDAO.getJjimInfo"
				,str
				
				);
		return jjimInfo;
		
		
	}
	
	public int delBasket(String str) {
		int basket = this.sqlSession.delete(
				"com.naver.erp.MyPageDAO.delBasket"
				,str
				);
		return basket;
		
		
	}
	
	
	
	
}
