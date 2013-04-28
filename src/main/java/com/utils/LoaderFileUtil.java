package com.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;


public class LoaderFileUtil {
	public static List<NameValuePair> loadTBOauth(String properties) throws IOException{
		List <NameValuePair> params = new ArrayList<NameValuePair>();
		Properties  p = new Properties();
		p = UtilsProperties.loadPropertiesByFile(properties);

		Set<Entry<Object, Object>> entrySet = p.entrySet();
		for(Entry<Object, Object> entry : entrySet){			
			params.add(new BasicNameValuePair(((String)entry.getKey()).trim(), ((String)entry.getValue()).trim()));
		}
		return params;
	}
}
