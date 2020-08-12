package Project.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Project.Model.Cart;


@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addToCart(Cart cartItem) {
		try
		{
			sessionFactory.getCurrentSession().save(cartItem);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public boolean deleteCartItem(Cart cartItem) {
		try
		{
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public boolean updateCartItem(Cart cartItem) {
		try
		{
			sessionFactory.getCurrentSession().update(cartItem);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public List<Cart> listCartItems(String username) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Cart where username=:uname and status='NP'");
		query.setParameter("uname", username);
		List<Cart> cartItemList=query.list();
		session.close();
		return cartItemList;
	}

	@Override
	public Cart getCartItem(int cartItemId) {
		Session session=sessionFactory.openSession();
		Cart cartItem=session.get(Cart.class, cartItemId);
		session.close();
		return cartItem;	}

}
