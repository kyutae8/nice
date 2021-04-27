<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>한성컨트리클럽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=3.0, user-scalable=yes">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default2.css">
<script src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default3.css">
</head>
<body>


<script type="text/javascript">
function KeySubmit(e) {
    var nav4 = window.Event ? true : false;
    if (nav4)  // Navigator 4.0x
    {
       var whichCode = e.which;
    }
    else
    { // Internet Explorer 4.0x
      if (e.type == "keypress") // the user entered a character
      {
          var whichCode = e.keyCode;
      }
      else
      {
          var whichCode = e.button;
      }
    }
    if (whichCode == 13)
    {
        Login_Check();
    }
}

function Login_Check()
{
 	obj = document.loginForm1;
 	
 	if (obj.id.value == "" ) {
 		alert("아이디를 입력하십시오.");
 		obj.id.focus();
		return;
	}

 	if (obj.password.value == "" ) {
 		alert("비밀번호를 입력하십시오.");
 		obj.password.focus();
		return;
	}

	obj.action = "${pageContext.request.contextPath}/login"
	obj.target = '_parent';
	
	obj.submit();

//	parent.location.replace('login_ok.asp?id=' + obj.id.value + '&password=' + obj.password.value  + '&gopath=' + '' + '&b_idx=' + '');

}

</script>



<div id="wrap">
    <!-- wrapper -->
    <div id="wrapper">

                <div class="contents-box">
                    <div class="visual">
              
                         <div class="subAllContent">
							
                            
                             <div class="subTrue">
                      <!-- True Content start -->
                      			
                            <div class="subContent">
							<div class="page_navi">
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
                                        <span><a href="/index.asp">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span>마이페이지</span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">로그인</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/login.jpg" alt="대표인사말" />
                                    </div>
                                    
                                </div>
                               <div class="subTxtArea">
							     <p class="toptxt01"><img src="${pageContext.request.contextPath }/images/member/login_txt01.jpg" style="width:70% !important; max-width:382px;" /></p>
									<div class="loginAll" style="margin-bottom:20px;">
<p style="color: red; font-size: 14px; text-align: center;">${message }</p>	
<form name="loginForm1" action="" method="post">
<input type="hidden" name="gopath" value="">
<input type="hidden" name="b_idx" value="">
	<div class="loginBox">
		<table class="login" >
			<tr>
			  <td class="logt01"><img src="${pageContext.request.contextPath }/images/member/txt_id.gif" /></td>
			  <td class="logt02"><input type="text" name="id" id="user_id" value="${id }" class="inputText" style="width:100%;" onKeyPress="KeySubmit(event)" tabindex=1 /></td>
			  <td rowspan="2"><a href="javaScript:Login_Check()"><img src="${pageContext.request.contextPath }/images/member/btn_login.gif" alt="로그인" title="로그인"></a></td>
			</tr>
			<tr>
			  <td class="logt01"><img src="${pageContext.request.contextPath }/images/member/txt_pass.gif" /></td>
			  <td class="logt02"><input type="password" name="password" id="user_pw" class="inputText" style="width:100%;" onKeyPress="KeySubmit(event)" tabindex=2 /></td>
			</tr>

		</table>
<p class="toptxt02"><a href="${pageContext.request.contextPath }/idpass"><img src="${pageContext.request.contextPath }/images/member/btntxt_idpass.gif" style="width:80% !important; max-width:350px;" /></a>
<a href="join01.asp"><img src="${pageContext.request.contextPath }/images/member/btntxt_join.gif"  style="width:80% !important; max-width:350px;" /></a></p>
                        </div>
					</form>
                   </div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
</body>
</html>