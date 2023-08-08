package com.service;

import java.util.List;

import com.dto.ProductDTO;

public interface ProductService {

	ProductDTO authenticateVendor(String username, String password);

	List<ProductDTO> showAllProducts();

	void registerNewProduct(ProductDTO pdto);

	ProductDTO findProduct(int productid);

	void updateProduct(ProductDTO pdto);

	void deleteProduct(int productid);

}
