package com.szps.web.service.dev.fixedasset.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szps.common.annotation.DataScope;
import com.szps.common.core.text.Convert;
import com.szps.web.domain.dev.fixedasset.Plant;
import com.szps.web.mapper.dev.fixedasset.PlantMapper;
import com.szps.web.service.dev.fixedasset.IPlantService;
@Service
public class PlantServiceImpl implements IPlantService {
	@Autowired
	private PlantMapper mapper;
	@Override
	@DataScope(deptAlias = "r")
	public List<Plant> selectList(Plant obj) {
		// TODO Auto-generated method stub
		return mapper.selectList(obj);
	}

	@Override
	public Plant selectById(Long id) {
		// TODO Auto-generated method stub
		return mapper.selectById(id);
	}

	@Override
	public int insert(Plant obj) {
		// TODO Auto-generated method stub
		return mapper.insert(obj);
	}

	@Override
	public int deleteById(Long id) {
		// TODO Auto-generated method stub
		return mapper.deleteById(id);
	}

	@Override
	public int deleteByIds(String ids) {
		// TODO Auto-generated method stub
		Long[] idsL = Convert.toLongArray(ids);
		return mapper.deleteByIds(idsL);
	}

	@Override
	public int update(Plant obj) {
		// TODO Auto-generated method stub
		return mapper.update(obj);
	}

}
