<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./includes/user_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title></title>


</head>
<body class="bg-white">
		<div class="row bg-white">
			<div class="col-lg-12">
				<h2 align="center" class="page-header">로그인</h2>
				
			</div>
			<!-- /col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="col-5 mx-auto">
			<div class="container-fluid">
				<div class="panel panel-default">

					<!-- /panel-heading -->
						
    					<form id="login_form" method="post">
							<div class="form-group id_wrap">
							<div class="id_name">아이디</div>
							<div class="id_input_box">
								<input class="form-control id_input" name="member_id">
							</div>
						</div> 
						
						
							<div class="form-group pw_wrap">
								<div class="pw_name">비밀번호</div>
								<div class="pw_input_box">
								<input class="form-control pw_input" name="pass" type="password">
							</div>
						</div> 
						
							<c:if test = "${result == 0 }">
                				<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            				</c:if>
            				
							<br>
							<div class="mx-auto login_button_wrap" align="center">
								<input type="button" class="login_button btn btn-outline-success" value="로그인">
							</div>
							<br>

							</form>
							</div>
						
					</div>
				</div>




</body>

			<script type="text/javascript">
			
			/* 로그인 버튼 클릭 메서드 */
			$(".login_button").click(function(){
			    
				$("#login_form").attr("action", "/member/login.do");
		        $("#login_form").submit();
			    
			});
			
			</script>

<%@ include file="./includes/footer.jsp"%>
</html>