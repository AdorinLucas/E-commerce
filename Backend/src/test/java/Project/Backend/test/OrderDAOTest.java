package Project.Backend.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import Project.DAO.OrderDAO;
import Project.Model.OrderDetail;

public class OrderDAOTest {

	static OrderDAO orderDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("Project");
		context.refresh();
		orderDAO=(OrderDAO)context.getBean("orderDAO");
	}
	
	@Test
	public void testPayment()
	{
		OrderDetail orderInfo=new OrderDetail();
		orderInfo.setOrderDate(new java.util.Date());
		orderInfo.setTotalShoppingAmount(16000);
		orderInfo.setUsername("zoe123");
		orderInfo.setPmode("COD");
		
		assertTrue("Problem in Order Payment",orderDAO.payment(orderInfo));
		assertTrue("Problem in Updating Payment",orderDAO.updateCartItemStatus(orderInfo.getUsername(),orderInfo.getOrderId()));
	}


}
