package com.core.dao.interfaces;

import java.util.List;
import java.util.Properties;
import com.core.utils.Page;

public interface BaseDao<T> {

	/**
	 * 根据主键查询entity
	 * @param id
	 * @return
	 */
	T get(String id);

	/**
	 * 返回所有entity集合
	 * @return
	 */
	List<T> getAll();
	
	/**
	 * 分页查询
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	Page<T> pagedQuery(int pageNo, int pageSize, Properties prop);
	/**
	 * 分页查询，所有的参数都放在props里面
	 * @param props 
	 * @return
	 */
	Page<T> pagedQuery(Properties props);

	/**
	 * 保存entity
	 * @param t
	 * @return
	 */
	int save(T t);

	/**
	 * 根据entity删除
	 * @param t
	 */
	int remove(T t);
	
	/**
	 * 根据主键删除
	 * @param id
	 */
	int removeById(String id);
	
	/**
	 * 根据主键批量删除
	 * @param id
	 */
	int batchRemove(String[] ids);

	int update(T o);
}
