package com.szps.web.service.drainage;

import com.szps.web.domain.drainage.Drain;

import java.util.List;

public interface DrainService {
	
	/**
	 * 通过排水户编号查询该排水户下所有排水口
	 * @param drain
	 * @return
	 */
	public List<Drain> selectDrainByHouseholdId(Drain drain);
	
	/**
	 * 校验排水口编号唯一性
	 * @param drain
	 * @return
	 */
	public String checkDrainUnique(Drain drain);
	
	/**
	 * 新增排水口
	 * @param drain
	 */
	public void insertDrain(Drain drain);
	
	/**
	 * 通过排水口编号查询排水口
	 * @param drain_id
	 * @return
	 */
	public Drain selectDrainById(String drain_id);
	
	/**
	 * 修改排水口信息
	 * @param drain
	 */
	public void updateDrain(Drain drain);
	
	/**
	 * 通过排水口编号删除排水口
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	public int deleteDrainById(String ids) throws Exception;
}