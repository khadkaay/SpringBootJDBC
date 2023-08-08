package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.MagicDaoRepository;
import com.dto.ProductDTO;
import com.entity.ProductEntity;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
	MagicDaoRepository magicDaoRepository;

	@Override
	public ProductDTO authenticateVendor(String username, String password) {
		
		Optional<ProductEntity> optional = magicDaoRepository.findByUsernameAndPassword(username,password);
		ProductDTO pdto = null;
		
		if(optional.isPresent()) {
			
			ProductEntity pren = optional.get();
			pdto = new ProductDTO();
			BeanUtils.copyProperties(pren, pdto);
			return pdto;
		}
		else {
			return pdto;
		}
	}

	@Override
	public List<ProductDTO> showAllProducts() {
		
		List<ProductEntity> prenlist = magicDaoRepository.findAll();
		
		List<ProductDTO> pdtolist = new ArrayList<>();
		
		if(prenlist.size()>0) {
			
			for(ProductEntity temp:prenlist) {
				
				ProductDTO pdto = new ProductDTO();
				BeanUtils.copyProperties(temp, pdto);
				pdtolist.add(pdto);
			}
		}
		return pdtolist;
	}

	@Override
	public void registerNewProduct(ProductDTO pdto) {
		
		ProductEntity pren = new ProductEntity();
		BeanUtils.copyProperties(pdto, pren);
		magicDaoRepository.save(pren);
	}

	@Override
	public ProductDTO findProduct(int productid) {
		Optional<ProductEntity> optional = magicDaoRepository.findById(productid);
		ProductDTO pdto = null;
		
		if(optional.isPresent()) {
			
			ProductEntity pren = optional.get();
			pdto = new ProductDTO();
			BeanUtils.copyProperties(pren, pdto);
			return pdto;
		}
		else {
			return pdto;
		}
		
	}

	@Override
	public void updateProduct(ProductDTO pdto) {
		
		ProductEntity pren = new ProductEntity();
		BeanUtils.copyProperties(pdto, pren);
		magicDaoRepository.save(pren);
	}

	@Override
	
	public void deleteProduct(int productid) {
		magicDaoRepository.deleteById(productid);
	}
	
}
