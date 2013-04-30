package com.action.impl;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.core.cache.CacheHelp;
import com.utils.PagesUtil;


@Scope("prototype")
@Controller
public class CommonAction extends BaseAction{

	@Resource
	private CacheHelp cacheHelp;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6989676553111209678L;

	public void clearCache() {
		cacheHelp.clearCache();
		PagesUtil.outDataToPage("ok");
	}

}
