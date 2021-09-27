package com.sss.shopping_mall.repository;

import org.springframework.data.repository.CrudRepository;

import com.sss.shopping_mall.modal.Mall;

public interface MallRepository extends CrudRepository<Mall, Integer> {	
	
	public Mall findByIdAndMallname(int id, String mallowner);


}
