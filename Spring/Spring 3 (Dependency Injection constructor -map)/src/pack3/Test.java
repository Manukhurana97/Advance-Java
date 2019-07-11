package pack3;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Test {
    public static void main(String[] args) {
        Resource r = new ClassPathResource("applicationcontext.xml");
        BeanFactory factory = new XmlBeanFactory(r);

        Question q = (Question)factory.getBean("Q");
        q.display();
    }
}

