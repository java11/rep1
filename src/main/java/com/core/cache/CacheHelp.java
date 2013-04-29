package com.core.cache;

import javax.annotation.Resource;

import net.sf.ehcache.Cache;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class CacheHelp {
	private static Logger log = Logger.getLogger(CacheHelp.class);
	
	@Resource(name = "methodCache")
	private  Cache cache;
	
	public void clearCache(){
		
		cache.removeAll();
		log.info("cache removeAll.");
	}
	
	
	public void setCache(Cache cache) {
		this.cache = cache;
	}
}
