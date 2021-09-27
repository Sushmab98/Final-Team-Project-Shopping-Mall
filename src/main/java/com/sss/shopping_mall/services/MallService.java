package com.sss.shopping_mall.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.sss.shopping_mall.modal.Mall;
import com.sss.shopping_mall.repository.MallRepository;

@Service
@Transactional
@Repository
public class MallService {
private final MallRepository mallRepository;
	
	public MallService(MallRepository mallRepository) {
		this.mallRepository=mallRepository;
	}
	
	public void saveMyMall(Mall mall ) {
		mallRepository.save(mall);
	}
	
	public List<Mall> showAllMalls(){
		List<Mall> malls = new ArrayList<Mall>();
		for(Mall mall : mallRepository.findAll()) {
			malls.add(mall);
		}
		
		return malls;
	}
	
	public void deleteMyMall(int id) {
		mallRepository.deleteById(id);
	}
	
	public Optional<Mall> editMall(int id) {
		
		
		 return mallRepository.findById(id);
		
	}
	
	public Mall findByIdAndMallname(int id, String mallname) {
		return mallRepository.findByIdAndMallname(id, mallname);
	}
	
}
