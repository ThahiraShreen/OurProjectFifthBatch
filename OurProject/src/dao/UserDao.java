package dao;

import model.Registration;
import model.User;

public interface UserDao {
	public User getUser(String userName);
public Registration addUser(Registration reg);
}

