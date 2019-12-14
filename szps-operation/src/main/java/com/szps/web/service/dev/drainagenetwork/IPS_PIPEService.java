package com.szps.web.service.dev.drainagenetwork;

import java.util.List;

import com.szps.web.domain.dev.drainagenetwork.PS_PIPE;

public interface IPS_PIPEService {

	public List<PS_PIPE> selectList(PS_PIPE obj);

	public PS_PIPE selectById(String id);

	public List<PS_PIPE> selectByName(String name);

	public int insert(PS_PIPE obj);

	public int deleteById(String id);

	public int deleteByIds(String ids);

	public int update(PS_PIPE obj);
}