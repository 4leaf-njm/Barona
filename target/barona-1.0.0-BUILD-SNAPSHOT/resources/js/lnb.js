$(document).ready(function(){
	$('#lnb .outer > li a').hover(function(){
		$(this).find('.fas').addClass('fa-plus');
		$(this).find('.fas').removeClass('fa-minus');
	}, function(){
		if(!$(this).parent('li').hasClass('on')) {
			$(this).find('.fas').addClass('fa-minus');
			$(this).find('.fas').removeClass('fa-plus');
		}
	});
	function initLnbMenu() {
		var menuId = document.location.href.split("_")[1].split(".")[0]; 
		var mainId = menuId.split('-')[0];
		var subId = menuId.split('-')[1];
		if(document.location.href.indexOf('notice') != -1) 
			mainId = 1;
		else if(document.location.href.indexOf('faq') != -1) 
			mainId = 2;
		
		$('#lnb .outer > li').eq(mainId - 1).addClass('on');
		$('#lnb .outer > li').eq(mainId - 1).find('.fas').addClass('fa-plus');
		$('#lnb .outer > li').eq(mainId - 1).find('.fas').removeClass('fa-minus');
		$('#lnb .outer > li').eq(mainId - 1).find('.inner').addClass('on');
		$('#lnb .outer > li').eq(mainId - 1).find('.inner > li').eq(subId - 1).addClass('on');
	}
	initLnbMenu();
});