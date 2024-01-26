package com.JobSearch.JobSearchApplication.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.JobSearch.JobSearchApplication.Model.Jobs;

@Service
public class JobService {
	@Autowired
	private JobRepository repo;

	public List<Jobs> listAll() {
		return (List<Jobs>) repo.findAll();
	}
	
	public void save (Jobs job) {
		repo.save(job);
	}
	
	public Jobs getById(Integer id) {
		Optional<Jobs> result = repo.findById(id);
		return result.orElseThrow(() -> new CourseNotFoundException("Could Not Find Any Jobs"+id));
	}
	
	public void delete(int id) {
		Long count = repo.countById(id);
		if (count == null || count == 0) {
		    throw new CourseNotFoundException("Could not find any Jobs with ID " + id);
		}
		repo.deleteById(id);
	}

}
