package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

public interface ClassMapper {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map);
	
	public List<Map<String, Object>> getDetailByCondition(int idx);
}