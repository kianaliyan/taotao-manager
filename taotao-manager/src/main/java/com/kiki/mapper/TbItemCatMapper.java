package com.kiki.mapper;

import java.util.List;

import com.kiki.bean.TbItemCat;

public interface TbItemCatMapper {

	List<TbItemCat> findTbItemCatById(Long parentId);

}
