package com.image.controller;

import java.io.File;

public class App{

	   public static void main (String args[]) {

		   String workingDir = System.getProperty("user.dir");
		   System.out.println("Current working directory : " + workingDir);
           
		   
		   File file = new File("picture_main_Sbrown.jpg");
		   String absolutePath = file.getAbsolutePath();
		   System.out.println(absolutePath);
	   }
	}