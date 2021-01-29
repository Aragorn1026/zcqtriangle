package com.example.zcqtriangle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.util.Date;

@SpringBootApplication
@RestController
public class ZcqtriangleApplication {

	public static void main(String[] args) {
//		printtriangle("6");
		SpringApplication.run(ZcqtriangleApplication.class, args);
	}

	@Autowired
	RestTemplate restTemplate;

	@GetMapping("/zcqtriangle")
	public String zcqtriangle(@RequestParam(value = "name", defaultValue = "NCS") String name) throws IOException {

		String url = "http://zcqtest2/getdate2?name=";

		return String.format(restTemplate.getForObject(url,String.class) + ", Hello zcqtriangle v3 %s! \n", name);

	}

	@GetMapping("/printtriangle")
	public static String printtriangle(@RequestParam(value = "value", defaultValue = "123456") String value){

		String result = "";
		Date date = new Date() ;
		result += String.format(" --> NCS: zcqtriangle v3: " + date.toString() + " <-- \n<br/>");

		int length = value.length();

		for(int i=1;i<=length;i++)
		{
			for(int j=i+1;j<=length;j++)
			{
				result += " ";
			}
			for(int z=1;z<=i;z++)
			{
				result = result + "$"+" ";
			}
			result += "\n<br/>";
		}

		return String.format(result);
	}

	public static String printtriangleold(){

		String result = "";
		Date date = new Date() ;
		result += String.format(" --> NCS: zcqtriangle v1: " + date.toString() + " <-- \n<br/>");

		String value = "oldversion";
		int length = value.length();

		for(int i=1;i<=length;i++)
		{
			for(int j=i+1;j<=length;j++)
			{
				result += " ";
			}
			for(int z=1;z<=i;z++)
			{
				result = result + "*"+" ";
			}
			result += "\n<br/>";
		}

		return String.format(result);
	}



}
