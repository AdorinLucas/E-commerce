package Project.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Project.Model.UserDetail;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean registerUser(UserDetail userDetail) {
		try
		{
			sessionFactory.getCurrentSession().save(userDetail);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public boolean updateUser(UserDetail userDetail) {
		try
		{
			sessionFactory.getCurrentSession().update(userDetail);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public UserDetail getUser(String username) {
		Session session=sessionFactory.openSession();
		UserDetail user=(UserDetail)session.get(UserDetail.class, username);
		session.close();
		return user;
	}

}
