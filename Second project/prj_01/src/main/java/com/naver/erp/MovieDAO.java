package com.naver.erp;

import java.util.List;
import java.util.Map;

public interface MovieDAO {
	public List<Map> getMovieInfo();
	public List<Map> getMovieInfo2(int no);
}
