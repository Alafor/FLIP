<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setCharacterEncoding("utf-8"); %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
<script src="resources/js/searchAutoComplete.js"></script>

<title>Insert title here</title>
</head>
<body>
	<input id="autos" type="text">
</body>
<script type="text/javascript">
$(function() {
	//input의 id를 autocomplete한다.
	$( "#autos").autocomplete({
		source : function(request, response){
			$.ajax({
				type:"post",
				dataType:"json",                  //data를 json으로 return 받음.
				url:"autoComplete.do",          //json으로 데이터를 반환해야한다.
				data:{"search" : request.term},
				success:function(data){
					response($.map(data, function(item){     //function의 item에 data가 바인딩된다.
						return{
							//기본적으로 label과 value를 사용하지만 custom 변수를 선언해서 사용 가능하다. ui.item.변수명으로 사용가능함.
							//data는 반환한 배열, data[i].USER_INFO 및 아래 선언된 KEY값이 들어가있다.
							label:item,
							value:item
						}
					}));
				}
			})
		},
		minLength:1               //1글자 이상 입력해야 autocomplete이 작동한다.
		/* focus:function(event, ui){return false;} //한글입력시 포커스이동하면 서제스트가 삭제되므로 focus처리 */
	});
});
</script>
</html>