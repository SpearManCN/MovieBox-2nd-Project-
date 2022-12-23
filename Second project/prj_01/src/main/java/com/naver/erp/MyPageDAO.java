package com.naver.erp;

import java.util.List;
import java.util.Map;

public interface MyPageDAO {
	List<Map> getBookInfo(String str);
	
	int changePw(Map map);
	
	List<Map> getBuyStore(String str);
	List<Map> getJjimInfo(String str);
	int delBasket(String no);
	
}
