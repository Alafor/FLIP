<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/js/searchAutoComplete.js"></script>
<title>Insert title here</title>
</head>
<body>
	<input id="autos" type="text">
</body>
<script type="text/javascript">
$(function() {
	//input�� id�� autocomplete�Ѵ�.
	$( "#autos").autocomplete({
		source : function(request, response){
			$.ajax({
				type:"post",
				dataType:"json",                  //data�� json���� return ����.
				url:"autoComplete.do",          //json���� �����͸� ��ȯ�ؾ��Ѵ�.
				data:{search : request.term},
				success:function(data){
					alert("���۽� ����");
					response($.map(data, function(item){     //function�� item�� data�� ���ε��ȴ�.
						return{
							//�⺻������ label�� value�� ��������� custom ������ �����ؼ� ��� �����ϴ�. ui.item.���������� ��밡����.
							//data�� ��ȯ�� �迭, data[i].USER_INFO �� �Ʒ� ����� KEY���� ���ִ�.
							label:item.autoList,
							value:item.autoList
						}
					}));
				},
				error: function(jqxhr, status, error){
					alert(jqxhr.statusText + ",  " + status + ",   " + error);
					alert(jqxhr.status);
					alert(jqxhr.responseText);
				}
			})
		},
		minLength:1,               //1���� �̻� �Է��ؾ� autocomplete�� �۵��Ѵ�.
		focus:function(event, ui){return false;} //�ѱ��Է½� ��Ŀ���̵��ϸ� ������Ʈ�� �����ǹǷ� focusó��
	});
});
</script>
</html>