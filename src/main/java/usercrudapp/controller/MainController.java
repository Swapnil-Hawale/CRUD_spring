package usercrudapp.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import usercrudapp.dao.UserDao;
import usercrudapp.model.User;

@Controller
public class MainController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<User> users=userDao.geUsers(); //get the all users
		m.addAttribute("users", users); 
		
		return "index";
	}
	
	//show add user form
	@RequestMapping("/add-user")
	public String addUser(Model m)
	{
		m.addAttribute("title", "Add User");
		return "add_user_form";
	}
	
	//handle add product form
	
	@RequestMapping(value="/handle-user", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute User user, HttpServletRequest request)
	{
		System.out.println(user);
		userDao.createUser(user);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");  //redirect to home page
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteProduct(@PathVariable("userId") int userId,HttpServletRequest request)
	{
		this.userDao.deleteUser(userId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");  //redirect to home page
		return redirectView;
	}
	
	@RequestMapping("/update/{userId}")
	public String updateForm(@PathVariable("userId") int uid, Model m)
	{
		User user=this.userDao.getUser(uid);
		m.addAttribute("user", user);
		return "update_form";
	}
}
