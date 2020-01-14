package com.kiki.service;

import java.util.List;

import com.kiki.domain.EchartsResult;
import com.kiki.domain.ZTreeNodeResult;

public interface TbItemCatService {

	List<ZTreeNodeResult> findTbItemCatById(Long parentId);

	List<EchartsResult> statisticsItem();

}
