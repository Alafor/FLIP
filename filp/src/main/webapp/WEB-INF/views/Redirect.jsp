<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var message = '${msg}'; 
	var returnUrl = '${url}';
	if(!returnUrl){
		var result=confirm(message);
		if(result){
			document.location.href = 'mypage.do';
		}else{
			document.location.href = 'main.do';
		}
	}else{
		alert(message); 
		document.location.href = returnUrl;	
	}
	
	</script>
</body> 
</body>
</html>