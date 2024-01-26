package com.JobSearch.JobSearchApplication.Controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.JobSearch.JobSearchApplication.Model.Jobs;
import com.JobSearch.JobSearchApplication.Model.UserLogin;

@Controller
public class UserController {
	
	@Autowired
	SessionFactory sf;

	@RequestMapping("/")
	public String UserLogin() {
		return "UserLoginPage";
	}
	
	@RequestMapping("/login")
	public String UserLoginDB(UserLogin userlogin,Model model) {
		
		Session ss = sf.openSession();
		UserLogin dblogin = ss.get(UserLogin.class, userlogin.getUser_name()); //primary key 
	
		String page = "UserLoginPage";
		String msg = null;
		if (dblogin != null) {
			if (userlogin.getUser_password().equals(dblogin.getUser_password())) {
				page = "home";
			}else {
				msg= "Invalid Password";
			}
		}else {
			msg ="Invalid Username";
		}
		model.addAttribute("msg",msg);
		return page;
	}
	
	@RequestMapping("createaccount")
	public String CreateUserAccount() {
		return "createuseraccount";
	}
	
	@RequestMapping("/createuseraccount")
	public UserLogin CreateUserAcoountSave(UserLogin bb) {
		Session s=sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(bb);
		t.commit();
		return bb;
	}
	
	@RequestMapping("/loginpage")
	public String loginpage() {
		return "UserLoginPage";
	}
	
	@RequestMapping("homePage")
	public String homepage() {
		return "home";
	}
	
	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
	}
		
	@RequestMapping("profilepage")
	public String profile() {
		return "profile";
	}
	@GetMapping("/jobpost")
	public String JobPosting() {
		return "jobpostingform";
	}
	
	@PostMapping("/save")
	public String saveJobs(@ModelAttribute("job") Jobs job) {
	    // No need to handle the checkbox value manually, Spring will bind it to the boolean field
	    service.save(job);
	    System.err.println("saved");
	    return "redirect:/jobspage";
	}
	
	
	@Autowired
	private JobService service;
	
	@RequestMapping("jobspage")
	public String JobsPage(Model model) {
	    List<Jobs> listUsers = service.listAll();
	    model.addAttribute("listUsers", listUsers);
	    System.err.println("jobspage");
	    return "jobs";
	}
	
	@GetMapping("job{id}")
	public String ShowThisJob(@PathVariable("id") int jobId,Model mod) {
		
		Jobs job= service.getById(jobId);
		mod.addAttribute("job", job);
		mod.addAttribute("pageTitle","Edit User(ID:" + jobId + ")");

	    System.err.println("jobId");
	    return "jobdetails";
		
	}
	
	
}
