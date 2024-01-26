package com.JobSearch.JobSearchApplication.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Jobs {

	@Id
	int id;
	
	String  job_title,
			company_name,
			job_location,
			job_type,
			job_description,
			qualifications,
			salary_range,
			benefits;

	public Jobs() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Jobs(int id, String job_title, String company_name, String job_location, String job_type,
			String job_description, String qualifications, String salary_range, String benefits) {
		super();
		this.id = id;
		this.job_title = job_title;
		this.company_name = company_name;
		this.job_location = job_location;
		this.job_type = job_type;
		this.job_description = job_description;
		this.qualifications = qualifications;
		this.salary_range = salary_range;
		this.benefits = benefits;
	}

	@Override
	public String toString() {
		return "Jobs [id=" + id + ", job_title=" + job_title + ", company_name=" + company_name + ", job_location="
				+ job_location + ", job_type=" + job_type + ", job_description=" + job_description + ", qualifications="
				+ qualifications + ", salary_range=" + salary_range + ", benefits=" + benefits + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getJob_location() {
		return job_location;
	}

	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}

	public String getJob_type() {
		return job_type;
	}

	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}

	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}

	public String getQualifications() {
		return qualifications;
	}

	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}

	public String getSalary_range() {
		return salary_range;
	}

	public void setSalary_range(String salary_range) {
		this.salary_range = salary_range;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}
	
}