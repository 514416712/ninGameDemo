package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Game;
import com.bean.GameExample;
import com.bean.GameExample.Criteria;
import com.dao.GameMapper;

@Service
public class GameService {
	@Autowired
	private GameMapper gameMapper;
	
	/**
	 * 查询游戏信息
	 */
	public List<Game> getmessage(){
		return gameMapper.selectgamelist();
	}
	
	
	/**
	 *查询所有游戏
	 *
	 */
	public List<Game> getAll(){
		return gameMapper.selectByExampleWithCate(null);
	}
	
	/**
	 * 游戏保存
	 */
	public void saveGame(Game game) {
		gameMapper.insertSelective(game);
	}
	
	/**
	 * 按照id查询游戏
	 * 
	 */
	public Game getGame(Integer id) {
		Game game = gameMapper.selectByPrimaryKey(id);
		return game;
	}
	
	/**
	 * 游戏更新
	 */
	public void updateGame(Game game) {
		gameMapper.updateByPrimaryKeySelective(game);
	}
	
	/**
	 * 游戏删除
	 */
	public void deleteGame(Integer id) {
		// TODO Auto-generated method stub
		gameMapper.deleteByPrimaryKey(id);
	}
	
	public void deleteBatch(List<Integer> ids) {
		// TODO Auto-generated method stub
		GameExample example = new GameExample();
		Criteria criteria = example.createCriteria();
		//delete from xxx where emp_id in(1,2,3)
		criteria.andIdIn(ids);
		gameMapper.deleteByExample(example);
	}


	public List<Game> getmessage1() {
		// TODO Auto-generated method stub
		return gameMapper.selectgamelist1();
	}
	
	public List<Game> getmessage2() {
		// TODO Auto-generated method stub
		return gameMapper.selectgamelist2();
	}
}
