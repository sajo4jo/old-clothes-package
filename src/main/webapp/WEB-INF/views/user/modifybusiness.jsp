<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>    
     <!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>

.req{
	color:red;
}
.my_img {
	display:none;
	width:495px;
	height:400px;
    
}

.form-outline:hover .my_img {
    display: block;
}
<!--카카오 ID 넣는 방법 설명[hover 순서 중요] 안 될시 req위로 display:block올리고 none 그 밑으로 올리고 왔다갔다하면 됩니다.. -->

#wrapper{
  height: auto;
  min-height: 100%;
  padding-bottom: 50px;
}

.my_img {
	display:none;
	width:495px;
	height:400px;
}
.form-outline:hover .my_img {
    display: block;
}
 

 
</style>
</head>
<body>
	<div>
		<c:import url='/WEB-INF/views/includes/header.jsp' />
	</div>
	<div id="wrap">
		<br>
	    <section class="vh-100 bg-image">
	        <div class="mask d-flex align-items-center h-100 gradient-custom-3">
	            <div class="container h-100" style="width:1200px;">
	            	<div class="row d-flex justify-content-center align-items-center h-100">
	                	<div class="col-12 col-md-9 col-lg-7 col-xl-6">
	                	<div class="card" style="border-radius: 15px;">
	                    	<div class="card-body p-5">
	                    	<h2 class="text-uppercase text-center mb-5">업체정보수정</h2>
	                    			
	                    			<br>
									<%--업체 --%>
									<div id=businessform>
									<form action="modifybusiness" method="post" onsubmit="return Valid();">
										<div class="form-outline mb-4" style="display:flex;">
											<input type="hidden" name="bno" value="${Bauthuser.bno }">
											<input type="hidden" name="sect" value="business"/>
					                        <label class="form-label" for="bname" style="position:absolute; margin:2.5%;" >상호명<span class="req">*</span></label>
					                 		<input type="text" id="bname" name="bname" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" value="${Bauthuser.bname }" />
					                 		<input type="hidden" name="check_bid" id="check_bid" value="${Bauthuser.bname }">
						                    <input type="button" id="brandnamecheck" class="btn btn-light" value="중복확인" style="margin-left:2%;display:none;">
						                    <input type="button" id="checkedbrandname" class="btn btn-light disabled" value="사용가능" style="margin-left:2%;">
			                        	</div>
			                        
				                        <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="bnumber" style="position:absolute; margin:2.5%;" >사업자 번호<span class="req">*</span></label>
					                 		<input type="text" id="bnumber" name="bnumber" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" 
					                 		placeholder="'-'없이 입력해주세요." value="${Bauthuser.bnumber }"/>
				                        </div>
										
				                         
				                         <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="businessid" style="position:absolute; margin:2.5%;">아이디<span class="req">*</span></label>
					                        <input type="text" id="businessid" name="businessid" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" readonly="readonly" value="${Bauthuser.businessid }"/>
				                        </div>
				                        
				                        <div class="form-outline mb-4" style="display:flex;" >
					                        <div>
						                        <label class="form-label" for="bkakaoid" style="position:absolute; margin:2.5%;" >카카오ID</label>
						                 		<input type="text" id="bkakaoid" name="bkakaoid" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" 
						                 		title="카카오톡채널상담에 필요하니, 카카오채널관리자 페이지에 나오는 아이디 입력 부탁드립니다." placeholder="카카오 ID(오픈채팅)"/ value="${Bauthuser.bkakaoid }">					                 		
						                 		<img class="my_img" src="../../resources/image/kakaopre.png" title="카카오톡채널상담에 필요하니, 카카오채널관리자 페이지에 나오는 아이디 입력 부탁드립니다.">
					                 		</div>
				                        </div>
				                        
				                        
				                        <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="bphone" style="position:absolute; margin:2.5%;" >전화번호<span class="req">*</span></label>
					                 		<input type="text" id="bphone" name="bphone" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" 
					                 		placeholder="'-'없어도 됩니다."/ value="${Bauthuser.bphone }">
						                    <input type="button" id="bgoSMS"class="btn btn-light" value="본인인증" >
				                        </div>
				                        
				                        <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="bauthNumber" style="position:absolute; margin:2.5%;" >인증번호<span class="req">*</span></label>
					                 	 	<input type="tel" id="bauthNumber" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 8rem;" />
					                 		<input type="hidden" id="bauthCode"/>
						                    <input type="button" id="bconfirmBnt" class="btn btn-light" value="인증확인" style="margin-left:2%;display:none;">
						                    <input type="button" id="bcheckedauthNumber" class="btn btn-light disabled" value="확인완료" style="margin-left:2%;">
				                        </div>
		
				                        <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="bpassword" style="position:absolute; margin:2.5%;">비밀번호<span class="req">*</span></label>
					                        <input type="password" id="bpassword" name="bpassword" onchange="isSame1()" class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 7rem;" 
					                        placeholder="6~10로 입력하세요." value="${Bauthuser.bpassword }"/>
				                        </div>
		
				                        <div class="form-outline mb-4" style="display:flex;">
					                        <label class="form-label" for="b_checkpassword" style="position:absolute; margin:2.5%;">비밀번호 확인<span class="req">*</span></label>
					                        <input type="password" id="b_checkpassword" onchange="isSame1()"  class="form-control form-control-lg" style="padding:.5rem 1rem .5rem 8rem;"value="${Bauthuser.bpassword }" "/>
				                        </div>
				                        <span id="same1"></span>
	
				                        <div class="form-outline mb-4" >
				                        	<div style="display:flex;">
						                        <label class="form-label" for="baddress" style="margin:2.5%; float:left;" >주소<span class="req">*</span></label>
						                        <div style="display:flex;">
						                        	<input type="button" class="btn btn-light btn-sm" value="우편번호 검색" readonly onclick="findAddr()">
						                        </div>
					                       	</div>
					                       	<div>
						                    	<label class="form-label" for="baddress" style="margin:2%;">[도로명]주소</label>
						                 		<input type="text" id="baddress" name="baddress" class="form-control form-control-lg" readonly
						                 		placeholder="도로명 주소 선택해주세요." value="${Bauthuser.baddress }"/>
						                 		<label class="form-label" for="bdetailadd"style="margin:2%;">상세주소</label>
						                 		<input type="text" id="bdetailadd" name="bdetailadd" class="form-control form-control-lg" placeholder="ex)101호" value="${Bauthuser.bdetailadd }"/>
					                 		</div>
										</div>
										<br>
		
				                        <div class="d-flex justify-content-center">
					                        <button type="submit"
					                            class="btn btn-outline-primary" style="margin-right:3%;">수정하기</button>
					                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#myModal">탈퇴하기</button>    
				                        </div>
		
				                       </form>
									</div>
	                    	</div>
	                	</div>
	                	</div>
	            	</div>
	            </div>
	        </div>
	    </section>
	</div>
    <div>
		<c:import url='/WEB-INF/views/includes/footer.jsp' />
	</div>	
	<%--모달 --%>
	<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">회원탈퇴</h4>        
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       회원 탈퇴를 진행하시겠습니까?
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
       	 <form action="bretire" method="post">
	        <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
         </form>
      </div>

    </div>
  </div>
</div>
	
<script>
var msg = "${msg}";
if(msg != ""){
	alert(msg);
}
</script>
<script src="<c:url value='/resources/js/users/modifybusiness.js'/>"></script>
<script src="<c:url value='/resources/js/users/validation.js'/>"></script>
</body>

</html>