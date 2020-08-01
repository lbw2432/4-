<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index主界面</title>
    <link href="${pageContext.request.contextPath}/statics/front/css/bootstrap.min.css" rel="stylesheet">
    <!--自己定义的样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/index.css">
    <!--动画CSS插件-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/animate.min.css">
    <script src="${pageContext.request.contextPath}/statics/front/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/front/js/bootstrap.js"></script>

    <script src="${pageContext.request.contextPath}/statics/front/js/wow.min.js"></script>
    <!--jquery单页面导航插件-->
</head>
<body>
<!-- 顶部导航 navbar-fixed-top置顶 导航条不遮蔽内容 并且一直显示 需要在body中设置 padding-top70px; -->
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
        <!-- 当浏览器大小下于一定程度后的响应式图标-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <!--设置商标-->
            <a class="navbar-brand" href="#">校园二手交易系统</a> </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp" >登陆</a></li>
                <li><a href="regist.jsp" >注册</a></li>

                <li><a href="#" data-toggle="modal" data-target="#about">关于</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- 广告轮播  -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- 导航index -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- 轮播组件的内容-->
    <div class="carousel-inner wow lightSpeedIn" role="listbox">
        <div class="item active"> <img src="images/book.jpg"  alt="carousel_1"/> </div>
        <div class="item"> <img src="images/camera.jpg"   alt="carousel_2"/> </div>
        <div class="item"> <img src="images/plant.jpg" width="600" height="427"  alt="carousel_3"/> </div>
    </div>

    <!-- 向左向右的按钮 -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
<hr class="feature-divider">

<!-- 主要内容 -->
<div class="container summary">

    <!-- 简介 -->
    <div class="row wow fadeInDown" data-wow-duration="3s" data-wow-delay="1s" id="summary-container">
        <div class="col-md-4"> <img class="img-circle " src="images/b1.jpg" alt="">
            <h2>书籍</h2>
            <p><a class="btn btn btn-danger btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button" >GO</a></p>
        </div>
        <div class="col-md-4"> <img class="img-circle" src="images/b4.jpg" alt="">
            <h2>数码</h2>
            <p><a class="btn btn-primary btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button">GO</a></p>
        </div>
        <div class="col-md-4"> <img class="img-circle" src="images/b9.png" alt="">
            <h2>交通</h2>
            <p><a class="btn btn-warning btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button">GO</a></p>
        </div>
        <div class="col-md-4"> <img class="img-circle" src="images/b8.png" alt="">
            <h2>运动</h2>
            <p><a class="btn btn-info btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button">GO</a></p>
        </div>
        <div class="col-md-4"> <img class="img-circle" src="images/b5.jpg" alt="">
            <h2>盆栽</h2>
            <p><a class="btn btn-success btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button">GO</a></p>
        </div>
        <div class="col-md-4"> <img class="img-circle" src="images/b7.png" alt="">
            <h2>杂货</h2>
            <p><a class="btn btn-primary btn-lg col-sm-offset-4 col-md-4" href="shop.jsp" role="button">GO</a></p>
        </div>
    </div>
    <!--分界线-->
    <hr class="feature-divider">
    <h1 class="wow fadeInDown" >每日精品:</h1>
    </br>
    <!--导航条-->
    <ul class="nav nav-tabs wow fadeInDown" role="tablist" id="feature-tab">
        <li class="active"><a href="#tab-book" role="tab" data-toggle="tab" >书籍</a></li>
        <li><a href="#tab-digital" role="tab" data-toggle="tab">数码</a></li>
        <li><a href="#tab-traffic" role="tab" data-toggle="tab">交通</a></li>
        <li><a href="#tab-sport" role="tab" data-toggle="tab">运动</a></li>
        <li><a href="#tab-pot" role="tab" data-toggle="tab">盆栽</a></li>
        <li><a href="#tab-safari" role="tab" data-toggle="tab">杂货</a></li>
    </ul>
    <div class="tab-content ">
        <div class="tab-pane active wow slideInLeft" id="tab-book">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">英语四级资料</h2>
                    <p class="lead">低价转售</p>
                </div>
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/day1.jpg" alt="1"> </div>
            </div>
        </div>
        <div class="tab-pane wow slideInRight" id="tab-digital">
            <div class="row feature">
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/day2.jpg" alt="2"> </div>
                <div class="col-md-7">
                    <h2 class="feature-heading">联想台式机</h2>
                    <p class="lead">1000带回家</p>
                </div>
            </div>
        </div>

        <div class="tab-pane wow slideInLeft" id="tab-traffic">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">英语四级资料</h2>
                    <p class="lead">低价转售</p>
                </div>
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/day1.jpg" alt="1"> </div>
            </div>
        </div>
        <div class="tab-pane wow slideInRight" id="tab-sport">
            <div class="row feature">
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/day2.jpg" alt="2"> </div>
                <div class="progress-bar">
                    <h2 class="feature-heading">联想台式机</h2>
                    <p class="lead">1000带回家</p>
                </div>
            </div>
        </div>

        <div class="tab-pane wow slideInLeft" id="tab-pot">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">精致</h2>
                    <p class="lead">低价转售</p>
                </div>
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/penzai.jpg" alt="1"> </div>
            </div>
        </div>
        <div class="tab-pane wow slideInRight" id="tab-safari">
            <div class="row feature">
                <div class="col-md-5"> <img class="feature-image img-rounded" src="images/day2.jpg" alt="2"> </div>
                <div class="col-md-7">
                    <h2 class="feature-heading">联想台式机</h2>
                    <p class="lead">1000带回家</p>
                </div>
            </div>
        </div>

    </div>
    <hr class="feature-divider">
</div>
<div class="container-fluid">
    <div class="row">
        <footer>
            <!--pull-right 浮动到右边-->
            <p class="pull-right"><a href="#top">回到顶部</a></p>
            <p class="col-sm-offset-6" center>@2018 </p>
        </footer>
    </div>

    <!--关于模态框-->
    <div class="modal fade" id="about" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">校园二手交易系统</h4>
                </div>
                <div class="modal-body">
                    <p>。。。</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">了解</button>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(function(){

            new WOW().init();
        })
    </script>
</body>
</html>

