package Project.Backend.test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
public class DBConfigTest {
	public static void main(String arg[])
	{
		
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("Project");
		context.refresh();
		System.out.println("Success");
		
		
	}
}
