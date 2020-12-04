    	$(document).ready(function () {
    		/* 회원가입 성공 후  model attribute에 바인딩한 객체를 확인, 한 번만 알리기 위해선 ajax사용이 답인가? */
            /* var signedUp= '${signedUp.id}';
            if(signedUp != ""){
            	alert("회원가입을 축하합니다. 이메일 인증 후 사용할 수 있습니다.");
            }
            signedUp = ""; */

    		 $("#signup_id").blur(function () {
    			 var signup_id = $("#signup_id").val();
 				console.log(signup_id);
 				if(signup_id != ""){
    			 	checkId(signup_id);
 				}else{
 					$("#idCheck_result").html("");
 				}
    		 });

    	/* 아이디 중복체크 == 성공!!
    		리턴값에 따른 후처리 필요
    	*/
    		/* $('#signup-form').submit(
	    		function () {
	    			var formData = $('#signup-form').serialize();
	    			alert("signUp() 실행");
					$.ajax({
						type : 'POST',
						url : '${pageContext.request.contextPath}/signup.do',
						data : formData,
						dataType : 'json'
					}).done(function (data) {
						console.log(data);
					}).fail(function (request, status, error) {
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					})
				}
    		); */
    		 function checkId(signup_id) {
 				$.ajax({
 					type : 'POST',
 					url : '${pageContext.request.contextPath}/idCheck.do',
 					data : {"signup_id" : signup_id}
 				}).done(function (data) {
					console.log(data);
					idResult(data);
				}).fail(function (request,status,error) {
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				})
			}

    		function idResult(data) {
    			if(data==0){
					$("#idCheck_result").html("사용가능한 아이디입니다.").css("color","green");
    			}else{
    				$("#idCheck_result").html("이미 사용중인 아이디입니다.").css("color","red");
    			}
			}

    		$("#pw1").blur(function () {
   			 	pwCheck();
   		 	});
    		$("#pw2").blur(function () {
				pwCheck();
			});
    		function pwCheck() {
    			var pw1 = $("#pw1").val();
      			 var pw2 = $("#pw2").val();
   				console.log(pw1);
   				if(pw2 == "" || pw1 ==""){
   					$("#pwCheck_result").html("비밀번호를 입력해주세요").css("color","red");
   				}else if(pw1 == pw2){
   					$("#pwCheck_result").html("비밀번호가 일치합니다").css("color","green");
   				}else{
   					$("#pwCheck_result").html("비밀번호가 일치하지 않습니다.").css("color","red");
   				}
			}

		});
    		/* 검색기능(엔터 입력시 실행)  */
    		function enter(keyword) {
					search(keyword);
			}
     		function search(keyword){
    			alert("search() 실행");
    			$.ajax({
 					type : 'POST',
 					url : '${pageContext.request.contextPath}/search.do',
 					data : {"keyword" : keyword},
 					dataType : 'json'
 				}).done(function (data) {	//ajax는 실행결과와 상관없이 리턴값이 없으면 오류발생
 					if(data.productList){
						alert(data.productList);
 						showResult(data.productList);
 					}
					sessionStorage.setItem("searchProduct", JSON.stringify(data.productList));
					/* alert(sessionStorage.getItem("searchProduct")); */
					/* getResult(); */
					if(data.artistList){
						showResult(data.artistList);
					}
				}).fail(function (request,status,error) {
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				})
    		}
    		function showResult(result) {

			}
 