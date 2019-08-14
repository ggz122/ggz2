package demo1;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Test {
	public static void main(String[] args) {
		String a ="abc";
		String b = new String();
		b="abc";
		String c = new String("abc");
		System.out.println(a==b);
		System.out.println(b==c);
		System.out.println(a==c);
		System.out.println(a.equals(c));
	}
	
	

   /* public static void main(String[] args) throws IOException {
    	String[] str = new String[2];
        str[1]="1";
		System.out.println(str[1]);
	    reader();
	}
    public static void reader() throws IOException{
    	File file = new File("D:/aa.txt");
    	BufferedReader reader = new BufferedReader(new FileReader(file));
    	String str = null;
    	while((str=reader.readLine())!=null){
    		System.out.println(str);
    	}
    	reader.close();
    }*/
	
}
