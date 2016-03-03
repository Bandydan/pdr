$(document).ready(function(){

	$(".slider").slick({
		slidesToShow: 2,
		slidesToScroll: 2,
		arrows: true,
		autoplay: true,
		autoplaySpeed: 9000,
		cssEase: 'linear'
	});

	$('.wrappMenu').on('click.name1', function (e) {
		$(".blockOne").toggleClass("animateOne")
		$(".blockThree").toggleClass("animateThree")
		$(".blockTwo").toggleClass("animateTwo")
	});
	$('.wrappMenu').on('click.menu', function (e) {
		$('.mobileMenu').fadeToggle(400);
	});
	$('.wrappMenu').trigger('click.menu');

});	