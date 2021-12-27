package com.sist.action;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.sist.action.SistAction;

public class Change_weatherAction implements SistAction {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			HttpSession session = request.getSession();
			request.setCharacterEncoding("utf-8");	//나중에 사용자가 동을 한글로 입력할거니까..?
		try{
			String nx = "92"; 
			String ny = "131"; 
			String baseDate = "20211226";
			String baseTime = "1400"; 
			String serviceKey = "1UlV037okXGyhYGOoV4oRwalkxHMesBlS74QzjZXoOS23BwW1Q62QOLfVllVd6Bm4w1EhYLz6YZFFMfVZstoJw%3D%3D";
			String urlStr = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?" + "serviceKey=" + serviceKey + "&pageNo=1" + "&numOfRows=4000" + "&dataType=JSON" + "&base_date=" + baseDate + "&base_time=" + baseTime + "&nx=" + nx + "&ny=" + ny; 
			
			URL url = new URL(urlStr);  
			BufferedReader bf; 
			String line = ""; 
			String result="";
			 
			bf = new BufferedReader(new InputStreamReader(url.openStream())); 
			
			while((line=bf.readLine())!=null){ 
				result=result.concat(line); 
				System.out.println(result);
			}
		
			JSONParser parsar = new JSONParser();
	        JSONObject obj = (JSONObject) parsar.parse(result);
	        JSONObject response1 = (JSONObject) obj.get("response");
	        JSONObject body = (JSONObject)response1.get("body");
	        JSONObject items = (JSONObject)body.get("items");
	        JSONArray item = (JSONArray)items.get("item"); 
	
			String category; 
			JSONObject WeatherData; 
	        String date = "";
	        String time = "";
	        String dataValue_tmp = "";
	        String dataValue_pop = "";
	        String info = "";
	        String fdate = "";
	        String ftime = "";
			
			for(int i = 0 ; i < item.size(); i++) 
			{ 
				 WeatherData = (JSONObject) item.get(i);
	                
                date = WeatherData.get("baseDate").toString();
                time = WeatherData.get("baseTime").toString();
                dataValue_pop = WeatherData.get("fcstValue").toString();
                dataValue_tmp = WeatherData.get("fcstValue").toString();
                info = WeatherData.get("category").toString();
                ftime = WeatherData.get("fcstTime").toString();
                fdate = WeatherData.get("fcstDate").toString();
               
                
                if(fdate.equals("20211226") && ftime.equals("1700")) {
                	if(info.equals("POP")) {
                		info = "강수확률 : ";
                		dataValue_pop  = dataValue_pop+" %";
                    	System.out.print("배열의 "+i+"번째 요소 ==> "); 
                    	System.out.print(info);
                    	System.out.println(dataValue_pop);  
                	}
                	if(info.equals("TMP")){
                		info = "기온 : ";
                		dataValue_tmp = dataValue_tmp+"℃";
     	                System.out.print("배열의 "+i+"번째 요소 ==> "); 
     	                System.out.print(info);
     	                System.out.println(dataValue_tmp);
                	}           	                	
                }
			}				
			
			session.setAttribute("dataValue_tmp",dataValue_tmp);	
			session.setAttribute("dataValue_pop",dataValue_pop);
			
			bf.close(); 
			
		}catch(Exception e){ 
			System.out.println(e.getMessage()); 
		} 
		
		return "change_weather.jsp";
	}

}
