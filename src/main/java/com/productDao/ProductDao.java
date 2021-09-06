 package com.productDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.productModel.Product;

@Component

public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public List<Product> getProducts()
	{
		List<Product> loadAll = this.hibernateTemplate.loadAll(Product.class);
		return loadAll;
	}
	@Transactional
	public void deleteProduct(int pid)
	{
		Product load = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(load);
	}
	
	public Product getProduct(int pid)
	{
		return this.hibernateTemplate.get(Product.class, pid);
	}
}
