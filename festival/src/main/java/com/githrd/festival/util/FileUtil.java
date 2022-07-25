package com.githrd.festival.util;


import java.io.*;

public class FileUtil {
	
	public static String rename(String path, String oldName) {		
		
		int count = 0; 
		
		String newName = oldName;
		
		File file = new File(path, newName);
		
		while(file.exists()) {			
			count++;
			int len = oldName.lastIndexOf(".");
			String preName = oldName.substring(0, len); 
			String ext = oldName.substring(len); 
			newName = preName + "_" + count + ext;
			
			file = new File(path, newName);
		}		
		return newName;
	}
}
