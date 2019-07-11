package pack5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

    public static void main(String[] args) {

        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");

        Employee e =(Employee)context.getBean("E");
        e.display();
    }
}
