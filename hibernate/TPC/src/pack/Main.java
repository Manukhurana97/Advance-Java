package pack;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Main {

	
	public static void main(String[] args) {
		
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("hello");
		SchoolManagement sm = new SchoolManagement();
		sm.setSid(15);
		sm.setSname("Vikas");
		sm.setAge(45);
		sm.setSaddress("faridabad");
		sm.setSphone(89898);

		
		Teacher t = new Teacher();
		t.setSid(11);
		t.setSname("Amrita");
		t.setAge(40);
		t.setSaddress("Noida");
		t.setSphone(9090);
		t.setTsalary(90000);
		t.setTsubject("Physics");
		
		Student s = new Student();
		s.setSid(78);
		s.setSname("Misthi");
		s.setAge(14);
		s.setSaddress("Noida");
		s.setSphone(9098);
		s.setStclass(7);
		s.setStsection("B");
		session.save(sm);
		session.save(t);
		session.save(s);
		transaction.commit();
		

	}

}
