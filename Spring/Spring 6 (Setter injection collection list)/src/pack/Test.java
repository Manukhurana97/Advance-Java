package pack;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args) {

//      Application context
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationcontext.xml");

//        Question class
        Question q = (Question)context.getBean("Q");
        q.show();

    }
}
