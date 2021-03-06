package com.szps.web.domain.dev.fixedasset;

import com.szps.common.core.domain.BaseEntity;

public class Pipeline extends BaseEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2151640322585344725L;
	Long id;
	Long deptid;
	String deptname;
	String dlocation;
	String assetname;
	String startingplace;
	String endplace;
	String dlength;
	String ddepth;
	String dhigh;
	String material;
	String insulation;
	String layway;
	String aczoiling;
	String heatinsulatingmaterial;
	String builttime;
	String dstatus;
	String originalvalue;

	Long dept_id;//CREATE_BY 部门ID
	
	public Long getDept_id() {
		return dept_id;
	}

	public void setDept_id(Long dept_id) {
		this.dept_id = dept_id;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getDeptid() {
		return deptid;
	}

	public void setDeptid(Long deptid) {
		this.deptid = deptid;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public String getDlocation() {
		return dlocation;
	}

	public void setDlocation(String dlocation) {
		this.dlocation = dlocation;
	}

	public String getAssetname() {
		return assetname;
	}

	public void setAssetname(String assetname) {
		this.assetname = assetname;
	}

	public String getStartingplace() {
		return startingplace;
	}

	public void setStartingplace(String startingplace) {
		this.startingplace = startingplace;
	}

	public String getEndplace() {
		return endplace;
	}

	public void setEndplace(String endplace) {
		this.endplace = endplace;
	}

	public String getDlength() {
		return dlength;
	}

	public void setDlength(String dlength) {
		this.dlength = dlength;
	}

	public String getDdepth() {
		return ddepth;
	}

	public void setDdepth(String ddepth) {
		this.ddepth = ddepth;
	}

	public String getDhigh() {
		return dhigh;
	}

	public void setDhigh(String dhigh) {
		this.dhigh = dhigh;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getInsulation() {
		return insulation;
	}

	public void setInsulation(String insulation) {
		this.insulation = insulation;
	}

	public String getLayway() {
		return layway;
	}

	public void setLayway(String layway) {
		this.layway = layway;
	}

	public String getAczoiling() {
		return aczoiling;
	}

	public void setAczoiling(String aczoiling) {
		this.aczoiling = aczoiling;
	}

	public String getHeatinsulatingmaterial() {
		return heatinsulatingmaterial;
	}

	public void setHeatinsulatingmaterial(String heatinsulatingmaterial) {
		this.heatinsulatingmaterial = heatinsulatingmaterial;
	}

	public String getBuilttime() {
		return builttime;
	}

	public void setBuilttime(String builttime) {
		this.builttime = builttime;
	}

	public String getDstatus() {
		return dstatus;
	}

	public void setDstatus(String dstatus) {
		this.dstatus = dstatus;
	}

	public String getOriginalvalue() {
		return originalvalue;
	}

	public void setOriginalvalue(String originalvalue) {
		this.originalvalue = originalvalue;
	}

}
