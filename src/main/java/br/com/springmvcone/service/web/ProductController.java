package br.com.springmvcone.service.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.springmvcone.domain.Product;
import br.com.springmvcone.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/save", method = RequestMethod.POST, consumes = "application/json")
	public String saveBook(@RequestBody Product product) {
		productService.saveProduct(product);
		return "reditect:/product/" + product.getIdProduct();
	}
	
}
