package mushroom.spring.dao;

import java.util.List;

import mushroom.spring.model.Customer;

public interface CustomerDAO {
    
    public void saveOrUpdate(Customer customer);
     
    public void delete(int customerId);
     
    public Customer get(int customerId);
     
    public List<Customer> list();
}
