package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;


import com.example.demo.dao.TinTucRepository;
import com.example.demo.model.TinTuc;



@Service
@Transactional
public class TinTucService {
	
	
	private final TinTucRepository tinTucRepository;

	public TinTucService(TinTucRepository tinTucRepository)
	{
		this.tinTucRepository = tinTucRepository;
	}
	
	public List<TinTuc> findAll(){
		List<TinTuc> tintucs = new ArrayList<>();
		for(TinTuc tintuc : tinTucRepository.findAll()){
			tintucs.add(tintuc);
		}
		return tintucs;
	}
	public TinTuc findTask(int id)
	{
		return tinTucRepository.findById(id).get();
	}
	public void save(TinTuc tintuc) {
		tinTucRepository.save(tintuc);
	}
	
	public void delete(int id) {
		tinTucRepository.deleteById(id);
	}
	public List<TinTuc> findTinTucGanDay(){
		List<TinTuc> tintucs = new ArrayList<TinTuc>();
		
		for(TinTuc i:tinTucRepository.findAll())
			tintucs.add(i);
		
		List<TinTuc> tintucganday = new ArrayList<TinTuc>();
		if(tintucs.size()>=4)
		{
			try {
				tintucganday.add(tintucs.get(tintucs.size()-1));
				tintucganday.add(tintucs.get(tintucs.size()-2));
				tintucganday.add(tintucs.get(tintucs.size()-3));
				tintucganday.add(tintucs.get(tintucs.size()-4));
			}catch(Exception e) {}
		}
		else
		{
			return tintucs;
		}
		
		return tintucganday;
	}
}
