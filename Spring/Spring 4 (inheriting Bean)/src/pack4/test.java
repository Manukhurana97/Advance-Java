package pack4;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class test {
    public static void main(String[] args)
    {
        Resource r = new ClassPathResource("applicationcontext.xml");
        BeanFactory factory = new XmlBeanFactory(r);

        Employee e = (Employee)factory.getBean("E1");
        e.show();
    }
}
