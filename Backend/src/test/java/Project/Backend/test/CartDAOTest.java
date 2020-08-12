package Project.Backend.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import Project.DAO.CartDAO;
import Project.Model.Cart;
public class CartDAOTest {
static CartDAO cartDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("Project");
		context.refresh();
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
	
	@Ignore
	@Test
	public void addCartItemTest()
	{
		Cart cartItem=new Cart();
		
		cartItem.setProductId(2);
		cartItem.setProductName("Samsung A8");
		cartItem.setQuantity(2);
		cartItem.setPrice(16000);
		cartItem.setStatus("NP");
		cartItem.setUsername("zoe123");
		
		assertTrue("Problem in Adding CartItem",cartDAO.addToCart(cartItem));
		
	}
	
	@Ignore
	@Test
	public void deleteCartItemTest()
	{
		Cart cartItem=cartDAO.getCartItem(1);
		assertTrue("Problem in deleting CartItem",cartDAO.deleteCartItem(cartItem));
	}

	
}
