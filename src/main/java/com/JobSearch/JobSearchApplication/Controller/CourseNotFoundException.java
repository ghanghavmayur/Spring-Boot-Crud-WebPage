package com.JobSearch.JobSearchApplication.Controller;

public class CourseNotFoundException extends RuntimeException {
	public CourseNotFoundException(String message) {
		super(message);
	}
}
