package com.kiki.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kiki.bean.TbItem;
import com.kiki.service.TbItemService;

@Controller
@RequestMapping("/item")
public class TbItemController {
	@Autowired
	private TbItemService tbItemService;
	/**
	 * 根据id查询商品信息
	 * @param itemId
	 * @return
	 */
	@RequestMapping("/{itemId}")
	@ResponseBody
	public TbItem findTbItemById(@PathVariable Long itemId) {
		System.out.println(itemId);
		TbItem tbItem=tbItemService.findTbItemById(itemId);
		return tbItem;
		
	}
	/**
	 * 查询所有商品
	 * @return
	 */
	@RequestMapping("/showItem")
	public Map<String, Object> showItem(){
		List<TbItem> tbItems =tbItemService.findTbItems();
		 Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("data", tbItems);
	        return map;
	}
}
