package com.core.cache;

import java.util.List;
import net.sf.ehcache.Cache;
import org.apache.log4j.Logger;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;

public class MethodCacheAfterAdvice implements AfterReturningAdvice,
		InitializingBean {

	private Cache cache;

	public void setCache(Cache cache) {
		this.cache = cache;
	}

	public MethodCacheAfterAdvice() {
		super();
	}

	public void afterReturning(Object returnValue,
			java.lang.reflect.Method method, Object[] args, Object classObj)
			throws Throwable {
		String className = classObj.getClass().getName();
		List list = cache.getKeys();
		for (int i = 0; i < list.size(); i++) {
			String cacheKey = String.valueOf(list.get(i));
			if (cacheKey.startsWith(className)) {
				cache.remove(cacheKey);
				Logger.getLogger(getClass()).debug("remove cache: " + cacheKey);
			}
		}
	}

	public void afterPropertiesSet() throws Exception {
		Assert.notNull(cache, "需要一个缓存. 使用setCache(Cache)分配一个.");
	}
}
