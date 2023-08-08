package com.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.ProductEntity;

@Repository
public interface MagicDaoRepository extends JpaRepository<ProductEntity,Integer>{

	Optional<ProductEntity> findByUsernameAndPassword(String username, String password);

}
