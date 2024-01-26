package com.JobSearch.JobSearchApplication.Controller;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.JobSearch.JobSearchApplication.Model.Jobs;

public interface JobRepository extends CrudRepository<Jobs, Integer> {
    @Query("SELECT COUNT(a) FROM Jobs a WHERE a.id = :JobsId")
    Long countById(@Param("JobsId") Integer id);
}
