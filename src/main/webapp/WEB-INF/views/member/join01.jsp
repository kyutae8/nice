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


function agree_ok() {
	var agree_yn1 = document.getElementsByName("agree_yn1");
	var agree_yn2 = document.getElementsByName("agree_yn2");
	var agree_yn3 = document.getElementsByName("agree_yn3");
	
	if (agree_yn1[0].checked == false) {

		alert('이용약관에 동의하셔야 다음으로 진행할수 있습니다.');
		agree_yn1[0].focus();
		return;
	}

	if (agree_yn2[0].checked == false) {

		alert('개인정보보호정책에 동의하셔야 다음으로 진행할수 있습니다.');
		agree_yn2[0].focus();
		return;
	}

	if (agree_yn3[0].checked == false) {

		alert('개인정보 수집,이용에 관한 사항에 동의하셔야 다음으로 진행할수 있습니다.');
		agree_yn3[0].focus();
		return;
	}

	location.replace("${pageContext.request.contextPath}/join02");
	
}
</script>




</head>

<div id="wrap_sub">
    <div id="wrapper">

                <div class="contents-box">
                    <div class="visual">
              
                         <div class="subAllContent">
				
                             <div class="subTrue">
                      <!-- True Content start -->
                      			
                            <div class="subContent">
							<div class="page_navi">
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
                                        <span><a href="${pageContext.request.contextPath }/index.asp">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span>마이페이지</span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">회원가입</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/join.jpg"  />
                                    </div>
                                    
                                </div>
                               <div class="subTxtArea">
									
<div class="tableAll">
          <div class="">
                 <!-- 회원동의 시작 -->
                <table style="width:100%;font-size:12px;">

  <tr>
    <td>
    <table style="width: 100%;">
      <tr>
        <td align="left">
        <table style="width:100%;" >
          <tr>
            <td height="40" align="left" class="idpasstxt02"><img src="${pageContext.request.contextPath }/images/btn/join_txt01.gif" /></td>
          </tr>
          <tr>
            <td>
             <DIV id="scrollbox"> 
           
<p><strong>[제 1장 총칙] </strong></p><br />

<p><strong>제1조 (목적)</strong></p>
1. 이 약관은 전기통신사업법령 및 정보통신망이용촉진등에 관한 법령에 의하여 한성컨트리클럽 채용공고 게시판 입니다. (이하 "회사"라 합니다 )가 제공하는 
hansung-cc.co.kr 인터넷 서비스 (이하 "서비스"라 한다 )의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.<br /><br />

<p><strong>제2조 (약관의 효력 및 변경)</strong></p>
1. 회사는 합리적인 사유가 발생한 경우에는 사전 고지 없이 이 약관을 변경할 수 있으며, 변경된 약관은 공지함으로써 그 효력이 발생됩니다.<br />
2. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후에도 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주합니다.<br /><br />

<p><strong>제3조 (약관 외 준칙)</strong></p>
이 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br /><br />

<p><strong>제4조 (용어의 정의)</strong></p>
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br /><br />
1. 회원 : 회사와 서비스 이용계약을 체결하고 이용자 아이디를 부여 받은 자.<br />
2. 아이디 (ID) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합<br />
3. 비밀번호 : 회원이 부여받은 ID와 일치된 회원임을 확인하고, 회원의 비밀 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합<br />
4. 운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람<br />
5. 해지 : 회사 또는 회원이 서비스 사용 후 이용계약을 해약 하는 것<br /><br />


<p><strong>[제 2 장 이용 신청 및 승낙]</strong></p><br />

<p><strong>제5조 (이용계약의 성립)</strong></p>
1. 서비스 가입 신청시 본 약관을 읽고 "동의함" 버튼을 누르면 이 약관에 동의하는 것으로 간주합니다.<br />
2. 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용신청에 대하여 회사가 승낙함으로써 성립합니다.<br /><br />

<p><strong>제6조 (이용신청)</strong></p>
1. 이용신청은 회사가 요청하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 신청합니다.<br />
2. 온라인 가입신청 양식에 기재하는 모든 회원 정보는 실제 데이터인 것으로 간주하며 실명이나 실제 정보를 입력하지 않은 사용자는 서비스 사용의 제한을 받을 수 있습니다.<br /><br />

<p><strong>제7조 (이용신청의 승낙)</strong></p>
1. 회사는 회원이 제 6 조에서 정한 모든 사항을 정확히 기재하여 이용신청을 하였을 때 특별한 사정이 없는 한 접수 순서대로 이용신청을 승락합니다.<br /><br />

2. 회사는 다음 각 호의 1에 해당하는 이용신청에 대하여는 승낙을 유보할 수 있고 , 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.<br />
1) 서비스 관련 설비에 여유가 없는 경우<br />
2) 기술상 지장이 있는 경우<br />
3) 기타 회사의 사정상 이용승낙이 곤란한 경우<br /><br />

3. 회사는 다음 각 호의 1에 해당하는 이용신청에 대하여는 이를 승낙하지 아니 할 수 있습니다.<br />
1) 본인의 실명으로 신청하지 않은 경우<br />
2) 다른 사람의 명의를 사용하여 신청한 경우<br />
3) 이용 신청시 필요내용을 허위로 기재하여 신청한 경우<br />
4) 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우<br />
5) 기타 회사가 정한 이용신청요건이 미비 된 경우<br /><br />

<p><strong>제8조 (계약사항의 변경)</strong></p>
회원은 개인정보수정을 통해 언제든지 개인정보를 열람하고 수정할 수 있습니다. 회원은 이용 신청 시 기재한 사항이 변경되었을 경우에는 
온라인으로 수정을 해야 하고 미 변경으로 인하여 발생되는 문제의 책임은 회원에게 있습니다.<br /><br />


<p><strong>[제 3 장 계약당사자의 의무]</strong></p><br />

<p><strong>제9조 (회사의 의무)</strong></p>
1. 회사는 제 19조 및 제 20조에서 정한 사유 이외에는 이 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 위하여 지속적으로 노력할 의무가 있습니다.<br /><br />

2. 회사는 서비스 제공설비를 항상 운용가능한 상태로 유지보수해야 하며, 설비에 장애가 생기거나 멸실된 때에는 지체없이 이를 수리 복구하여야 합니다.<br /><br />

3. 회사는 서비스 제공과 관련하여 취득한 회원의 개인정보를 본인의 사전 동의없이 제 3자에게 제공할 수 없으며, 회사의 서비스 관련 업무이외의 목적으로 사용할 수 없습니다. 다만, 다음 각호의 1에 해당하는 경우에는 그러지 아니합니다.<br />
1) 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 한국은행법, 형사소송법 등 법령에 특별한 규정이 있는 경우<br />
2) 정보통신윤리위원회의 요청이 있는 경우<br />
3) 서비스 제공에 따른 서비스 이용계약 이행을 위하여 필요한 경우<br />
4) 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br />
5) 회사가 정한 약관 및 제약사항에 위배되어 골프장사업자 또는 그에 준하는 기관에 정보를 제공하는 경우<br /><br />

4. 회사는 이용회원의 개인정보를 취급함에 있어서 안정성확보에 필요한 기술적 및 관리적 대책을 강구하여야 합니다.<br /><br />

5. 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다 . 다만, 즉시 처리가 곤란한 경우는 회원에게 그 사유와 처리일정을 서비스 , 또는 E-Mail을 통해 고지하여야 합니다. 
다만, 회사의 귀책사유 없이 회원에게 통지할 수 없는 경우는 예외로 합니다.<br /><br />

6. 회사는 이용 계약의 체결 , 계약사항의 변경 및 해지등 회원의 계약관련 절차 및 내용 등에 있어 회원의 편의를 제공하도록 노력합니다.<br /><br />

7. 회사는 다음 각호의 1에 해당하는 경우에 책임을 지지 않습니다.<br />
1) 회원이 일부서비스의 이용목적으로 정보제공자 또는 제 3자에게 개별적으로 제공한 개인정보를 정보제공자 또는 제 3자가 누출하거나 이용한 경우<br /><br />

<p><strong>제10조 (회원의 의무)</strong></p>
1. 회원은 서비스를 이용할 때 다음 각 호의 1에 해당하는 행위를 하지 않아야 합니다.<br />
1) 다른 회원의 ID와 비밀번호 , 주민등록번호 등을 도용하는 행위<br />
2) 서비스에서 얻은 정보를 회사의 사전승낙 없이 회원의 이용이외의 목적으로 복제하거나 이를 출판 및 방송 등에 사용하거나 제 3자에게 제공하는 행위<br />
3) 회사의 저작권 , 제 3자의 저작권 등 기타 권리를 침해하는 행위<br />
4) 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위<br />
5) 범죄와 결부된다고 객관적으로 판단되는 행위<br />
6) 기타 관계법령에 위배되는 행위<br /><br />

2. 회원은 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 합니다.<br /><br />

3. 회원은 내용별로 회사가 서비스 공지사항에 게시하거나 별도로 공지한 이용제한 사항을 준수 하여야 합니다.<br /><br />

4. 회원은 회사의 사전 승낙없이는 서비스를 이용하여 영업활동을 할 수 없습니다.<br />
단, 다음과 같은 경우는 예외로 합니다.<br />
1) 전자메일을 이용한 수신자의 의사에 반하지 않는 일반적인 문서교환<br />
2) 법인 및 일반회원이 회사가 지정한 홍보용 게시판을 통해 활동하는 경우<br />
3) 일반회원간의 직거래 또는 홍보를 위해서 회사가 지정한 상거래 게시판을 사용하는 경우<br />
4) 회사와 별도의 계약 /합의에 의해서 활동하는 경우<br /><br />

5. 회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한 , 기타 이용계약상 지위를 타인에 양도,증여할 수 없으며,이를 담보로 제공할 수 없습니다.<br /><br />

6. 회원은 다음 각호의 1에 해당하는 통신을 하여서는 아니되며, 이를 위반함을 이유로 정보통신윤리위원회, 중앙선거관리위원회, 정보통신부 등 법령에 의하여 권한이 인정되는 관계기관이 적법한 절차에 따라 요청하는 경우 또는 저작권 침해, 명예훼손 등 권리침해의 주장이 있고, 그 주장을 존중하는 것이 필요하다고 회사가 인정하는 경우 회사는 게시물을 삭제하거나 서비스의 전부 또는 일부의 이용을 제한할 수 있습니다. 다만, 제 1호 또는 제 4호에 해당하는 경우에는 회사는 위와 같은 관계기관의 요청 또는 권리침해의 주장이 없어도 해당 게시물을 삭제하거나 서비스의 전부 또는 일부의 이용을 제한할 수 있습니다.<br />
1) 범죄행위를 목적으로 하거나 범죄행위를 교사하는 행위<br />
2) 반국가적 행위의 수행을 목적으로 하는 행위<br />
3) 선량한 풍속, 기타 사회질서를 해하는 행위<br />
4) 타인의 명예를 손상시키거나 불이익을 주는 행위<br />
5) 정보통신설비의 오동작이나 정보 등의 파괴를 유발시키는 해킹, 컴퓨터 바이러스 프로그램등의 유포행위<br />
6) 다른 회원 또는 제 3자의 지적재산권을 침해하는 행위<br />
7) 수신자의 의사에 반하여 광고성 정보를 지속적으로 전송하거나 서비스의 안정적 운영에 지장을 초래하는 다량의 자료 송수신, 게시물 등록, 기타 건전한 서비스 이용에 반하는 행위<br />
8) 전기통신 기본법 , 전기통신 사업법, 청소년 보호법 등 관련 법률에 위배되는 행위<br /><br />

7. 회원이 제 1호, 제 4호에 해당하는 행위 또는 약관에 위반한 영업활동 및 이와 유사한 행위로 인한 결과에 대해 회사는 책임을 지지 않으며, 회원은 이와 같은 영업활동에 의해 회사에 발생한 손해에 대해 손해배상의무를 집니다.<br /><br />


<p><strong>[제 4 장 서비스 이용]</strong></p><br />

<p><strong>제11조 (서비스 이용 범위)</strong></p>
회원은 회사를 통한 가입시 발급된 ID 하나로 서비스 모두를 이용할 수 있습니다.<br /><br />

<p><strong>제12조 (정보의 제공)</strong></p>
회사는 회원에게 서비스의 이용 및 각종 행사 등의 다양한 서비스를 전자우편이나 서신우편, 무선단문메세지 (SMS),기타의 방법으로 제공할 수 있습니다. 
단, 회원이 원하지 않는 경우 회사가 제공하는 정보를 거부할 수 있습니다.<br /><br />

<p><strong>제13조 (서비스 이용책임)</strong></p>
1. 회원은 자기책임하에 서비스를 이용하며, 서비스자료의 취사 선택 또는 서비스 이용으로 불이익이 발생하더라도 이에 대한 책임은 회원에게 있습니다.<br />
2. 회원이 서비스를 이용하여 게시 또는 전송한 자료의 내용에 관하여 발생되는 책임은 회원에게 있습니다.<br />
3. 회원에게 통보된 회원 ID와 비밀번호의 관리 및 이용상의 부주의로 인하여 발생되는 과실 또는 제 3자에 의한 부정사용 등에 대한 책임은 회원에게 있습니다. 
다만, 회사의 관리상 고의 또는 과실이 있는 경우에는 그러하지 아니합니다.<br />
4. 회원은 회사에서 권한 있는 사원이 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 불법상품을 판매하는 영업활동을 할 수 없으며 
특히 해킹, 돈벌이 광고, 음란사이트를 통한 상업행위, 상용 S/W 불법배포 등을 할 수 없습니다. 
이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치등에 관해서는 회사가 책임을 지지 않습니다.<br /><br />

<p><strong>제14조 (회원의 게시물)</strong></p>
회사는 회원이 게시하거나 등록하는 서비스내의 내용물이 다음 각호의 1에 해당한다고 판단되는 경우에는 사전동의 없이 삭제할 수 있습니다.<br /><br />
1. 다른 회원 또는 제 3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우<br />
2. 공공질서 및 미풍양속에 위반되는 내용인 경우<br />
3. 범죄적 행위에 결부된다고 인정되는 내용일 경우<br />
4. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우<br />
5. 회원이 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우<br />
6. 게시판의 성격에 부합하지 않는 게시물의 경우<br />
7. 기타 관계법령에 위반된다고 판단되는 경우<br /><br />

<p><strong>제15조 (게시물의 저작권)</strong></p>
서비스에 게재된 자료에 대한 권리는 다음 각 호와 같습니다.<br /><br />
1. 게시물에 대한 권리와 책임은 게시자에게 있으며 회사는 게시자의 동의 없이는 이를 서비스내 게재 이외에 영리적 목적으로 사용하지 않습니다 . 
단, 비영리적인 경우에는 그러하지 아니하며 또한 회사는 서비스내의 게재권을 갖습니다.<br />
2. 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.<br /><br />

<p><strong>제16조 (광고게재 및 광고주와의 거래)</strong></p>
1. 회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다. 서비스를 이용하고자 하는 자는 
서비스 이용시 노출되는 광고게재에 대해 동의하는 것으로 간주합니다.<br />
2. 회사는 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 
또는 손해에 대해 책임을 지지 않습니다.<br /><br />

<p><strong>제17조 (서비스 이용시간)</strong></p>
1. 서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 
다만 정기 점검 등의 필요로 회사가 정한 날이나 시간은 그러하지 않습니다.<br />
2. 회사는 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.<br /><br />

<p><strong>제18조 (서비스 제공의 중지)</strong></p>
1. 회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.<br />
1) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우<br />
2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우<br />
3) 기타 불가항력적 사유가 있는 경우<br /><br />
2. 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.<br /><br />
3. 회사는 제 1 항 및 2항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 지체없이 회원에게 알려야 합니다.<br /><br />


<p><strong>[제 5 장 계약해지 및 이용제한]</strong></p><br />

<p><strong>제19조 (계약해지 및 이용제한)</strong></p>
1. 회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 온라인을 통해 회사에 해지 신청을 하여야 합니다.<br /><br />
2. 회사는 회원이 다음 각 호의 1에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.<br />
1) 타인의 서비스 ID 및 비밀번호를 도용한 경우<br />
2) 서비스 운영을 고의로 방해한 경우<br />
3) 가입한 이름이 실명이 아닌 경우<br />
4) 같은 사용자가 다른 ID로 이중등록을 한 경우<br />
5) 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우<br />
6) 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스이용을 계획 또는 실행하는 경우<br />
7) 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우<br />
8) 서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고성 정보를 전송하는 경우<br />
9) 정보통신설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스 프로그램 등을 유포하는 경우<br />
10) 회사, 다른 회원 또는 제 3자의 지적재산권을 침해하는 경우<br />
11) 타인의 개인정보 , 회원 ID 및 비빌번호를 부정하게 사용하는 경우<br />
12) 회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전 승낙없이 복제 또는 유통시키거나 상업적으로 이용하는 경우<br />
13) 회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트 링크하는 경우<br />
14) 본 약관을 포함하여 기타 회사가 정한 이용조건에 위반한 경우<br /><br />
3. 제 1항 및 제 2항에 의해 해지된 회원에 대하여는 최소 3개월 이상 재가입을 제한할 수 있습니다.<br /><br />


<p><strong>[제 6 장 손해배상 등]</strong></p><br />

<p><strong>제20조 (손해배상)</strong></p>
회사는 서비스 요금이 무료인 서비스 이용과 관련하여 회사의 고의 , 과실에 의한 것이 아닌 한 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.<br /><br />

<p><strong>제21조 (손해배상의 청구)</strong></p>
손해배상은 회사에 청구사유, 청구금액 및 산출 근거를 기재하여 서면으로 청구하여야 합니다.<br /><br />

<p><strong>제22조 (회원에 대한 손해배상)</strong></p>
1. 회원이 이 약관에서 규정한 의무사항을 위반하여 회사에 손해를 끼친 경우 회사는 해당 회원에 대해 손해 배상을 청구할 수 있습니다.<br />
2. 회사가 회원에 대해 손해배상을 청구하는 경우의 절차에 대해서는 제 21조의 규정을 따릅니다.<br /><br />

<p><strong>제23조 (면책조항)</strong></p>
1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br />
2. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.<br />
3. 회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지않으며 그밖에 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br />
4. 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.<br />
5. 회사는 회원 상호간 또는 회원과 제 3자 상호간에 서비스를 매개로 하여 물품거래 등을 한 경우에는 책임을 지지 아니합니다.<br /><br />

<p><strong>제24조 (관할법원)</strong></p>
서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.<br /><br />


<p><strong>[ 부칙 ]</strong></p><br />
( 시행일 ) 이 약관은 2008년 12월 1일부터 시행합니다.<br /><br />

</div>
</td>
          </tr>
          <tr>
            <td height="10">&nbsp;</td>
          </tr>
          <tr>
            <td height="50" align="center"><span class="btxt">* 약관동의 확인</span>
              <input type="radio" name="agree_yn1" onKeyPress="" value="Y" />
             예
             <input type="radio" name="agree_yn1" value="N" checked />
             아니오         
          </tr>
          
          <tr>
            <td height="40" align="left" class="idpasstxt02"><img src="${pageContext.request.contextPath }/images/btn/join_txt02.gif" /></td>
          </tr>
          <tr>
            <td>
           <div id="scrollbox"> 
           
<p><strong>[ 총칙 ]</strong></p><br />
한성컨트리클럽은 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 한성컨트리클럽은 개인정보처리방침을 통하여 
고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 
한성컨트리클럽은 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br /><br />

ο 본 방침은 : 2011 년 09 월 30 일 부터 시행됩니다.<br /><br /> 


<p><strong>■ 수집하는 개인정보의 항목</strong></p>
한성컨트리클럽은 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br /><br />
ο 수집항목 : 이름, 생년월일, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 휴대전화번호, 이메일, 주민등록번호, 서비스 이용기록, 접속 로그, 접속 IP 정보<br /><br />
ο 개인정보 수집방법 : 홈페이지(회원가입,예약), 전화/팩스를 통한 회원가입<br /><br />


<p><strong>■ 개인정보 수집 및 이용 목적</strong></p>
한성컨트리클럽은 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br /><br />
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br />
    - 콘텐츠 제공, 구매 및 요금 결제<br /><br />
ο 회원 관리<br />
    - 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달<br /><br />
ο 마케팅 및 광고에 활용<br />
    - 이벤트 등 광고성 정보 전달<br /><br />
	

<p><strong>■ 개인정보의 보유 및 이용기간</strong></p>
한성컨트리클럽은 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.<br /><br />
ο 보존항목 : 이름, 생년월일, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 휴대전화번호, 이메일, 주민등록번호, 서비스 이용기록, 접속 로그, 접속 IP 정보<br /><br />
ο 보존근거 : 인터넷 회원 약관에 의거<br /><br />
ο 보존기간 : 회원 탈퇴시까지<br /><br />


<p><strong>■ 개인정보의 파기 절차 및 방법</strong></p>
한성컨트리클럽은 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br /><br />
ο 파기절차<br />
- 회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 
일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.<br /><br />

ο 파기방법<br />
- Database 정보삭제 방법으로 파기합니다.<br />
- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통한 방법으로 파기합니다.<br /><br />


<p><strong>■ 개인정보 제공</strong></p>
한성컨트리클럽은 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br /><br />
ο 이용자들이 사전에 동의한 경우<br />
ο 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br /><br />


<p><strong>■ 수집한 개인정보의 위탁</strong></p>
한성컨트리클럽은 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다.<br />
향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.<br /><br />


<p><strong>■ 이용자 및 법정대리인의 권리와 그 행사방법</strong></p>
이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다. 
이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을 가입해지(동의철회)를 위해서는  "회원탈퇴"를 클릭하여 
본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다. 
귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 
또한 잘못된 개인정보를 제3자 에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. 
한성컨트리클럽은 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "한성컨트리클럽이 수집하는 개인정보의 보유 및  이용기간"에 명시된 바에 따라 
처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br /><br />


<p><strong>■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</strong></p>
한성컨트리클럽은 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)'등을 운용합니다.<br />
쿠키란 한성컨트리클럽의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 한성컨트리클럽은 다음과 같은 목적을 위해 쿠키를 사용합니다.<br /><br />
ο 쿠키 등 사용 목적<br />
- 회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공<br /> 
  귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br /><br />
  
ο 쿠키 설정 거부 방법<br />
  예: 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.<br />
  설정방법 예(인터넷 익스플로어의 경우): 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보<br /> 
  단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.<br /><br />
  


<p><strong>■ 개인정보의 보호 대책</strong></p>
한성컨트리클럽은 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 관리적 대책을 강구하고 있습니다.<br /><br />

ο 비밀번호 암호화<br />
    - 회원 아이디(ID)의 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.<br /><br />
ο 한성컨트리클럽의 개인정보관련 담당자의 한정과, 별도 계정에 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 개인정보처리방침의 준수를 항상 강조하고 있습니다.<br /><br />


<p><strong>■ 개인정보에 대한 민원서비스</strong></p>
한성컨트리클럽은 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.<br /><br />

개인정보보호 책임자 : 오옥균<br />
이메일 : ook7640@hanmail.net<br />
주소 : (우) 446-913 경기도 용인시 기흥구 보정동 산 32-1<br />
Tel. 031) 284-3831 FAX : 031) 283-8847<br /><br />

개인정보보호 담당자 : 오옥균<br />
이메일 : ook7640@hanmail.net<br />
주소 : (우) 446-913 경기도 용인시 기흥구 보정동 산 32-1<br />
Tel. 031) 284-3831 FAX : 031) 283-8847<br /><br />

귀하께서는 한성컨트리클럽의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.<br />
한성컨트리클럽은 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. <br /><br />

 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br /><br />
 1.개인분쟁조정위원회 (www.1336.or.kr/1336)<br />
 2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)<br />
 3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)<br />
 4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)<br /><br />

</DIV>
            </td>
          </tr>
          <tr>
            <td height="10">&nbsp;</td>
          </tr>
          <tr>
            <td height="50" align="center"><span class="btxt">* 약관동의 확인</span>
              <input type="radio" name="agree_yn2"  onKeyPress="KeySubmit_re(event)" value="Y" />
             예
             <input type="radio" name="agree_yn2" value="N" checked />
             아니오            
          </tr>
        </table></td>
      </tr>
    </table></td>

  </tr>
  <tr>
    <td height="20">&nbsp;</td>
  </tr>

  <tr>
    <td>
	
					<table summary="공지사항" class="gidtbl">
						<colgroup>
							<col width="34%" />
							<col width="33%" />
							<col width="33%" />
						</colgroup>

						<thead>
							  <tr>
								<th class="top col17">수집하는 개인정보 항목</th>
								<th class="top col17">수집 및 이용목적</th>
								<th class="top col17">보유 및 이용기간</th>
							  </tr>
						</thead>
						<tbody>
							  <tr>
								<td>이름,아이디,비밀번호<br>생년월일,휴대폰번호</td>
								<td>회원제 가입 서비스 제공,<br>계약이행을 위한 연락,<br>민원 및 고충 처리,<br>이벤트안내(그린피할인 등)</td>
								<td>회원탈퇴 후 5일까지</td>
							  </tr>
						</tbody>
					</table>
	
          <tr>
            <td height="10">&nbsp;</td>
          </tr>
          <tr>
            <td height="20" align="center">
			서비스 제공을 위해 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다. <br>
				개인정보의 수집,이용에 관한 사항에 동의하십니까?
          </tr>
          <tr>
            <td height="10">&nbsp;</td>
          </tr>
          <tr>
            <td height="40" align="center">
              <input type="radio" name="agree_yn3"  onKeyPress="KeySubmit_re(event)" value="Y" />
             예
             <input type="radio" name="agree_yn3" value="N" checked  />
             아니오
             </td>           
          </tr>
  <tr>
    <td height="10">&nbsp;</td>
  </tr>
  <tr>
    <td>
    <table style="width: 100%;">
	  <tr>
        <td align="left">
        	 <!-- 버튼 -->
                <div class="btn_c" style="max-width: 200px; margin: 0 auto;'">
                    <img src="${pageContext.request.contextPath }/images/btn/btn_agree.gif"  style="cursor:hand; margin-right:10px;" class="left_pull" onClick="JavaScript:agree_ok();" />
                    <a href="#"><img src="${pageContext.request.contextPath }/images/btn/btn_unagree.gif" class="left_pull"/></a>                
                </div>
        </td>
      </tr>
    </table></td>
  </tr>
</table>


</div>            
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




