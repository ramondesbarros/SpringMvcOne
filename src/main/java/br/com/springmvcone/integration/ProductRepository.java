package br.com.springmvcone.integration;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.springmvcone.domain.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long>{
	
	
}
