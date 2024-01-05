package usercrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import usercrudapp.model.User;

@Component
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createUser(User user)
	{
		 this.hibernateTemplate.saveOrUpdate(user);
	}
	
	//get all users
	 public List<User> geUsers()
	 {
		List<User> users= this.hibernateTemplate.loadAll(User.class);
		return users;
	 }
	 
	 //delete the single product
	 @Transactional
	 public void deleteUser(int uid)
	 {
		 User u=this.hibernateTemplate.load(User.class, uid);   //for get the user
		 this.hibernateTemplate.delete(u);
	 }
	 
	 //get the single user
	 public User getUser(int uid)
	 {
		 return this.hibernateTemplate.get(User.class, uid);
	 }
}
