package pack;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

public class Main {

	 
	public static void main(String[] args) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		try{
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			transaction = session.beginTransaction();
			Criteria criteria= session.createCriteria(Employee.class);
			criteria.addOrder(Order.desc("empid"));
			//query.setParameter("add1","agra");
			
			List list= criteria.list();
			Iterator itr=list.iterator();
			while(itr.hasNext())
			{
				Employee e = (Employee)itr.next();
				System.out.println(e.getEmpid()+" "+e.getEname()+" "+e.getEaddress()+" "+e.getPhone());
			}
		/*	String hql = "UPDATE Employee as e set e.eaddress = :eadd WHERE e.empid = :eid";
		Query query = session.createQuery(hql);
		query.setParameter("eadd","Agra");
		query.setParameter("eid", 1001);
		int result = query.executeUpate();
		transaction.commit();
		System.out.println("Rows affected: " + result);*/
			System.out.println("data successfully inserted");
			System.out.println();
		 }
		 catch(Exception e)
		 {
			 System.out.println(e);
			transaction.rollback();
		 }
		 finally
		 {
			 session.close();
			 session.flush();
		 }

	}

}
