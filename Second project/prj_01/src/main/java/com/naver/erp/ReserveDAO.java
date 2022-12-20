package com.naver.erp;

import java.util.List;
import java.util.Map;

public interface ReserveDAO {
	public List<Map> getMovieInfo();
	public List<Map> getTheater(Map infos);
	public String getSeatInfo(Map info);
	public int insertInfo(Map info);
	public int updateInfo(Map info);
	public List<Map> getMovieInfos(Map info);
	public int getMovieNo(String str);
}
