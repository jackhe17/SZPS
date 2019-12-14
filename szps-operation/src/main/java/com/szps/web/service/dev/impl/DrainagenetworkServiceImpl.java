package com.szps.web.service.dev.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szps.common.core.text.Convert;
import com.szps.web.domain.dev.Drainagenetwork;
import com.szps.web.mapper.dev.DrainagenetworkMapper;
import com.szps.web.service.dev.IDrainagenetworkService;
@Service
public class DrainagenetworkServiceImpl implements IDrainagenetworkService {
	@Autowired
	private DrainagenetworkMapper mapper;
	@Override
	public List<Drainagenetwork> selectList(Drainagenetwork obj) {
		// TODO Auto-generated method stub
		return mapper.selectList(obj);
	}

	@Override
	public Drainagenetwork selectById(Long id) {
		// TODO Auto-generated method stub
		return mapper.selectById(id);
	}

	@Override
	public int insert(Drainagenetwork obj) {
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
	public int update(Drainagenetwork obj) {
		// TODO Auto-generated method stub
		return mapper.update(obj);
	}

	@Override
	public List<Drainagenetwork> selectByName(String name) {
		// TODO Auto-generated method stub
		return mapper.selectByName(name);
	}

}