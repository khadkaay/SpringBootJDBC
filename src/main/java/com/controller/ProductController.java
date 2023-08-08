package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.ProductDTO;
import com.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productservice;
	
	//Log In
	@GetMapping({"/signin","/"})
	public String loginPage() {
		
		return "login";
	}
	
	@PostMapping("/validate")
	public String authenticate(@RequestParam String username, @RequestParam String password, Model model) {
		
		ProductDTO pdto = productservice.authenticateVendor(username,password);
		
		if (pdto != null) {
			model.addAttribute("pdto",pdto);
			return "success";
		}
		else {
			model.addAttribute("fail","Invalid Credentials! Please Try Again!");
			return "login";
		}
	}
	
	//Show All
	@GetMapping("/showall")
	public String allProducts(Model model) {
		
		List<ProductDTO> pdtolist = productservice.showAllProducts();
		model.addAttribute("pdtolist",pdtolist);
		return "allRecords";
	}
	
	//Register new Product
	@GetMapping("/register")
	public String registerNew() {
		
		return "registration";
	}
	
	@PostMapping("/newregister")
	public String addNewProduct(@ModelAttribute ProductDTO pdto, Model model) {
		
		productservice.registerNewProduct(pdto);
		model.addAttribute("message","Successful Registration!!");
		return "registration";
	}
	
	//update a product
	@GetMapping("/updatepage")
	public String getProduct(@RequestParam int productid,Model model) {
		
		ProductDTO pdto = productservice.findProduct(productid);
		model.addAttribute("pdto",pdto);
		return "update";
	}
	
	@PostMapping("/updateprod")
	public String updateProduct(@ModelAttribute ProductDTO pdto, Model model) {
		
		productservice.updateProduct(pdto);
		model.addAttribute("msg","Update Successful!!");
		return "redirect:/showall";
	}
	
	@GetMapping("/remove")
	public String removeProduct(@RequestParam int productid, Model model) {
		
		productservice.deleteProduct(productid);
		model.addAttribute("deletemsg","Deletion Successful!!");
		return "redirect:/showall";
	}
	
}



