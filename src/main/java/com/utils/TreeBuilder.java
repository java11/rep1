package com.utils;

import java.util.ArrayList;
import java.util.List;
import com.entity.UsersResourse;

public class TreeBuilder {
	
	private StringBuffer sb;
	
	public TreeDataConverter tdConverter;
	
	public TreeBuilder() {
		tdConverter = new TreeDataConverter();
	}
	
	public TreeBuilder(TreeDataConverter tdConverter) {
		if(tdConverter == null){
			tdConverter = new TreeDataConverter();
		}
		this.tdConverter = tdConverter;
	}
	
	/**
	 * @param list
	 * @param pid
	 * @return
	 */
	public StringBuffer getTreeData(List<UsersResourse> list,int pid) {
		sb = new StringBuffer();
		
		sb.append("[");
		
		bulidTree(list, 0);
		
		sb.replace(sb.length()-1, sb.length(), " ]");
		
		return sb;
	}
	
	private void bulidTree(List<UsersResourse> list1,int pid) {
		/**
		 * 复制list对象，防止缓存为空
		 */
		List<UsersResourse> list = new ArrayList<UsersResourse>();
		list.addAll(list1);
		
		UsersResourse rolef ;
		for (int i = 0; i < list.size(); i++) {
			rolef = list.get(i);
			if( pid == rolef.getParentCode()){
				list.remove(i);
				i=i-1;
				sb.append("{ \"" +tdConverter.getTreeAttrId()+ "\": \""+rolef.getPriid()+"\", \"" +tdConverter.getTreeAttrText()+ "\": \""+rolef.getPriname()+"\", ");
				sb.append("\"" +tdConverter.getTreeAttrCustomAttr()+ "\": {\"" +tdConverter.getTreeAttrUrl()+ "\": \""+rolef.getUrl()+ "\",\"" +tdConverter.getTreeAttrType()+ "\": \""+rolef.getType() + "\",\"" +tdConverter.getTreeAttrOrdernum()+ "\": \""+rolef.getOrdernum()+ "\"}");
				if (rolef.getType().equals("1")) {
					sb.append(", \"" +tdConverter.getTreeAttrChildren()+ "\": [");
					bulidTree(list, rolef.getPriid());
					/**
					 * 在此判断是为了，如果此节点还有子节点，但子节点无访问权限
					 */
					if(sb.charAt(sb.length()-1) == '['){
						sb.replace(sb.length()-1, sb.length(), "null},");
					}else{
						sb.replace(sb.length()-1, sb.length(), "]},");
					}
				}else{
					sb.append("},");
				}
			}
		}
	}
	
}
