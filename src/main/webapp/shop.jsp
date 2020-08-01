<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<!-- 让IE采用最新的渲染模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 移动端的页面宽度等于设备宽度，缩放比为1 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/css/sidebarDemo2.css">

<link href="${pageContext.request.contextPath}/statics/front/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/shop.css">
<!--动画CSS插件-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/front/css/animate.min.css">
<title>shop购物界面</title>
</head>
<body>
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
        <li><a href="#">登陆</a></li>
        <li><a href="#">注册</a></li>
        <li><a href="#" data-toggle="modal" data-target="#about">关于</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
  
</nav>
<div id="sidebar">
  <ul>
    <li id="prof" class="item"> <span class="glyphicon glyphicon-user"> </span>
      <div><a href="#">我</a> </div>
    </li>
    <li id="asset" class="item"> <span class="glyphicon glyphicon-usd"></span>
      <div> 资产 </div>
    </li>
    <li id="brand" class="item"> <span class="glyphicon glyphicon-heart"> </span>
      <div> 品牌 </div>
    </li>
    <li id="broadcast" class="item"> <span class="glyphicon glyphicon-bell"></span>
      <div> 直播 </div>
    </li>
    <li id="foot" class="item"> <span class="glyphicon glyphicon-eye-open"> </span>
      <div> 看过 </div>
    </li>
    <li id="calendar" class="item"> <span class="glyphicon glyphicon-time"></span>
      <div> 日历 </div>
    </li>
  </ul>
  <div id="closeBar">
    <span class="glyphicon glyphicon-remove"></span> 
  </div>
</div>

<div class="jumbotron wow slideInDown ">
  <h1>校园二手交易</h1>
  <p >让闲置游起来</p>
  <p><a class="btn btn-primary btn-lg" href="publish.jsp" role="button">发布商品</a></p>
  <div class="input-group col-sm-3"> <span class="input-group-btn ">
    <button class="btn btn-info" type="button"> 搜 索 </button>
    </span>
    <input type="text" class="form-control" placeholder="Search for...">
  </div>-->
  <!-- /input-group --> 
  
</div>

<!--秒杀板块-->
<div class="container wow slideInDown">
  <div class="row">
    <ul class="nav nav-tabs ">
      <li role="presentation" ><a href="#">首页</a></li>
      <li role="presentation" class="active"><a href="#" >书籍</a></li>
      <li role="presentation"><a href="#">数码</a></li>
      <li role="presentation"><a href="#">交通</a></li>
      <li role="presentation"><a href="#">运动</a></li>
      <li role="presentation"><a href="#">盆栽</a></li>
      <li role="presentation"><a href="#">杂货</a></li>
    </ul>
    </br>
    <h1 class="wow slideInDown">优品秒杀：</h1>
    </br>
    <div class="img col-md-4 wow flash " data-wow-duration="1s" data-wow-delay="2s"> <a href="#"> <img src="images/day1.jpg"></a></br>
      <div class="foot_money "> <span>￥9.99</span> <a href="#" class="foot_a"> <span class="glyphicon lyphicon glyphicon-heart-empty">76</span></a> </div>
      <div class="foot_title ">
        <p>英语四级词根词汇</p>
      </div>
      <div class="time text-danger"> <span class="glyphicon glyphicon-time"></span> <span id="t_d">00天</span> <span id="t_h">03时</span> <span id="t_m">11分</span> <span id="t_s">00秒</span> </div>
      <!--time 结束-->
      <button type="button" class="btn btn-danger col-md-4 col-sm-offset-2  wow flash"  data-wow-duration="1s" data-wow-delay="2s" id="daoqi">开 始 秒 杀</button>
    </div>
    <!-- img 结束-->
    <div class="img col-md-4 wow flash" data-wow-duration="1s" data-wow-delay="2s"> <a href="#"> <img src="images/day1.jpg"></a></br>
      <div class="foot_money "> <span>￥11.00</span> <a href="#" class="foot_a"> <span class="glyphicon lyphicon glyphicon-heart-empty">24</span></a> </div>
      <div class="foot_title ">
        <p>英语四级词根词汇</p>
      </div>
      <div class="time text-danger"> <span class="glyphicon glyphicon-time"></span> <span id="t_d">00天</span> <span id="t_h">03时</span> <span id="t_m">11分</span> <span id="t_s">00秒</span> </div>
      <!--time 结束-->
      <button type="button" class="btn btn-danger col-md-4 col-sm-offset-2  wow flash"  data-wow-duration="1s" data-wow-delay="2s" id="daoqi">开 始 秒 杀</button>
    </div>
    <!-- img 结束-->
    <div class="img col-md-4 wow flash" data-wow-duration="1s" data-wow-delay="2s"> <a href="#"> <img src="images/day1.jpg"></a></br>
      <div class="foot_money "> <span>￥23.00</span> <a href="#" class="foot_a"> <span class="glyphicon lyphicon glyphicon-heart-empty">32</span></a> </div>
      <div class="foot_title ">
        <p>英语四级词根词汇</p>
      </div>
      <div class="time text-danger"> <span class="glyphicon glyphicon-time"></span> <span id="t_d">00天</span> <span id="t_h">03时</span> <span id="t_m">11分</span> <span id="t_s">00秒</span> </div>
      <!--time 结束-->
      <button type="button" class="btn btn-danger col-md-4 col-sm-offset-2  wow flash"  data-wow-duration="1s" data-wow-delay="2s" id="daoqi">开 始 秒 杀</button>
    </div>
    <!-- img 结束--> 
  </div>
  </br>
  <h1 class="wow slideInDown" data-wow-duration="1.5s">人气精选<i>Hot:</i></h1>
  </br>
</div>
</br>

<!--秒杀板块 结束--> 
<!--瀑布流布局开始-->
<div id="main">
  <div class="box">
    <div class="pic"> <img src="${pageContext.request.contextPath}/statics/front/images/b5.jpg"/> </div>
    <div class="foot_money "> <span>￥19.90</span> <a href="#" class="foot_a"> <span class="glyphicon lyphicon glyphicon-heart-empty">32</span></a> </div>
    <div class="foot_title ">
      <p>。。。。。。。</p>
    </div>
  </div>
</div>
<!--右侧边栏-->
<div class="right_go">
  <p class="pull-right"><a href="#top">回到顶部</a></p>
</div>
<!--秒杀时间js--> 
<script src="${pageContext.request.contextPath}/statics/front/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/waterfall.js"/></script>
<script src="${pageContext.request.contextPath}/statics/front/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/statics/front/js/sidebarDemo2.js"></script>
<script>
  function GetRTime(){
       var EndTime= new Date('2018/06/28 00:00:00');//这里设置你预定的时间
       var NowTime = new Date();
       var t =EndTime.getTime() - NowTime.getTime();
       var d=Math.floor(t/1000/60/60/24);
       var h=Math.floor(t/1000/60/60%24);
       var m=Math.floor(t/1000/60%60);
       var s=Math.floor(t/1000%60);

       document.getElementById("t_d").innerHTML = d + "天";
       document.getElementById("t_h").innerHTML = h + "时";
       document.getElementById("t_m").innerHTML = m + "分";
       document.getElementById("t_s").innerHTML = s + "秒";
      
}
   setInterval(GetRTime,0);
  


</script> 
 <script>
    /*jshint expr: true */
    /*jslint evil: true */  
    window.jQuery || document.write('<script src="${pageContext.request.contextPath}/statics/front/components/jquery/dist/jquery.min.js"><\/script>');
    </script>
<script>
$(function(){

new WOW().init();
})
</script>
</body>
</html>