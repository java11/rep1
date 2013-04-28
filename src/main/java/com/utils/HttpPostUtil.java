package com.utils;

import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class HttpPostUtil {
	private HttpPostUtil(){};
	
	public static String doPost(String url, List<NameValuePair> params){
		String result=null;
		HttpPost httpRequest = new HttpPost(url); 
		try 
        { 
          /* 添加请求参数到请求对象*/
		  httpRequest.setEntity(new UrlEncodedFormEntity(params, "utf-8"));  	  
		  		  
          /*发送请求并等待响应*/
          HttpResponse httpResponse = new DefaultHttpClient().execute(httpRequest); 
          /*若状态码为200 ok*/
          if(httpResponse.getStatusLine().getStatusCode() == 200)  
          { 
            /*读返回数据*/
        	  result= EntityUtils.toString(httpResponse.getEntity(),"utf-8"); 
          }
        } 
        catch (Exception e) {  
          e.printStackTrace(); 
        } 
		return result; 
	}
}
