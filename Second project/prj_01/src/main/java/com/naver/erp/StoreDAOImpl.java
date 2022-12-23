package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map> getStoreInfo(){
		List<Map> storeInfo = this.sqlSession.selectList(
				"com.naver.erp.StoreDAO.getStoreInfo"
				
				);
		return storeInfo;
		
		
		
	}
	
	
	public int insertStore(Map map) {
		int store = this.sqlSession.insert(
				"com.naver.erp.StoreDAO.insertStore"
				,map
				);
		return store;
	}
	public int insertBasket(Map map) {
		int basket = this.sqlSession.insert(
				"com.naver.erp.StoreDAO.insertBasket"
				,map
				);
		return basket;
		
	}
}
