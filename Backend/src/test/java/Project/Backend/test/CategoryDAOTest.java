package Project.Backend.test;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import Project.DAO.CategoryDAO;
import Project.Model.Category;

public class CategoryDAOTest {
static CategoryDAO CategoryDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("Project");
		context.refresh();
		CategoryDAO=(CategoryDAO)context.getBean("CategoryDAO");
		System.out.println("Bean Created");
		
	}
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryName("LenovoMobile");
		category.setCategoryDesc("All Smart Phone Mobile of Lenovo Brand");
		
		assertTrue("Problem Occured While Adding",CategoryDAO.addCategory(category));
	}
	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=CategoryDAO.getCategory(1);
		category.setCategoryDesc("All Smart Phone Mobile with Different cost of MI Brand");
		
		assertTrue("Problem Occured While Updating",CategoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category=CategoryDAO.getCategory(1);
		assertTrue("Problem Occured While Deleting",CategoryDAO.deleteCategory(category));
	}
	
	
	@Test
	public void listCategoriesTest()
	{
		List<Category> categoryList=CategoryDAO.listCategories();
		
		assertTrue("Problem Occured While Retrieving the List",categoryList.size()>0);
		
		for(Category category:categoryList)
		{
			System.out.print(category.getCategoryId()+":::");
			System.out.print(category.getCategoryName()+":::");
			System.out.println(category.getCategoryDesc()+":::");
		}

}
}