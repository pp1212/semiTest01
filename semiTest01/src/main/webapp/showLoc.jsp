<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#district{	
		display: none;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({url:"listProvince.do",success:function(data){
			$.each(data, function(index,item){
				var a = $("<option></option>").html(item)
				$("#province").append(a);
			});
		}});
		
		$("#province").change(function(){
			var province = $(this).val();
			$("#district").css("display","inline")
			$.ajax({url:"listDistrict.do?province="+province,success:function(data){
				$.each(data, function(index,item){
					var a = $("<option></option>").html(item)
					$("#district").append(a);
				});
			}});
			
		});
		
		$("#district").change(function(){
			var province = $(this).val();
			$("#dong").css("display","inline")
			$.ajax({url:"listDong.do?district="+district"&&province="+province,success:function(data){
				$.each(data, function(index,item){
					var a = $("<option></option>").html(item)
					$("#dong").append(a);
				});
			}});
			
		}); 
		
	});
</script>
</head>
<body>

	<form name="showLocForm" method="POST" action="showLocOK.do">      
        <select name="province" id="province">
        </select>
        <select name="district" id="district"> 
        </select>
        <select name="dong" id="dong">
        </select>
        <input type="submit" value="선택">
    </form>
	
</body>
</html>

