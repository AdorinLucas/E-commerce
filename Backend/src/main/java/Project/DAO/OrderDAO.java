package Project.DAO;

import Project.Model.OrderDetail;

public interface OrderDAO {

	public boolean payment(OrderDetail orderDetail);
	public boolean updateCartItemStatus(String username,int orderId);

}
