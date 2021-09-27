package com.sss.shopping_mall.modal;

import javax.persistence.Id;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="mall")
public class Mall {
	@Id
	private int id;
	private String mallname;
	private String category;
	private String mallstatus;
	private String mallowner;
	private String leasestatus;
	
	public Mall() {
		
	}
	
	
	public Mall(String mallname, String category, String mallstatus, String mallowner, String leasestatus) {
		super();
		this.mallname = mallname;
		this.category = category;
		this.mallstatus = mallstatus;
		this.mallowner = mallowner;
		this.leasestatus = leasestatus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMallname() {
		return mallname;
	}
	public void setMallname(String mallname) {
		this.mallname = mallname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMallstatus() {
		return mallstatus;
	}
	public void setMallstatus(String mallstatus) {
		this.mallstatus = mallstatus;
	}
	public String getMallowner() {
		return mallowner;
	}
	public void setMallowner(String mallowner) {
		this.mallowner = mallowner;
	}
	public String getLeasestatus() {
		return leasestatus;
	}
	public void setLeasestatus(String leasestatus) {
		this.leasestatus = leasestatus;
	}


	@Override
	public String toString() {
		return "Mall [id=" + id + ", mallname=" + mallname + ", category=" + category + ", mallstatus=" + mallstatus
				+ ", mallowner=" + mallowner + ", leasestatus=" + leasestatus + "]";
	}
}
