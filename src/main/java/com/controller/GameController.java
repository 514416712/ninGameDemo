package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Game;
import com.bean.Msg;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.GameService;

@Controller
public class GameController {
	@Autowired
	GameService gameService;

	/**
	 * 单个批量二合一 批量删除：1-2-3 单个删除：1
	 * 
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/game/{ids}", method = RequestMethod.DELETE)
	public Msg deletegame(@PathVariable("ids") String ids) {
		// 批量删除
		if (ids.contains("-")) {
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			// 组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			gameService.deleteBatch(del_ids);
		} else {
			Integer id = Integer.parseInt(ids);
			gameService.deleteGame(id);
		}
		return Msg.success();
	}

	 /**
	  * 员工更改
	  * @param Game
	  * @param request
	  * @return
	  */
	@ResponseBody
	@RequestMapping(value = "/game/{id}", method = RequestMethod.PUT)
	public Msg savegame(Game Game, HttpServletRequest request) {
		System.out.println("请求体中的值：" + request.getParameter("gender"));
		System.out.println("将要更新的员工数据：" + Game);
		gameService.updateGame(Game);
		return Msg.success();
	}

	/**
	 * 根据id查询员工
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/game/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getgame(@PathVariable("id") Integer id) {

		Game game = gameService.getGame(id);
		return Msg.success().add("game", game);
	}

	/**
	 * 导入jackson包。
	 * 
	 * @param pn
	 * @return
	 */
	@RequestMapping("/games")
	@ResponseBody
	public Msg getgamesWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 这不是一个分页查询
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Game> games = gameService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(games, 5);
		return Msg.success().add("pageInfo", page);
	}

	/**
	 * 员工保存  
	 * 
	 * 
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
    @RequestMapping("/game")
    @ResponseBody//@RequestParam("game")
    public Msg editGame(Game game/*接收商品图片*/ ){  
              
        //调用service更新商品信息，页面需要将商品信息传到此方法  
        gameService.saveGame(game);
        //重定向到商品的查询列表  
        return Msg.success();  
      
    }  	
	/**
	 * 查询员工数据（分页查询）
	 * 
	 * @return
	 */
	// @RequestMapping("/games")
	public String getgames(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 这不是一个分页查询；
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Game> games = gameService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(games, 5);
		model.addAttribute("pageInfo", page);

		return "list";
	}

	@RequestMapping("/list")
	public String getlist() {
		return "list";
	}
	
	@RequestMapping("/hfive")
	public String getgamess(Model model) {
		List<Game> gameMessage = gameService.getmessage();
 		List<Game> gameMessage1 = gameService.getmessage1();
 		List<Game> gameMessage2 = gameService.getmessage2();
		model.addAttribute("gameMessage", gameMessage);
 		model.addAttribute("gameMessage1", gameMessage1);
 		model.addAttribute("gameMessage2", gameMessage2);
		return "h5";
	}
}
