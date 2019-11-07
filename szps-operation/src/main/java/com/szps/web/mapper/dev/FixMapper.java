package com.szps.web.mapper.dev;

import java.util.List;

import com.szps.web.domain.dev.Fix;

public interface FixMapper {

	public List<Fix> selectList(Fix obj);

	public Fix selectById(Long id);

	public int insert(Fix obj);

	public int deleteById(Long id);

	public int deleteByIds(Long[] ids);

	public int update(Fix obj);
}