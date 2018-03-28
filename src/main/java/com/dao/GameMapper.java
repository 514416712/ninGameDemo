package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bean.Game;
import com.bean.GameExample;

public interface GameMapper {
    long countByExample(GameExample example);

    int deleteByExample(GameExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Game record);

    int insertSelective(Game record);

    List<Game> selectByExample(GameExample example);

    Game selectByPrimaryKey(Integer id);
    //新增
    List<Game> selectByExampleWithCate(GameExample example);
    
    Game selectByPrimaryKeyWithCate(Integer id);
   // 
    int updateByExampleSelective(@Param("record") Game record, @Param("example") GameExample example);

    int updateByExample(@Param("record") Game record, @Param("example") GameExample example);

    int updateByPrimaryKeySelective(Game record);

    int updateByPrimaryKey(Game record);
    
    //查询游戏信息
	List<Game> selectgamelist();

	List<Game> selectgamelist1();
	
	List<Game> selectgamelist2();
}