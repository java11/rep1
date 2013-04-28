package com.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import com.utils.UtilsLog;

public class UtilsTaobao {

	public static String queryItemProps(String cid, String type1, String type2) throws IOException {
		DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();
		domFactory.setNamespaceAware(true); 
		DocumentBuilder builder;
		String pros = null;
		InputStream in = null;
		try {
			builder = domFactory.newDocumentBuilder();
			in = new BufferedInputStream(new FileInputStream(new File(Constants.APP_CONFIGFILE_PATH + Constants.ITEMCATS_PATH + cid + ".xml")));;
			Document doc = builder.parse(in);
			
			XPathFactory factory = XPathFactory.newInstance();
			XPath xpath = factory.newXPath();
			String expStr = "//item_props/item_prop[name='"+type1+"']/prop_values/prop_value[name='"+type2+"']/vid/text()";
			XPathExpression expr = xpath.compile(expStr);
			Object result = expr.evaluate(doc, XPathConstants.NODESET);
			NodeList nodes = (NodeList) result;
			if(nodes.item(0)==null) return null;
			pros = nodes.item(0).getNodeValue();
			
			expStr = "//item_props/item_prop[name='"+type1+"']/pid/text()";
			expr = xpath.compile(expStr);
			result = expr.evaluate(doc, XPathConstants.NODESET);
			nodes = (NodeList) result;
			pros = nodes.item(0).getNodeValue() + ":"+ pros + ";";
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		}finally{
			if(in != null) in.close();
		}
		
		return pros;
	}
	

	public static String queryItemPropsNodeVal(String cid, String type1) throws IOException {
		String expStr = "//item_props/item_prop[name='"+type1+"']/pid/text()";
		String filename = Constants.APP_CONFIGFILE_PATH + Constants.ITEMCATS_PATH + cid + ".xml";
		
		return queryNodeVal(filename, expStr);
	}
	public static String queryItemCatsNodeVal(String cid, String type1){
		String expStr = "//item_cats/item_cat[name='"+type1+"']/cid/text()";
		String filename = Constants.APP_CONFIGFILE_PATH + Constants.ITEMCATS_PATH + cid + ".xml";
		String queryNodeVal = null;
		try {
			queryNodeVal = queryNodeVal(filename, expStr);
		} catch (IOException e) {
			UtilsLog.LOG.error(filename + "文件不存在!", e);
		}
		return queryNodeVal;
	}
	
	public static String queryNodeVal(String filename, String expStr) throws IOException {
		String value = null;
		DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();
		domFactory.setNamespaceAware(true); 
		DocumentBuilder builder;
		InputStream in = null;
		try {
			builder = domFactory.newDocumentBuilder();
			in = new BufferedInputStream(new FileInputStream(new File(filename)));
			Document doc = builder.parse(in);
			
			XPathFactory factory = XPathFactory.newInstance();
			XPath xpath = factory.newXPath();
			XPathExpression expr = xpath.compile(expStr);
			Object result = expr.evaluate(doc, XPathConstants.NODESET);
			NodeList nodes = (NodeList) result;
			if(nodes.getLength() == 0){
				return null;
			}
			value = nodes.item(0).getNodeValue();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		}finally{
			if(in != null) in.close();
		}
		
		return value;
	}
	
	public static List<String> queryItemPropsPidVid(String filename, String type1){
		List<String> list = new ArrayList<String>();
		SAXReader reader = new SAXReader();
		org.dom4j.Document document = null;
		File file = new File(Constants.APP_CONFIGFILE_PATH + Constants.ITEMCATS_PATH + filename+".xml");
		try {
			document = reader.read(file);
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		@SuppressWarnings("unchecked")
		List<Node> listNode = (List<Node>) document.selectNodes("//item_props/item_prop[name='"+type1+"']/prop_values/prop_value");
		String pid = ((Node) document.selectNodes("//item_props/item_prop[name='"+type1+"']/pid/text()").get(0)).asXML();
		for (Node n : listNode) {
			Element messagesElement = (Element) n;
			list.add(pid + ":" + messagesElement.element("vid").getText());
		}  
		return list;
	}
	
	public static Map<String, String> queryItemPropsMust(String filename){
		Map<String, String> map = new HashMap<String, String>();
		SAXReader reader = new SAXReader();
		org.dom4j.Document document = null;
		
		File file = new File(Constants.APP_CONFIGFILE_PATH  + Constants.ITEMCATS_PATH + filename);
		try {
			document = reader.read(file);
		} catch (DocumentException e) {
			UtilsLog.LOG.error("读取文件异常! " + file + ", " + e.getMessage());
			return null;
		}
		@SuppressWarnings("unchecked")
		List<Node> listNode = (List<Node>) document.selectNodes("//item_props/item_prop[must='true']");
		for (Node n : listNode) {
			Element element = (Element) n;
			Element valueElement = element.element("prop_values");
			String value = null;
			String vid_name = null;
			String vid_value = null;
			if(valueElement != null){
				vid_name = ((Element)(valueElement.elements("prop_value").get(0))).element("name").getText();
				vid_value = ((Element)(valueElement.elements("prop_value").get(0))).element("vid").getText();
			}
			//pid_name$vid_name$vid_value
			value = element.element("name").getText() + "@" + vid_name +"@" + vid_value;
			map.put(element.element("pid").getText(), value);
		}  
		
		return map;
	}
	
	
}
