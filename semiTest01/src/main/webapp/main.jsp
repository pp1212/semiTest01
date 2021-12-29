<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css" type="text/css">
<style type="text/css">
#loc {
	margin-top: 30px;
	margin-left: 50px;	
	float: left;
	}
	
.main{
	width: 1400px;
	height: 460px;
	}
.div1{
	width: 50%;
	float: left;	
	}
#weather_title{
	margin-bottom: 10px;
	}
#temp{
	width: 500px;
	height: 150px;
	border: solid 1px #000;	
	margin-left: 100px;
	margin-bottom: 5px;
}
#rain{
	width: 500px;
	height: 150px;
	border: solid 1px #000;	
	margin-left: 100px;
	margin-bottom: 5px;
}
#uv{
	width: 500px;
	height: 150px;
	border: solid 1px #000;	
	margin-left: 100px;

}






.main{
	width: 1400px;
	height: 460px;
	}
.div2{
	width: 50%;
	float: right;	
	}
#fashion_title{
	margin-left: 100px;
	margin-bottom: 10px;
	}
#box2{
	display: flex;
	flex-wrap: wrap;
}

#top{
	width: 250px;
	height: 225px;
	border: solid 1px #000;	
	margin-left: 100px;
	margin-bottom: 10px;
}
#bottom{
	width: 250px;
	height: 225px;
	border: solid 1px #000;	
	margin-left: 10px;
	margin-bottom: 10px;
}

#outer{
	width: 250px;
	height: 225px;
	border: solid 1px #000;	
	margin-left: 100px;
	margin-bottom: 10px;
}

#etc{
	width: 250px;
	height: 225px;
	border: solid 1px #000;	
	margin-left: 10px;
	margin-bottom: 10px;
}


</style>
</head>
<body>
	<div id="wrap">
			<%
				if(session.getAttribute("now_id") == null){
					%>
						<jsp:include page="header1.jsp" />
					<%
				}else{
					%>
						<jsp:include page="header2.jsp" />
					<%
				}
			%>
		<div id="main">
		
		<img class="image-thumbnail">
			<div id="locate">
			<jsp:include page="searchLocation.jsp"/>
				<h3 id="loc">[지역명]</h3> 
					<div class="main">
							<div>
								<section class="div1">
								<h4 id="weather_title">- Weather -</h4>
									<div id="box1">
										<div id="temp">${dataValue_tmp }</div>
										<div id="rain">${dataValue_pop }</div>
										<div id="uv">${today_uv }</div>
									</div>
								</section>
							</div>
					</div>	
					
					
				<a href="change_fashion.do">날씨에맞는 옷 보기</a>
				<div class="main">
					<div>
						<section class="div2">
						<h4 id="fashion_title">- Fashion -</h4>
							<div id="box2">
								<div id="top"><img src="images/${top_type }" width="250px" height="225px"></div>
								<div id="bottom"><img src="images/${bottoms_type }" width="250px" height="225px"></div>
								<div id="outer"><img src="images/${outer_type }" width="250px" height="225px"></div>
								<div id="etc"><img src="images/${etc_type }" width="250px" height="225px"></div>
							</div>
						</section>
					</div>
				</div>	
		
				<%-- <jsp:include page="searchLocation.jsp"/>
				<jsp:include page="change_weather.jsp"/>
				<jsp:include page="change_fashion.jsp"/> --%>
			</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>
</html>