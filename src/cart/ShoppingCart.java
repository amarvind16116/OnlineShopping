package cart;


import java.util.*;
/*import database.BookDetails;*/

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import beans.Product;

public class ShoppingCart {
   HashMap items = null;
   int numberOfItems = 0;
   boolean result=false;
   public ShoppingCart() {
       items = new HashMap();
   }

   public boolean add(String Product_id, Product prod) {
	   System.out.println("In Shopping Cart ADD\n");
	   if(CheckStock(Integer.parseInt(Product_id)))
	   {
		   if(items.containsKey(Product_id)) {
	           ShoppingCartItem scitem = (ShoppingCartItem) items.get(Product_id);
	           scitem.incrementQuantity();
	           DecrementStock(Integer.parseInt(Product_id));
	       } else {
	           ShoppingCartItem newItem = new ShoppingCartItem(prod);
	           items.put(Product_id, newItem);
	           DecrementStock(Integer.parseInt(Product_id));
	       }
	       System.out.println("In Shopping Cart ADD\n");
	       System.out.println("Hash Map\n"+items);
	       numberOfItems++;
	       
	       result=true;
	   }
	   else
	   {
		   result=false;
	   }
	   return result;
   }

   public void remove(String Product_id) {
	 System.out.println("In remove");
	 System.out.println(Product_id);
       if(items.containsKey(Product_id)) {
           ShoppingCartItem scitem = (ShoppingCartItem) items.get(Product_id);
           scitem.decrementQuantity();
           IncrementStock(Integer.parseInt(Product_id));
           System.out.println("In remove If");
           if(scitem.getQuantity() <= 0)
               items.remove(Product_id);

           numberOfItems--;
       }
   }

   public Collection getItems() {
       return items.values();
   }

   protected void finalize() throws Throwable {
       items.clear();
   }

   public int getNumberOfItems() {
       return numberOfItems;
   }
   public double getTotal() {
       double amount = 0.0;

       for(Iterator i = getItems().iterator(); i.hasNext(); ) {
           ShoppingCartItem item = (ShoppingCartItem) i.next();
           Product prod = (Product) item.getItem();

           amount += item.getQuantity()* prod.getSell_price();
       }
       return roundOff(amount);
   }

   private double roundOff(double x) {
       long val = Math.round(x*100); // cents
       return val/100.0;
   }

   public void clear() {
       items.clear();
       numberOfItems = 0;
   }
   
   public boolean CheckStock(int Product_id)
   {
	    boolean result=false;
	   	SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj;
		Product p=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("product_id",Product_id));
			//c.addOrder(Order.desc("time"));
			//c.setMaxResults(4);
			obj= (ArrayList) c.list();
			Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				p = (Product)itr.next();
				System.out.println(p.getStock());
			}
			System.out.println("boolean is "+result);
			if(p.getStock()>0)
			{
				result=true;
				System.out.println("boolean is "+result);
			}
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		System.out.println("boolean is "+result);
		return result;
	   
   }
   
   public void DecrementStock(int Product_id)
   {
	    boolean result=false;
	   	SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj;
		Product p=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("product_id",Product_id));
			obj= (ArrayList) c.list();
			Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				p = (Product)itr.next();
				System.out.println(p.getStock());
				int qty=p.getStock();
				p.setStock(qty-1);
			}
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	   
   }
   
   public void IncrementStock(int Product_id)
   {
	    boolean result=false;
	   	SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj;
		Product p=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("product_id",Product_id));
			obj= (ArrayList) c.list();
			Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				p = (Product)itr.next();
				System.out.println(p.getStock());
				int qty=p.getStock();
				p.setStock(qty+1);
			}
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	   
   }
}


