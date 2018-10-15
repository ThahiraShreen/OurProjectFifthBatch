package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.Session;

import model.Registration;
import model.User;
import myutils.MyUtility;

public class UserDaoImple implements UserDao {

	@Override
	public User getUser(String userName) {
		Connection con;
		User user=null;
		try {
			con = MyUtility.getMydataSource().getConnection();
			String sql="select * from admin where username=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,userName);
			ResultSet rst=pst.executeQuery();
			while(rst.next()) {
				if(user==null) {
					user=new User();
					user.setUid(rst.getLong("aid"));
					user.setUserName(rst.getString("username"));
					//user.setRoles(rst.getString("roles"));
					user.setPassword(rst.getString("password"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(user);
		return user;
	}
	Registration re= null;
	@Override
	public Registration addUser(Registration reg) {
		
		re=reg;
		Session session= MyUtility.getMySessionFactory().openSession();
		System.out.println(session);
		session.beginTransaction();
		session.save(re);
		session.getTransaction().commit();
		
		return re;
	}

}
