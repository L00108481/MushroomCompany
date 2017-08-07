package mushroom.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import mushroom.spring.model.Customer;

public class CustomerDAOImpl implements CustomerDAO {
	 
    private JdbcTemplate jdbcTemplate;
 
    public CustomerDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
 
    @Override
    public void saveOrUpdate(Customer customer) {
        if (customer.getId() > 0) {
            // update
            String sql = "UPDATE contact SET name=?, email=?, address=?, "
                        + "telephone=? WHERE contact_id=?";
            jdbcTemplate.update(sql, customer.getName(), customer.getEmail(),
            		customer.getAddress(), customer.getTelephone(), customer.getId());
        } else {
            // insert
            String sql = "INSERT INTO contact (name, email, address, telephone)"
                        + " VALUES (?, ?, ?, ?)";
            jdbcTemplate.update(sql, customer.getName(), customer.getEmail(),
            		customer.getAddress(), customer.getTelephone());
        }
     
    }
 
    @Override
    public void delete(int customerId) {
        String sql = "DELETE FROM contact WHERE contact_id=?";
        jdbcTemplate.update(sql, customerId);
    }
 
    @Override
    public List<Customer> list() {
        String sql = "SELECT * FROM contact";
        List<Customer> listCustomer = jdbcTemplate.query(sql, new RowMapper<Customer>() {
     
            @Override
            public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
            	Customer aCustomer = new Customer();
     
            	aCustomer.setId(rs.getInt("contact_id"));
            	aCustomer.setName(rs.getString("name"));
            	aCustomer.setEmail(rs.getString("email"));
            	aCustomer.setAddress(rs.getString("address"));
            	aCustomer.setTelephone(rs.getString("telephone"));
     
                return aCustomer;
            }
     
        });
     
        return listCustomer;
    }
 
    @Override
    public Customer get(int customerId) {
        String sql = "SELECT * FROM contact WHERE contact_id=" + customerId;
        return jdbcTemplate.query(sql, new ResultSetExtractor<Customer>() {
     
            @Override
            public Customer extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                	Customer customer = new Customer();
                	customer.setId(rs.getInt("contact_id"));
                	customer.setName(rs.getString("name"));
                	customer.setEmail(rs.getString("email"));
                	customer.setAddress(rs.getString("address"));
                	customer.setTelephone(rs.getString("telephone"));
                    return customer;
                }
     
                return null;
            }
     
        });
    }
 
}
