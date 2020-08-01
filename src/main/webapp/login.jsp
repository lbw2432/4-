<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>login登录界面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/login.css">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/statics/front/css/bootstrap.min.css" rel="stylesheet">
    <!--动画CSS插件-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/animate.min.css">
    <%--<!--[if lt IE 9]>--%>
    <%--    <script src="${pageContext.request.contextPath}/statics/front/js/html5shiv.js"></script>--%>
    <%--    <script src="${pageContext.request.contextPath}/statics/front/js/respond.min.js"></script>--%>
    <%--    <![endif]-->--%>
</head>
<body>
<!-- 登录-->
<div class="container-fluid ">
    <div class="row ">
        <div class="form ">
            <form class="form-horizontal wow slideInDown ">
                <h1 class="col-sm-offset-3">校园二手交易系统</h1>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-3 control-label ">用户名：</label>
                    <div class="col-sm-7">

                        <input type="text" class="form-control " id="inputEmail3" placeholder="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">密码:</label>
                    <div class="col-sm-7">

                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">
                                记住我 </label>
                            <a class="col-sm-offset-7" href="regist.jsp"><span class="regist">注册</span></a> <a
                                href="#"><span class="regist">忘记密码?</span></a></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-5">

                        <input class="form-control btn btn-danger" id="submit_btn"
                               value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陆"
                               type="submit">
                    </div>
                </div>

        </form>
    </div>
    </div>>
</div>
<script src="${pageContext.request.contextPath}/statics/front/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/bootstrap.js"></script>

<script src="${pageContext.request.contextPath}/statics/front/js/wow.min.js"></script>
<script>
    $(function () {

        new WOW().init();
    })
</script>
</body>
</html>