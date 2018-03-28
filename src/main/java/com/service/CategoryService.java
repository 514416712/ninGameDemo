package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Category;
import com.dao.CategoryMapper;

@Service
public class CategoryService {
	@Autowired
	private CategoryMapper categoryMapper;
	
	public List<Category> getCates(){
		 List<Category> list = categoryMapper.selectByExample(null);
		return list;
	}
}
