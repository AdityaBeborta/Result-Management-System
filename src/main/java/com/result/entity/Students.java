package com.result.entity;

public class Students {
	private String slno;
	private String regno;
	private String name;
	private String sem;
	private String subject_code;
	private String subject_name;
	private String subject_type;
	private String subject_credit;
	private String subject_grade;
	public Students(String regno, String name, String sem, String subject_code, String subject_name,
			String subject_type, String subject_credit, String subject_grade) {
		super();
		this.regno = regno;
		this.name = name;
		this.sem = sem;
		this.subject_code = subject_code;
		this.subject_name = subject_name;
		this.subject_type = subject_type;
		this.subject_credit = subject_credit;
		this.subject_grade = subject_grade;
	}
	public Students() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getSlno() {	
		return slno;
	}
	public void setSlno(String slno) {
		this.slno = slno;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getSubject_code() {
		return subject_code;
	}
	public void setSubject_code(String subject_code) {
		this.subject_code = subject_code;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public String getSubject_type() {
		return subject_type;
	}
	public void setSubject_type(String subject_type) {
		this.subject_type = subject_type;
	}
	public String getSubject_credit() {
		return subject_credit;
	}
	public void setSubject_credit(String subject_credit) {
		this.subject_credit = subject_credit;
	}
	public String getSubject_grade() {
		return subject_grade;
	}
	public void setSubject_grade(String subject_grade) {
		this.subject_grade = subject_grade;
	}
	@Override
	public String toString() {
		return "Students [regno=" + regno + ", name=" + name + ", sem=" + sem + ", subject_code=" + subject_code
				+ ", subject_name=" + subject_name + ", subject_type=" + subject_type + ", subject_credit="
				+ subject_credit + ", subject_grade=" + subject_grade + "]";
	}
	
	
	
	

}
