package com.utils;

import java.util.List;
import com.entity.UsersResourse;

public class CopyOfTreeBuilder {
	
	private StringBuffer sb;
	
	public TreeDataConverter tdConverter;
	
	public CopyOfTreeBuilder(TreeDataConverter tdConverter) {
		this.tdConverter = tdConverter;
	}
	
	/**
	 * 示例数据 {"treedata":[{ "id": "2", "text": "美国", "value": "source", "showcheck": false, "complete": true, "isexpand": false, "checkstate": 0, "hasChildren": true, "ChildNodes": null},{ "id": "1", "text": "中国", "value": "source", "showcheck": false, "complete": true, "isexpand": false, "checkstate": 0, "hasChildren": true, "ChildNodes": [{ "id": "3", "text": "浙江", "value": "source", "showcheck": false, "complete": true, "isexpand": false, "checkstate": 0, "hasChildren": true, "ChildNodes": null},{ "id": "4", "text": "河南", "value": "source", "showcheck": false, "complete": true, "isexpand": false, "checkstate": 0, "hasChildren": true, "ChildNodes": [{ "id": "9", "text": "周口", "value": "source", "showcheck": false, "complete": true, "isexpand": false, "checkstate": 0, "hasChildren": true, "ChildNodes": null}]}]} ]}
	 * @param list
	 * @param pid
	 * @return
	 */
	public StringBuffer getTreeData(List<UsersResourse> list,int pid) {
		sb = new StringBuffer();
		
		sb.append("{\"treedata\":[");
		
		bulidTree(list, 0);
		
		sb.replace(sb.length()-1, sb.length(), " ]}");
		
		return sb;
	}
	
	private void bulidTree(List<UsersResourse> list,int pid) {
		UsersResourse rolef ;
		for (int i = 0; i < list.size(); i++) {
			rolef = list.get(i);
			if( pid == rolef.getParentCode()){
				list.remove(i);
				i=i-1;
				if (rolef.getType().equals("1")) {
					sb.append("{ \"" +tdConverter.getTreeAttrId()+ "\": \""+rolef.getPriid()+"\", \"" +tdConverter.getTreeAttrText()+ "\": \""+rolef.getPriname()+"\", \"" +tdConverter.getTreeAttrChildren()+ "\": [");
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
					sb.append("{ \"" +tdConverter.getTreeAttrId()+ "\": \""+rolef.getPriid()+"\", \"" +tdConverter.getTreeAttrText()+ "\": \""+rolef.getPriname()+"\", \"" +tdConverter.getTreeAttrUrl()+ "\": \""+rolef.getUrl()+"\", \"value\": \"source\", \"showcheck\": false, \"complete\": true, \"isexpand\": false, \"checkstate\": 0, \"hasChildren\": false, \"ChildNodes\": null},");
				}
			}
		}
	}
	
}
