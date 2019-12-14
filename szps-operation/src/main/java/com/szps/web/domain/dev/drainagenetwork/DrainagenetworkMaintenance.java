package com.szps.web.domain.dev.drainagenetwork;

import com.szps.common.core.domain.BaseEntity;

public class DrainagenetworkMaintenance extends BaseEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = -832850094101279834L;
	Long id;
	String optime;// 时间
	String devname;// 设备名称
	String optype;// 类型
	String opdetails;// 内容
	String replaceparts;// 更换零配件
	String operator;// 操作人员
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOptime() {
		return optime;
	}
	public void setOptime(String optime) {
		this.optime = optime;
	}
	public String getDevname() {
		return devname;
	}
	public void setDevname(String devname) {
		this.devname = devname;
	}
	public String getOptype() {
		return optype;
	}
	public void setOptype(String optype) {
		this.optype = optype;
	}
	public String getOpdetails() {
		return opdetails;
	}
	public void setOpdetails(String opdetails) {
		this.opdetails = opdetails;
	}
	public String getReplaceparts() {
		return replaceparts;
	}
	public void setReplaceparts(String replaceparts) {
		this.replaceparts = replaceparts;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}

}