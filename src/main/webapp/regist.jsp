<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
 <!-- 让IE采用最新的渲染模式 -->  
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 移动端的页面宽度等于设备宽度，缩放比为1 -->  
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>regist注册页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/register.css">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/statics/front/css/bootstrap.min.css" rel="stylesheet">
<!--动画CSS插件-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/animate.min.css">

<!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/statics/front/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/statics/front/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 注册-->
<header class="
wow fadeInRight
"> <img src="images/two.jpg" class="img-circle logo"
        alt="logo" />
  <div class="desc">欢迎注册</div>
</header>
<div class="container-fluid">
  <div class="row wow slideInDown">
    <form class="form-horizontal" action="${APP_PATH}/user/regist"
				method="post">
      <div class="form-group">
        <label for="inputExpCom" class="col-sm-12  ">账号：</label>
        <div class="col-sm-11 ">
          <input type="text" class="form-control" id="username"
							name="username" placeholder="请输入用户名">
          <span
							class="help-block"></span> </div>
        <div class="form-group">
          <label for="inputExpCom" class="col-sm-12 ">密码：</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="password"
								name="password" placeholder="请输入密码">
            <span
								class="help-block"></span> </div>
          <div class="form-group">
            <label for="inputExpCom" class="col-sm-12 ">确认密码：</label>
            <div class="col-sm-11">
              <input type="password" class="form-control" id="repassword"
									placeholder="确认密码">
              <span class="help-block"></span> </div>
            <div class="form-group">
              <label for="exampleInputEmail1" class="col-sm-12 ">邮箱:</label>
              <div class="col-sm-11">
                <input type="text" class="form-control" id="email" name="email"
										placeholder="邮箱">
                <span class="help-block"></span> </div>
              <div class="form-group">
                <label for="exampleInputEmail1" class="col-sm-12 "></label>
                <input class="form-control btn btn-warning col-sm-12" id="submit_btn"
											value="立&nbsp;&nbsp;即&nbsp;&nbsp;注&nbsp;&nbsp;册"
											type="submit">
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<script src="${pageContext.request.contextPath}/statics/front/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/wow.min.js"></script>
<script>
$(function(){

new WOW().init();
})
</script>
</body>
<script type="text/javascript">
		//账号
		$('input').eq(0).focus(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("请输入用户名");
				$(this).next("span").css("color", '#FFA500');
			}
		});
		//密码
		$('input').eq(1).focus(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("请输入密码");
				$(this).next("span").css("color", '#FFA500');
			}
		});
		//确认密码
		$('input').eq(2).focus(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("请再次输入密码");
				$(this).next("span").css("color", '#FFA500');
			}
		});
		//邮箱
		$('input').eq(3).focus(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("请输入邮箱");
				$(this).next("span").css("color", '#FFA500');
			}
		});

		//input各种判断
		//用户名：
		$('input').eq(0).blur(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("");
				$(this).next("span").css("color", '#FFA500');
			} else if ($(this).val().length > 3 && $(this).val().length < 6) {
				$(this).next("span").text("长度只能在4-20个字符之间");
				$(this).next("span").css("color", 'red');
			} else if ($(this).val().length >= 4 && !isNaN($(this).val())) {
				$(this).next("span").text("用户名不能为纯数字");
				$(this).next("span").css("color", 'red');
			} else {
				$(this).next("span").text("");
			}

		});
		//密码：
		$('input').eq(1).blur(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("");
				$(this).next("span").css("color", '#FFA500');
			} else if ($(this).val().length > 3 && $(this).val().length < 6) {
				$(this).next("span").text("长度只能在6-20个字符之间");
				$(this).next("span").css("color", 'red');
			} else {
				$(this).next("span").text("");
			}

		});
		//确认密码：
		$('input').eq(2).blur(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("");
				$(this).next("span").css("color", '#FFA500');
			} else if ($(this).val() != $('input').eq(1).val()) {
				$(this).next("span").text("两次密码不匹配");
				$(this).next("span").css("color", 'red');
			} else {
				$(this).next("span").text("");
			}

		});
		//邮箱
		$('input').eq(3).blur(function() {
			if ($(this).val().length == 0) {
				$(this).next("span").text("");
				$(this).next("span").css("color", '#FFA500');
			} else if ($(this).val().length > 6 && $(this).val().length < 10) {
				$(this).next("span").text("长度只能在6-20个字符之间");
				$(this).next("span").css("color", 'red');
			} else {
				$(this).next("span").text("");
			}

		});
	
		
		//		提交按钮
		$("#submit_btn").click(function(e) {
			for (var j = 0; j < 5; j++) {
				if ($('input').eq(j).val().length == 0) {
					$('input').eq(j).focus();
					if (j == 4) {
						$('input').eq(j).next("span").text("此处不能为空");
						$('input').eq(j).next("span").css("color", '#FFA500');
						e.preventDefault();
						return;
					}

					$('input').eq(j).next("span").text("此处不能为空");
					$('input').eq(j).next("span").css("color", '#FFA500');
					e.preventDefault();
					return;
				}
			}
		})
	</script>
</body>
</html>