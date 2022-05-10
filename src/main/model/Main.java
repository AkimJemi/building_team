package main.model;

import java.sql.Date;

import sub.model.Sub;
import unit.model.Unit;

public class Main {

	private String memberid;
	private String name;
	private int password;
	private int total_size;
	private int com_heat;
	private int com_clean;
	private int com_ev;
	private int com_es;
	private int com_maintain;
	private int com_insur;
	private int com_labor;
	private int com_water;
	private int com_pri_water;
	private int total_water;
	private int com_ele;
	private int com_pri_ele;
	private int total_ele;
	private int total_common;
	private int total_All;

	public Main() {
	}
	public Main(int total_size, int com_heat, int com_clean, int com_ev,
			int com_es, int com_maintain, int com_insur, int com_labor,
			int com_water, int com_ele) {
		this.total_size = total_size;
		this.com_heat = com_heat;
		this.com_clean = com_clean;
		this.com_ev = com_ev;
		this.com_es = com_es;
		this.com_maintain = com_maintain;
		this.com_insur = com_insur;
		this.com_labor = com_labor;
		this.com_water = com_water;
		this.com_ele = com_ele;
	}
	public Main(Sub sub, Main main, Unit unit) {
		this.com_pri_water = main.getCom_water() / main.getTotal_size()
				* unit.getSize();
		this.com_pri_ele = main.getCom_ele() / main.getTotal_size()
				* unit.getSize();
		this.total_water = sub.getWater_ind() + com_pri_water;
		this.total_ele = sub.getEle_basic() + sub.getEle_ind() + com_pri_ele;
		this.total_common = (main.getCom_clean() + main.getCom_ev()
				+ main.getCom_es() + main.getCom_labor() + main.getCom_insur()
				+ main.getCom_maintain() + main.getCom_heat())
				/ main.getTotal_size() * unit.getSize();
		this.total_All = total_water + total_ele + total_common;
		this.com_heat = main.getCom_heat() / main.getTotal_size()
				* unit.getSize();
		this.com_clean = main.getCom_clean() / main.getTotal_size()
				* unit.getSize();
		this.com_ev = main.getCom_ev() / main.getTotal_size() * unit.getSize();
		this.com_es = main.getCom_es() / main.getTotal_size() * unit.getSize();
		this.com_maintain = main.getCom_maintain() / main.getTotal_size()
				* unit.getSize();
		this.com_insur = main.getCom_insur() / main.getTotal_size()
				* unit.getSize();
		this.com_labor = main.getCom_labor() / main.getTotal_size()
				* unit.getSize();
	}
	public int getTotal_All() {
		return total_All;
	}
	public int getTotal_water() {
		return total_water;
	}
	public int getTotal_ele() {
		return total_ele;
	}
	public int getTotal_common() {
		return total_common;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public int getTotal_size() {
		return total_size;
	}
	public void setTotal_size(int total_size) {
		this.total_size = total_size;
	}
	public int getCom_heat() {
		return com_heat;
	}
	public void setCom_heat(int com_heat) {
		this.com_heat = com_heat;
	}
	public int getCom_clean() {
		return com_clean;
	}
	public void setCom_clean(int com_clean) {
		this.com_clean = com_clean;
	}
	public int getCom_ev() {
		return com_ev;
	}
	public void setCom_ev(int com_ev) {
		this.com_ev = com_ev;
	}
	public int getCom_es() {
		return com_es;
	}
	public void setCom_es(int com_es) {
		this.com_es = com_es;
	}
	public int getCom_maintain() {
		return com_maintain;
	}
	public void setCom_maintain(int com_maintain) {
		this.com_maintain = com_maintain;
	}
	public int getCom_insur() {
		return com_insur;
	}
	public void setCom_insur(int com_insur) {
		this.com_insur = com_insur;
	}
	public int getCom_labor() {
		return com_labor;
	}
	public void setCom_labor(int com_labor) {
		this.com_labor = com_labor;
	}
	public int getCom_water() {
		return com_water;
	}
	public void setCom_water(int com_water) {
		this.com_water = com_water;
	}
	public int getCom_ele() {
		return com_ele;
	}
	public void setCom_ele(int com_ele) {
		this.com_ele = com_ele;
	}
	public int getCom_pri_water() {
		return com_pri_water;
	}
	public int getCom_pri_ele() {
		return com_pri_ele;
	}

	private int no;
	private int water_ind;
	private int ele_basic;
	private int ele_ind;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getEle_basic() {
		return ele_basic;
	}

	public void setEle_basic(int ele_basic) {
		this.ele_basic = ele_basic;
	}

	public int getEle_ind() {
		return ele_ind;
	}

	public void setEle_ind(int ele_ind) {
		this.ele_ind = ele_ind;
	}

	public int getWater_ind() {
		return water_ind;
	}

}
