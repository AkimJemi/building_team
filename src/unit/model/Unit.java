package unit.model;

import java.sql.Date;

public class Unit {
	private int no;
	private String name;
	private String hire;
	private String lease;
	private int rent_fee;
	private String period;
	private int size;
	private Date coming;
	private Date leaving;

	public void setNo(int no) {
		this.no = no;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setHire(String hire) {
		this.hire = hire;
	}

	public void setLease(String lease) {
		this.lease = lease;
	}

	public void setRent_fee(int rent_fee) {
		this.rent_fee = rent_fee;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public void setComing(Date coming) {
		this.coming = coming;
	}

	public void setLeaving(Date leaving) {
		this.leaving = leaving;
	}

	public Unit() {
	}

	public Unit(int no, String name, String hire, String lease, int rent_fee, String period, int size) {
		this.hire = hire;
		this.lease = lease;
		this.name = name;
		this.no = no;
		this.period = period;
		this.rent_fee = rent_fee;
		this.size = size;

	}

	public Unit(int no) {
		this.no = no;
	}

	public Unit(int no, String name, String hire, String lease, int rent_fee, String period, int size, Date coming,
			Date leaving) {
		this.hire = hire;
		this.lease = lease;
		this.name = name;
		this.no = no;
		this.period = period;
		this.rent_fee = rent_fee;
		this.size = size;
		this.coming = coming;
		this.leaving = leaving;

	}

	
	public int getNo() {
		return no;
	}

	public String getName() {
		return name;
	}

	public String getHire() {
		return hire;
	}

	public String getLease() {
		return lease;
	}

	public int getRent_fee() {
		return rent_fee;
	}

	public String getPeriod() {
		return period;
	}

	public int getSize() {
		return size;
	}

	public Date getComing() {
		return coming;
	}

	public Date getLeaving() {
		return leaving;
	}

}
