$(document).ready(function(){
	activeMenu();
});
function activeMenu() {
	var location = document.location.href;
	var main = ['intro', 'disease', 'expert', 'treatment', 'counsel'];
	
	$.each(main, function(index, value) {
		if(location.indexOf(value) != -1) {
			var sub = '#sub0' + (index+1);
			var subIdx = location.split('/' + value + '/')[1].split('_')[1].split('.')[0];
			$('.gnb_main li').eq(index).addClass('on');
			$(sub).show();
			$(sub).find('.swiper-slide').eq(subIdx-1).addClass('on');
		}
	});
}

$(document).ready(function(){
	 var mySwiper = new Swiper ('.swiper-container', {
		 slidesPerView: 'auto', 
		 spaceBetween: 1, 
		 freeMode: true, 
	    });
});
