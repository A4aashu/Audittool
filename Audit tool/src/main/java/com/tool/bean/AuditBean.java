package com.tool.bean;
import java.util.*;
public class AuditBean {
	private String Initiative_id;
	private String Name_of_client;
	private String Engagement_name;
	private String MegaProcess;
	private String Department;
	private Date Audit_start_date;
	private Date Audit_end_date;
	private String Audit_background;
	
	public String getInitiative_id() {
		return Initiative_id;
	}
	public void setInitiative_id(String initiative_id) {
		Initiative_id = initiative_id;
	}
	public String getName_of_client() {
		return Name_of_client;
	}
	public void setName_of_client(String name_of_client) {
		Name_of_client = name_of_client;
	}
	public String getEngagement_name() {
		return Engagement_name;
	}
	public void setEngagement_name(String engagement_name) {
		Engagement_name = engagement_name;
	}
	public String getMegaProcess() {
		return MegaProcess;
	}
	public void setMegaProcess(String megaProcess) {
		MegaProcess = megaProcess;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public Date getAudit_start_date() {
		return Audit_start_date;
	}
	public void setAudit_start_date(Date audit_start_date) {
		Audit_start_date = audit_start_date;
	}
	public Date getAudit_end_date() {
		return Audit_end_date;
	}
	public void setAudit_end_date(Date audit_end_date) {
		Audit_end_date = audit_end_date;
	}
	public String getAudit_background() {
		return Audit_background;
	}
	public void setAudit_background(String audit_background) {
		Audit_background = audit_background;
	}
}
