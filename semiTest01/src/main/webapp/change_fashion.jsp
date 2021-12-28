<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.main{
	width: 1400px;
	height: 460px;
	}
.div2{
	width: 50%;
	float: left;	
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
</body>
</html>