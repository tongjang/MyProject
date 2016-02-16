(function($, undefind) {
	
	var $win = $(window);
	var $doc = $(document);
	var is_gnb_opened = false;
	var gnb_opened_index = null;
	var bg_index = 0;

	$doc.ready(function() {
		$('#title').html(document.title);
		$('#gnb').css({ 'display' : 'none'});
		$('#gnb li ul').css({ 'display' : 'none'});
	});
	
	$doc.on('click', '#header .menu', function() {
		if (is_gnb_opened) {
			$('#wrapper').css({ 'margin-left' : 0 });
			$('#gnb').css({ 'display': 'none' });
			is_gnb_opened = false;
		} else {
			$('.dim_layer').fadeIn("fast",function(){
				var winH = $(window).height();
				var wrapWidth = $(".wrapper").width();
				
	            $(".wrapper").wrap("<div />");
	            $('.wrapper').parent("div").width(wrapWidth).height(900).css("overflow","hidden"); 
	            
				$('.gnb').height(900);
				$('.dim_layer').height(900); 

				$('.gnb').css("display","block");
				$('.dim_layer').animate({marginLeft:'0px'},"fast");
				$('.gnb').animate({marginLeft:'0px'},"fast");
				$('.wrapper').animate({marginLeft:'205px'},"fast");
				$('.wrapper').height(900);
				is_gnb_opened = true;
			});
		}
		return false;
	});
	
	$doc.on('click', '#gnb>ul>li>a' , function() {
		var gnb_clicked_index = $(this).parent().index();
		if (gnb_opened_index == null) {
			$(this).siblings('ul').css({ 'display' : 'block' });
			gnb_opened_index = gnb_clicked_index;
		} else {
			if (gnb_opened_index == gnb_clicked_index) {
				$('#gnb>ul>li>ul').css({ 'display' : 'none' });
				gnb_opened_index = null;
			} else {
				$('#gnb>ul>li>ul').css({ 'display' : 'none' });
				$(this).siblings('ul').css({ 'display' : 'block' });
				gnb_opened_index = gnb_clicked_index;
			}
		}
		return false;
	});
	
	$doc.on('click', '#gnb>h2>a>span', function() {
		if (is_gnb_opened) {
			$('.wrapper').height("auto"); 
			$('.wrapper').unwrap("<div />");
			$('.dim_layer').fadeOut("fast");
			$('.gnb').css("display","none");
			$('.gnb').css({marginLeft:'-205px'},"fast");
			$('.wrapper').css({marginLeft:'0px'},"fast");
			
			is_gnb_opened = false;
		} 
	});
})(jQuery);