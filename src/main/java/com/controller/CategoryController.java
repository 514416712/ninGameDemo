package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Category;
import com.bean.Msg;
import com.service.CategoryService;
/**
 * 处理种类有关请求
 * @author Administrator
 *
 */
@Controller
public class CategoryController {
	@Autowired
	private  CategoryService categoryService;
	
	/**
	 * 返回种类所有信息
	 * @return
	 */
	@RequestMapping("/cates")
	@ResponseBody
	public Msg getCates() {
		//查出所有种类信息
		List<Category> cates = categoryService.getCates();
		return Msg.success().add("cates", cates);
	}
}
