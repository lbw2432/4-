$(window).on('load',function(){
		waterfall();
		var dataInt={'data':[
		{
			'src':'b1.jpg',
			
		},
		{
			'src':'b2.jpg'
		},
		{
			'src':'b4.jpg'
		},
		{
			'src':'b5.jpg'
			}
		]
	};
		$(window).on('scroll',function(){
			if(checkScrollSlide){
				$.each(dataInt.data,function(key,value){
					var oBox=$('<div>').addClass('box').appendTo($('#main'));
					var oPic=$('<div>').addClass('pic').appendTo($(oBox));
					var oimg=$('<img>').attr('src','./images/'+$(value).attr('src')).appendTo($(oPic));
					
					var foot_money=$('<div>').addClass('foot_money').appendTo($(oBox));
					var fSpan = $("<span>").append("￥88.88").appendTo($(foot_money));
					var fa=$('<a>').attr('href','#').addClass('foot_a').appendTo($(foot_money));
					var faSpan=$('<span>').addClass('glyphicon lyphicon glyphicon-heart-empty').append("66").appendTo($(fa));
					
					var foot_title=$('<div>').addClass('foot_title').appendTo($(oBox));
					var fp = $("<p>").append("。。。。。。。。。").appendTo($(foot_title));
					
					
					
					
					
			
		
				});
				waterfall();
		}
		})
	})
	function waterfall(){
		var $boxs=$('#main>div');
		<!--outerWidth 获取宽度加上自定义的宽度-->
		var w=$boxs.eq(0).outerWidth();
		<!--定义列数 取整 屏幕的宽度/w-->
		var cols=Math.floor($(window).width()/w)/1.5;
		<!--设置main 宽度  css 设置居中-->
		$('#main').width(w*cols).css('margin','0 auto');
		var hArr=[];
		<!--遍历元素 each方法 value 保留了遍历的每一个元素-->
		$boxs.each(function(index,value){
			var h=$boxs.eq(index).outerHeight();
			if(index<cols){
				hArr[index]=h;
			}else{
				var minH=Math.min.apply(null,hArr);
				<!--inArray 判断这个值在数组中出现的索引 两个参数 判断谁 在那个数组里->
				var minHIndex=$.inArray(minH,hArr);
				$(value).css({
					'position':'absolute',
					'top':minH+'px',
					'left':minHIndex*w+'px'
					})
					hArr[minHIndex]+=$boxs.eq(index).outerHeight();
			}
		});

	}
	function checkScrollSlide(){
		var $lastBox=$('#main>div').last();
		<!--最后一个盒子距离页码顶部的距离+这个盒子自身高度的一半-->
		var lastBoxDis=$lastBox.offset().top+Math.floor($lastBox.outerHeight()/2);
		<!--页码滚动的距离-->
		var scrollTop=$(window).scrollTop();
		<!--浏览器窗口可视区域的高度-->
		var documentH=$(window).height();
		return (lastBoxDis<scrollTop+documentH)?true:false;
	}