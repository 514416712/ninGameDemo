package com.test;

import java.util.Date;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bean.Category;
import com.bean.Game;
import com.dao.CategoryMapper;
import com.dao.GameMapper;

/**
 * 测试dao层的工作
 * @author lfy
 *推荐Spring的项目就可以使用Spring的单元测试，可以自动注入我们需要的组件
 *1、导入SpringTest模块
 *2、@ContextConfiguration指定Spring配置文件的位置
 *3、直接autowired要使用的组件即可
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:applicationContext.xml"})
public class MapperTest {
	
	@Autowired
	CategoryMapper categoryMapper;
	
	@Autowired
	GameMapper gameMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 测试DepartmentMapper
	 */
	@Test
	public void testCRUD(){
	/*	//1、创建SpringIOC容器
		ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
		//2、从容器中获取mapper
		DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);*/
		//System.out.println(categoryMapper);
		
		//1、插入几个种类
//		categoryMapper.insertSelective(new Category(null,"单机游戏 " ));
//		categoryMapper.insertSelective(new Category(null,"打发时间必备"));
//		categoryMapper.insertSelective(new Category(null,"你可能错过的好游戏"));
//		categoryMapper.insertSelective(new Category(null,"分类精选"));
		
		//2、生成游戏数据，测试游戏插入
		//gameMapper.insertSelective(new Game(null,"楚留香",250.0,1,null,null,"#","#","#","#"));
		
		//3、批量插入多个游戏；批量，使用可以执行批量操作的sqlSession。
		
//		for(){
//			employeeMapper.insertSelective(new Employee(null, , "M", "Jerry@atguigu.com", 1));
//		}
		GameMapper mapper = sqlSession.getMapper(GameMapper.class);
		for(int i = 0;i<100;i++){
			mapper.insertSelective(new Game(null,"楚留香"+i,250.0,1,null,null,"#","#","#","#"));
		}
		System.out.println("批量完成");
		
	}

}
