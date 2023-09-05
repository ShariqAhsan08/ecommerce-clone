(function($) {
    $.fn.simpleMenu = function( options ) {
	    "use strict";
		var $a = $(this),
			$b = $(this).find('a').next();
		$a.on('click', 'a' , function(e){
		    e.stopPropagation();
			//if li has ul then dont redirect to link address
			var $c = $(this).next().hasClass('sub-menu');
			//console.log($c === true);
			if ($c === true) {
				e.preventDefault();
			}
			//if li has ul then dont redirect to link address ends
			//debugger;
			
			$(this).next().slideToggle(300)	
			.parent().siblings().children('ul')
			.not($(this).next()).hide()
		}),
		$(document).on('click', $b, function(e){
			$b.hide(200);
		});	
    }
}(jQuery));
$('.simple-menu').simpleMenu();


document.getElementById('iphone').addEventListener('click', function() {
	alert('there is 10% of going on iphone!');
  });


  document.getElementById('sale').addEventListener('click', function() {
	alert('there is sale going on our protuct!');
  });

  $(document).ready(function () {
	var cartCount = 0;
	$(".btn").on("click", function () {
	    cartCount++;
	  $(".cart-count").text(cartCount); 
	});
  });