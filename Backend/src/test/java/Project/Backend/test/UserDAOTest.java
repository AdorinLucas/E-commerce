package Project.Backend.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import Project.DAO.UserDAO;
import Project.Model.UserDetail;

public class UserDAOTest {
static UserDAO userDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("Project");
		context.refresh();
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	@Ignore
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		
		user.setUsername("Teddy");
		user.setCustomerName("Teddy");
		user.setAddress1("G3, D Block, RC Adena Appartments");
		user.setAddress2("Thirumullaivoyal, Chennai");
		user.setPincode("600062");
		user.setEmailId("Teddy22@gmail.com");
		user.setEnabled(true);
		user.setMobileNo("987654321");
		user.setPassword("teddy123");
		user.setRole("ROLE_ADMIN");
		
		assertTrue("Problem in Registering User:",userDAO.registerUser(user));
	}
	
	
	@Test
	public void updateUserTest()
	{
		UserDetail user=new UserDetail();
		
		user.setUsername("Teddy123");
		user.setCustomerName("Teddy");
		user.setAddress1("Door no 223, ABC appartments");
		user.setAddress2("Bengaluru");
		user.setPincode("12345");
		user.setEmailId("Teddy22@gmail.com");
		user.setEnabled(true);
		user.setMobileNo("987654321");
		user.setPassword("teddy123");
		user.setRole("ROLE_ADMIN");
		
		assertTrue("Problem in Registering User:",userDAO.registerUser(user));
	}


}
