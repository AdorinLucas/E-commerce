package Project.DAO;

import Project.Model.UserDetail;

public interface UserDAO {
	public boolean registerUser(UserDetail userDetail);
	public boolean updateUser(UserDetail userDetail);
	public UserDetail getUser(String username);
}
