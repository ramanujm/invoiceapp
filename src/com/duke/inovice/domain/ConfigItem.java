package com.duke.inovice.domain;

import java.util.HashMap;

/**
 * holds the configuration items like taxes, industry list etc..
 * @author root
 *
 */
public class ConfigItem {
	
	private HashMap<String,HashMap<String,String>> groups;

	
	public ConfigItem() {
		if (groups == null) {
			groups = new HashMap<String, HashMap<String,String>>();
		}
	}
	
    
	public HashMap<String, String> getItems(String group, String item) {		
		return groups.get(group);
	}

	public void setItems(String group , HashMap<String, String> items) {
		groups.put(group, items);
	}
	
	public void addConfigItem(String group, String item, String value) {
		if ( groups.get(group) == null) {
			 HashMap<String, String> items = new HashMap<String, String>();
			 groups.put(group, items);

		}
		 groups.get(group).put(item, value);
	}
	public String getItemValue(String group, String item) {
		if ( groups.get(group) == null) {
			 return null;
		}
		
		return groups.get(group).get(item);
	}
	
}
