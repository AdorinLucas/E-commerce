package Project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Project.DAO.CartDAO;
import Project.DAO.OrderDAO;
import Project.DAO.UserDAO;
import Project.Model.Cart;
import Project.Model.OrderDetail;

@Controller
public class PaymentController {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value="/payment")
	public String makePayment(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		
		List<Cart> cartItemList=cartDAO.listCartItems(username);
		m.addAttribute("listCartItems", cartItemList);
		
		m.addAttribute("total_Amount", this.totalCartValue(cartItemList));
		
		m.addAttribute("address1", userDAO.getUser(username).getAddress1());
		
		m.addAttribute("address2", userDAO.getUser(username).getAddress2());
		
		m.addAttribute("pincode", userDAO.getUser(username).getPincode());
		
		return "Payment";
	}
	
	@RequestMapping(value="/receipt",method=RequestMethod.POST)
	public String generateReceipt(Model m, HttpSession session,@RequestParam("pmode")String pmode,@RequestParam("S_add")String S_add)
	{
		String username=(String)session.getAttribute("username");
		
		List<Cart> cartItemList=cartDAO.listCartItems(username);
		m.addAttribute("listCartItems", cartItemList);
		
		double total_Amount=this.totalCartValue(cartItemList);
		
		m.addAttribute("total_Amount",total_Amount);
		m.addAttribute("customerName", userDAO.getUser(username).getCustomerName());
		m.addAttribute("address1", userDAO.getUser(username).getAddress1());
		m.addAttribute("address2", userDAO.getUser(username).getAddress2());
		m.addAttribute("pincode", userDAO.getUser(username).getPincode());
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setTotalShoppingAmount(total_Amount);
		orderDetail.setUsername(username);
		orderDetail.setOrderDate(new java.util.Date());
		orderDetail.setPmode(pmode);
		orderDetail.setS_add(S_add);
		
		if(orderDAO.payment(orderDetail))
		{
			orderDAO.updateCartItemStatus(username, orderDetail.getOrderId());
		}
		
		m.addAttribute("order", orderDetail);
		m.addAttribute("customerName", userDAO.getUser(username).getCustomerName());
		m.addAttribute("address1", userDAO.getUser(username).getAddress1());
		m.addAttribute("address2", userDAO.getUser(username).getAddress2());
		m.addAttribute("pincode", userDAO.getUser(username).getPincode());
		
		return "Receipt";
	}
	
	public double totalCartValue(List<Cart> cartItemList)
	{
		double totalCost=0;
		int i=0;
		
		while(i<cartItemList.size())
		{
			Cart cartItem=cartItemList.get(i);
			totalCost=totalCost+(cartItem.getPrice()*cartItem.getQuantity());
			i++;
		}
		
		return totalCost;
	}
	

}
