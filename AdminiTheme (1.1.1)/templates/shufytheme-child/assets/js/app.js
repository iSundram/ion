/*------------------------------------------------------------------
 * Author: coodiv (nedjai mohamed) (nbames.mohamed@gmail.com)
 * Author URI: https://coodiv.net/
 * Author URI: https://themeforest.net/user/coodiv
 * Js file Version: 1.1.0
 -------------------------------------------------------------------*/
"use strict";
//----------------------------------------------------/
// Device check
//----------------------------------------------------/	
function isTouchDevice() {
  var prefixes = ' -webkit- -moz- -o- -ms- '.split(' ');
  var mq = function mq(query) {
    return window.matchMedia(query).matches;
  };
  if ('ontouchstart' in window || window.DocumentTouch && document instanceof DocumentTouch) {
    return true;
  }
  var query = ['(', prefixes.join('touch-enabled),('), 'heartz', ')'].join('');
  return mq(query);
}
if (isTouchDevice()) {
  $('body').addClass('touch-device');
  $('.full__producs__shop__sidebar').addClass('touch-device');
}
var vh = window.innerHeight * 0.01;
document.documentElement.style.setProperty('--vh', "".concat(vh, "px"));
$(document).ready(function () {
if(jQuery(".payout__field__input__number").length > 0) {
var input = document.querySelector('.payout__field__input__number');
input.addEventListener('input', resizeInput);
resizeInput.call(input);
function resizeInput() {
  this.style.width = this.value.length + "ch";
}
}
});


//----------------------------------------------------/
// mailchimp form
//----------------------------------------------------/	
$(document).ready(function () {
	$('#mailchimp-form').submit(function (e) {
		e.preventDefault();
		var form = $(this);
		var apiKeyHashed = form.data('api-key');
		var listId = form.data('list-id');
		var dataCenter = form.data('dc');
		var formData = form.serialize();
		var formMessages = $('#mailchimp-form-messages');
		$.ajax({
			type: 'POST',
			url: 'https://' + dataCenter + '.api.mailchimp.com/3.0/lists/' + listId + '/members/',
			data: formData,
			headers: {
				'Authorization': 'Basic ' + btoa('anystring:' + apiKeyHashed)
			},
			success: function (data) {
				formMessages.html('<div class="alert alert-warning alert-dismissible fade show">Submission successful! Thank you for subscribing.</div>');
			},
			error: function (error) {
				var errorMessage = (error.responseJSON && error.responseJSON.detail) ? error.responseJSON.detail : 'An error occurred.';
				
				// Update the error message container
				var alertHtml = '<div class="alert alert-warning alert-dismissible fade show" role="alert">' +
					'<strong>Error!</strong> ' + errorMessage +
					'<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
					'<span aria-hidden="true">&times;</span>' +
					'</button>' +
					'</div>';
				formMessages.html(alertHtml);
			}
		});
	});
});
//----------------------------------------------------/
// languages filtre
//----------------------------------------------------/	
$(document).on("input propertychange paste change", '.languagefiltersearch', function(e) {
  var value = $(this).val().toLowerCase();
  var $ul = $(this).closest('.dropdown__language__search'); 
  var $li = $ul.find('.dropdown__language__search__child:gt(0)');
  $li.hide();
  $('.dropdown__menu__no__data').hide();
  $li.filter(function() {
    var textgt = $(this).find('.language__text').text().toLowerCase();
    return textgt.indexOf(value)>=0;
  }).show();

});

//----------------------------------------------------/
// custom nav tooltip class
//----------------------------------------------------/	
(function($) {
    if (!$.fn.tooltip) {
        throw new Error('Bootstrap Tooltip must be included first!');
    }
    var Tooltip = $.fn.tooltip.Constructor;
    $.extend(Tooltip.Default, {
        customClass: ''
    });
    var _show = Tooltip.prototype.show;
    Tooltip.prototype.show = function () {
        _show.apply(this);
        if (this.config.customClass) {
            var tip = this.getTipElement();
            $(tip).addClass(this.config.customClass);
        }
    };
})(window.jQuery);
//----------------------------------------------------/
// Select2 & sidebar tooltip
//----------------------------------------------------/	
$(document).ready(function(){
$('.sidebar__item').tooltip({customClass: 'sidebar__title__tooltip'});
$('.select__dropdown__menu__search').select2();
});
//----------------------------------------------------/
// spotlight ltds change on click
//----------------------------------------------------/	
$(document).ready(function () {
  var $registerltd = $('#registertld'),
	  dltdsbtns = $('.domains__spotlighttlds__selection__wrapper'),
	  domainsearchbtn = $('.domain-productconfigiration-options-inputs button[type=submit]'),
	  showdisountformbtn = $('.sidebar__aply__promo__code__caller'),
	  btnaddcart = $('.btn-add-to-cart'),
	  domaincontinue = document.getElementById("btnDomainContinue"),
	  $transferltd = $('#transfertld');
	  
	  $(".domains__spotlighttlds__selection__item").each(function () {
			$(this).on('click', function () {
				$registerltd.val(this.id).trigger('change');
				$transferltd.val(this.id).trigger('change');
				$(".domains__spotlighttlds__selection__item").removeClass('active');
				$(this).addClass('active');
			});
	  });
	  $(".domain-productconfigiration-options-item label").each(function () {
			$(this).on('click', function () {
				if ($(this).hasClass('registerdomain') || $(this).hasClass('transferdomain')) {
					dltdsbtns.removeClass('d-none');
				} else {
					dltdsbtns.addClass('d-none');
				}
			});
	  });
	  domainsearchbtn.on('click', function () {
		   setTimeout(function () {      
			  if (domaincontinue.style.display === "inline-block" || domaincontinue.style.display === "block")  {
				  $(".buttom__cart__submit__area").removeClass('d-none').addClass('active');
			  }
		   }, 500);
		   $("#btnDomainContinue").addClass('loading');
		   setTimeout(function () {   
			$("#btnDomainContinue").removeClass('loading');
		   }, 7000);
			

	  });
	  btnaddcart.on('click', function () {
	  if($("#cartItemCount").text() > "0" && domaincontinue.disabled){
		  setTimeout(function () {     
			domaincontinue.disabled = false;
		  }, 1000);
	  }
	  });
	  
	  showdisountformbtn.on('click', function () {
		  $(this).removeClass('d-block').addClass('d-none'); 
		  $(".sidebar__aply__promo__code__form").removeClass('d-none');
	  });
});
//----------------------------------------------------/
// market__connect__configure__logo
//----------------------------------------------------/	
$(document).ready(function () {
	var servicespromobanner = $('.addon-promo-container'),
		whmcsbaseurlassets = (whmcsBaseUrl + '/templates/' + whmcsThemeName + '/assets/svg/orderform/'),	
		oldservicelogo = {};
		oldservicelogo['addon-promo-container-weebly'] = 'weebly-illustration';
		oldservicelogo['addon-promo-container-codeguard'] = 'codeguard-illustration';
		oldservicelogo['addon-promo-container-marketgoo'] = 'marketgoo-illustration';
		oldservicelogo['addon-promo-container-nordvpn'] = 'nordvpn-illustration';
		oldservicelogo['addon-promo-container-threesixtymonitoring'] = 'threesixtymonitoring-illustration';
		oldservicelogo['addon-promo-container-xovinow'] = 'xovinow-illustration';
		oldservicelogo['addon-promo-container-ox'] = 'ox-illustration';
		oldservicelogo['addon-promo-container-sitebuilder'] = 'sitebuilder-illustration';
		oldservicelogo['addon-promo-container-sitelock'] = 'sitelock-illustration';
		oldservicelogo['addon-promo-container-sitelockvpn'] = 'sitelockvpn-illustration';
		oldservicelogo['addon-promo-container-spamexperts'] = 'spamexperts-illustration';
		oldservicelogo['addon-promo-container-symantec'] = 'symantec-illustration';
		$('#order-standard_cart .market__connect__old__logo img').remove(); 
		servicespromobanner.each(function( classname ) {
			var bannercontainer = $(this);
			$.each(oldservicelogo, function( classname, serviceillustrationname ) {
			if (bannercontainer.hasClass(classname)) {
				bannercontainer.find('.market__connect__old__logo').load(whmcsbaseurlassets+serviceillustrationname+'.tpl').removeClass('d-none');
			}
			});
		});
}); 		
//----------------------------------------------------/
// Billing Cycle discount calculator
//----------------------------------------------------/	
$(document).ready(function () {
    var discountquarterly = document.getElementById("quarterlydisount"),
		discountsemiannually = document.getElementById("semiannuallydisount"),
		discountannually = document.getElementById("annuallydisount"),
		discountbiennially = document.getElementById("bienniallydisount"),
		discounttriennially = document.getElementById("trienniallydisount"),
	    monthlyprice = $('#cyclepricemonthly').attr("data-row-price"),
	    quarterlyprice = $('#cyclepricequarterly').attr("data-row-price"),
	    semiannuallyprice = $('#cyclepricesemiannually').attr("data-row-price"),
	    annuallyprice = $('#cyclepriceannually').attr("data-row-price"),
	    bienniallyprice = $('#cyclepricebiennially').attr("data-row-price"),
	    trienniallyprice = $('#cyclepricetriennially').attr("data-row-price"),
		resultquarterly = (Math.round(100 - (quarterlyprice / (monthlyprice * 3)) * 100)).toFixed(0),		  
		resultsemiannually = (Math.round(100 - (semiannuallyprice / (monthlyprice * 6)) * 100)).toFixed(0),
		resultannually =  (Math.round(100 - (annuallyprice / (monthlyprice * 12)) * 100)).toFixed(0),
		resultbiennially = (Math.round(100 - (bienniallyprice / (monthlyprice * 24)) * 100)).toFixed(0),
		resulttriennially = (Math.round(100 - (trienniallyprice / (monthlyprice * 36)) * 100)).toFixed(0),
		thenum = [resultquarterly, resultsemiannually, resultannually, resultbiennially, resulttriennially];
		let values = [resultquarterly,resultsemiannually,resultannually,resultbiennially,resulttriennially];
		var bestdiscountplan = Math.max.apply(null, values.filter(function(n) { return !isNaN(n); }));
		if ( bestdiscountplan == resultquarterly) {
			$('.best__pricing__cycle__badge.quarterly').removeClass('d-none');	
		} else if ( bestdiscountplan == resultsemiannually ) {
			$('.best__pricing__cycle__badge.semiannually').removeClass('d-none');	
		} else if ( bestdiscountplan == resultannually ) {
			$('.best__pricing__cycle__badge.annually').removeClass('d-none');	
		} else if ( bestdiscountplan == resultbiennially ) {
			$('.best__pricing__cycle__badge.biennially').removeClass('d-none');	
		} else if ( bestdiscountplan == resulttriennially ) {
			$('.best__pricing__cycle__badge.triennially').removeClass('d-none');	
		}
		if ( resultquarterly > 1 && (monthlyprice - (quarterlyprice / 3)) > 0) {
			discountquarterly.append( resultquarterly.toString() + '%');
		}else{
			$('.cart__choose__cycle__content__saving.quarterly').addClass('d-none');	
		}
		if ( resultsemiannually > 1 && (monthlyprice - (semiannuallyprice / 6)) > 0) {
			discountsemiannually.append( resultsemiannually.toString() + '%');
		}else{
			$('.cart__choose__cycle__content__saving.semiannually').addClass('d-none');	
		}
		if ( resultannually > 1 && (monthlyprice - (annuallyprice / 12)) > 0) {
			discountannually.append( resultannually.toString() + '%');
		}else{
			$('.cart__choose__cycle__content__saving.annually').addClass('d-none');	
		}
		if ( resultbiennially > 1 && (monthlyprice - (bienniallyprice / 24)) > 0) {
			discountbiennially.append( resultbiennially.toString() + '%');
		}else{
			$('.cart__choose__cycle__content__saving.biennially').addClass('d-none');	
		}
		if ( resulttriennially > 1 && (monthlyprice - (trienniallyprice / 36)) > 0) {
			discounttriennially.append( resulttriennially.toString() + '%');
		}else{
			$('.cart__choose__cycle__content__saving.triennially').addClass('d-none');	
		}
}); 
//----------------------------------------------------/
// Product Configuration options update
//----------------------------------------------------/		
$(document).ready(function () {
	var productconfigurableoptions = $('#productConfigurableOptions'),
		productconfigurableloader = $('.product__config__loader'),
		productaddonscontainer = $('#productAddonsContainer'),
		ordersummaryloader = $('#orderSummaryLoader'),
		dataupdateconfigbtn = $("[data-update-config]"),
		producttotal = $("#producttotal"),
		nextstepbtn = $(".orderform__submit__btn__succses"),
		separatedproducttotal = $("#separatedproducttotal"),
		thisRequestId = Math.floor((Math.random() * 1000000) + 1);
		nextstepbtn.on('click', function () {			
			nextstepbtn.addClass('clicked__to__next__step').delay(4000).queue(function(){
			   $(this).removeClass('clicked__to__next__step'); 
			   $(this).dequeue();
			});
			});
		$("[data-change-billingcycle]").on('ifChecked', 'input', function () {setTimeout(function(){ recalctotals(); }, 150);});
		$("#frmConfigureProduct").on('change', 'select', function () {recalctotals();});
		$("#frmConfigureProduct .field-container").not(".cycles__fields").on('ifChecked', 'input', function () {recalctotals();});
		$("#frmConfigureProduct .field-container").not(".cycles__fields").on('ifUnchecked', 'input[type="checkbox"]', function () {recalctotals();});
		$("#frmConfigureProduct .addon-promo-container").on('ifChecked', 'input', function () {{setTimeout(function(){ recalctotals(); }, 150);}});
		dataupdateconfigbtn.on('ifChecked', 'input', function () {
			productaddonscontainer.addClass('d-none');
			productconfigurableloader.removeClass('d-none');
			if (!ordersummaryloader.is(":visible")) {
				ordersummaryloader.fadeIn('fast');
			}
			var billingcyclemonth = $(this).closest('label').data("config-i"),
				billingcycle = $(this).closest('label').data("config-val");
			WHMCS.http.jqClient.post(whmcsBaseUrl + '/cart.php', 'a=cyclechange&ajax=1&i='+billingcyclemonth+'&billingcycle='+billingcycle,
				function (data) {
					productconfigurableoptions.html($(data).find('#productConfigurableOptions').html()).promise().done(function(){
						var icheckboxes = productconfigurableoptions.find('input:not(.icheck-input):not(.switch__checkbox)'),
							selects = productconfigurableoptions.find('select');
							icheckboxes.iCheck({checkboxClass: 'iradio_square-blue',radioClass: 'iradio_square-blue',});
							selects.select2();
							productaddonscontainer.removeClass('d-none');
							productconfigurableloader.addClass('d-none');
					});
				}
			)
			setTimeout(function(){ recalctotals(); }, 150);
		});
		function recalctotals() {
		if (!ordersummaryloader.is(":visible")) {
			ordersummaryloader.fadeIn('fast');
		} 
		window.lastSliderUpdateRequestId = thisRequestId;
		var frmconfigureproduct = $('#frmConfigureProduct');
		var posttotalprice = WHMCS.http.jqClient.post(whmcsBaseUrl + '/cart.php', 'ajax=1&a=confproduct&calctotal=true&' + frmconfigureproduct.serialize());
		posttotalprice.done(
			function (data) {
				if (thisRequestId == window.lastSliderUpdateRequestId) {
					producttotal.html(data);
				}
			}
		);
		posttotalprice.always(
			function () {
				ordersummaryloader.delay(500).fadeOut('slow');
				productconfigurableloader.addClass('d-nonee');
			}
		);
	}
}); 
//----------------------------------------------------/
//  recommended domains
//----------------------------------------------------/	
$(document).ready(function() {
	if(jQuery(".recommended__domains__wrapper__btn").length > 0) {
		function copyDomain() {
			var domain = $('.recommended__domains__wrapper__btn').attr('data-domain');
			$('#targetElement').text(domain);
		}
		function onAttributeChange(mutationsList) {
			for (let mutation of mutationsList) {
				if (mutation.type === 'attributes' && mutation.attributeName === 'data-domain') {
					copyDomain();
					break;
				}
			}
		}
		const targetElement = document.querySelector('.recommended__domains__wrapper__btn');
		const observer = new MutationObserver(onAttributeChange);
		const config = { attributes: true, attributeFilter: ['data-domain'] };
		observer.observe(targetElement, config);

		copyDomain();
	}
});

//----------------------------------------------------/
// orderform slider toggle
//----------------------------------------------------/	
$(document).ready(function(){
	
	var $status = $('.standard__cart__slider__counter'),
	    $slickElement = $('.standard__cart__slider__layout.slider');
	
	$slickElement.on('init reInit afterChange', function(event, slick, currentSlide, nextSlide){
		var i = (currentSlide ? currentSlide : 0) + 4;
		$status.text(i + '/' + slick.slideCount);
	});
	function getSliderSettings(){
      var isRtl = $('body').hasClass('rtl');
	  return {
		  slidesToShow: 4,
		  slidesToScroll: 1,
		  infinite: false,
		  rtl: isRtl,
		  prevArrow: $('.standard__cart__slider__prev'),
		  nextArrow: $('.standard__cart__slider__next'),
		  centerPadding: '15px',
		  responsive: [
			{
			  breakpoint: 991,
			  settings: {
				centerPadding: '10px',
				slidesToShow: 3
			  }
			},
			{
			  breakpoint: 768,
			  settings: {
				centerPadding: '10px',
				slidesToShow: 2
			  }
			},
			{
			  breakpoint: 480,
			  settings: {
				centerPadding: '10px',
				slidesToShow: 1
			  }
			}
		  ]
	  }
	}
	$slickElement.slick(getSliderSettings());
	
	var buttons          = $('.standard__slider__standard__cart__toggle span').on('click', function (e) {
    var $this            = $(this),
		el               = buttons.not(this),
		togglebtnslider  = $('.standard__slider__standard__cart__toggle__slider'),
		togglebtnsall    = $('.standard__slider__standard__cart__toggle__all'),
		productslideroptions    = $('.standard__cart__slider__layout__wrapper__options'),
		sliderwrapper    = $('.standard__cart__slider__layout');

		
	$this.addClass('selected');
	el.removeClass('selected');
	if (togglebtnslider.hasClass('selected')) {
			sliderwrapper.removeClass('all');
			sliderwrapper.addClass('slider');
			productslideroptions.removeClass('d-none');
			productslideroptions.addClass('d-flex');
			$slickElement.slick(getSliderSettings());
	}
	if (togglebtnsall.hasClass('selected')) {
			sliderwrapper.removeClass('slider');
			sliderwrapper.addClass('all');
			productslideroptions.addClass('d-none');
			productslideroptions.removeClass('d-flex');
			$slickElement.slick('unslick');
		}
	});
});

//----------------------------------------------------/
// Header carousels 
//----------------------------------------------------/	
$(document).ready(function(){
	var isRtl = $('body').hasClass('rtl');
	$('.side__promo__slider__wrapper__caller').slick({
	  infinite: false,
	  rtl: isRtl,
	  dots: true,
	  slidesToShow: 1,
	  arrows: false,
	  slidesToScroll: 1,
	  draggable: false,
	  swipe: false,
	  speed: 500,
	  autoplay: true,
	  autoplaySpeed: 9000,
	  fade: true,
	  cssEase: 'linear',
	  swipeToSlide: false,
	  touchMove: false,
	  draggable: false,
	  accessibility: false,
	  useCSS: false,
	  }).on('beforeChange', function (event, slick, currentSlide, nextSlide) {
      if (isRtl) {
	  $(slick.$slides[currentSlide]).removeClass('fadeInRight');
	  $(slick.$slides[nextSlide]).addClass('fadeInRight');
	  } else {
	  $(slick.$slides[currentSlide]).removeClass('fadeInLeft');
	  $(slick.$slides[nextSlide]).addClass('fadeInLeft');
	  }
	});
	$('.login__register__sidebar__content__announcements').slick({
	  autoplay: true,
	  rtl: isRtl,
	  autoplaySpeed: 9000,
	  dots: true,
	  arrows: false,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	});
	$('.promo__slider__items__slider').slick({
	  infinite: false,
	  rtl: isRtl,
	  slidesToShow: 1,
	  arrows: false,
	  slidesToScroll: 1,
	  asNavFor: '.homepage__promo__slider__nav__wrapper',
	  draggable: false,
	  swipe: false,
	  speed: 500,
	  autoplay: true,
	  autoplaySpeed: 9000,
	  fade: true,
	  cssEase: 'linear',
	  swipeToSlide: false,
	  touchMove: false,
	  draggable: false,
	  accessibility: false,
	  useCSS: false,
	}).on('beforeChange', function (event, slick, currentSlide, nextSlide) {
	  if (isRtl) {
	  $(slick.$slides[currentSlide]).removeClass('fadeInRight');
	  $(slick.$slides[nextSlide]).addClass('fadeInRight');
	  } else {
	  $(slick.$slides[currentSlide]).removeClass('fadeInLeft');
	  $(slick.$slides[nextSlide]).addClass('fadeInLeft');
	  }
	});
	$('.promo__slider__illunsration__wrapper').slick({
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  rtl: isRtl,
	  asNavFor: '.homepage__promo__slider__nav__wrapper,.promo__slider__items__slider',
	  dots: false,
	  autoplay: true,
	  autoplaySpeed: 9000,
	  centerMode: false,
	  arrows: false,
	  speed: 500,
	  fade: true,
	  cssEase: 'linear',
	  focusOnSelect: true,
	  draggable: false,
	  swipe: false,
	  swipeToSlide: false,
	  touchMove: false,
	  draggable: false,
	  accessibility: false,
	  useCSS: false,
	}).on('beforeChange', function (event, slick, currentSlide, nextSlide) {	  
	  if (isRtl) {
	  $(slick.$slides[currentSlide]).removeClass('fadeInLeft');
	  $(slick.$slides[nextSlide]).addClass('fadeInLeft');
	  } else {
	  $(slick.$slides[currentSlide]).removeClass('fadeInRight');
	  $(slick.$slides[nextSlide]).addClass('fadeInRight');
	  }
	});
	$('.homepage__promo__slider__nav__wrapper').slick({
	  asNavFor: '.promo__slider__items__slider,.promo__slider__illunsration__wrapper',
	  autoplay: true,
	  rtl: isRtl,
	  autoplaySpeed: 9000,
	  slidesToShow: 5,
      slidesToScroll: 1,
	  dots: false,
	  arrows: false,
	  centerMode: false,
	  infinite: true,
	  focusOnSelect: true,
	  draggable: false,
	  swipe: false,
	  swipeToSlide: false,
	  touchMove: false,
	  draggable: false,
	  accessibility: false,
	  useCSS: false,
	  responsive: [
		{
		  breakpoint: 1200,
		  settings: {
			slidesToShow: 4,
		  },
		},
		{
		  breakpoint: 991,
		  settings: {
			slidesToShow: 3,
		  },
		},
		{
		  breakpoint: 761,
		   slidesToShow: 2,
		},
	  ],
	});
	$('.header__new__articles').slick({
	  slidesToShow: 1,
	  rtl: isRtl,
	  slidesToScroll: 1,
	  dots: false,
	  speed: 500,
	  arrows: false,
	  fade: true,
	  cssEase: 'linear',
	  autoplay: true,
	  autoplaySpeed: 3000,
	  centerMode: false,
	  focusOnSelect: true,
	  draggable: false,
	  swipe: false,
	  swipeToSlide: false,
	  touchMove: false,
	  draggable: false,
	  accessibility: false,
	  useCSS: false,
	});
});
//----------------------------------------------------/
// Close mobile menu when click outside 
//----------------------------------------------------/	
 $(document).ready(function () {
     $(document).click(function (event) {
         var clickover = $(event.target);
         var _opened = $(".header__responsive__menu__main").hasClass("show");
         if (_opened === true && !clickover.hasClass("navbar-toggler")) {
             $(".navbar-toggler").click();
         }
     });
	 $(".not__clickable__switch").on('click', function () {
		$(this).addClass('loading');
	 });
 });
 

//----------------------------------------------------/
// fixed header layout
//----------------------------------------------------/	
$(window).scroll(function() {
	var scroll = $(window).scrollTop(),
	    search = $('.search'),
	    body = $('body');
	if($('header.header').hasClass('fixed__header__layout')) {
		if(scroll >= 50) {
				$("header.header").addClass("top-header-fixed white-bg light-mode-texts");
				$("header.header").removeClass('dark-mode-texts');
		} else {
				$("header.header").removeClass("top-header-fixed");
				$("header.header").removeClass("white-bg");
				
				if(!$('header.header').hasClass('light-color-header')) {
					if (!search.hasClass('active') && !body.hasClass('white__header__without__hero')) {
					$("header.header").removeClass("light-mode-texts");
					$("header.header").addClass('dark-mode-texts');
					}
				}
				
		}
	}
	
	if($('body').hasClass('regular__header')) {
		if(scroll >= 50) {
			$(".sidebar__page__wrapper .sidebar").addClass("scrolled");
		} else {
			$(".sidebar__page__wrapper .sidebar").removeClass("scrolled");
		}
	}
});

//----------------------------------------------------/
// main sidebar options
//----------------------------------------------------/	
(function () {
  var sidebar = $('.sidebar'),
      body = $('body'),
      togglebtn = sidebar.find('.sidebar__extend__toggle');
		// togglebtn.on('click', function (e) {e.stopPropagation();});	
		togglebtn.on('click', function () {
		  if (body.hasClass('minimalist__sidebar')) {
		  if (sidebar.hasClass('full__width')) {
			sidebar.removeClass('full__width');
			body.removeClass('minimalist__sidebar__full__width__open');
		  } else {
			sidebar.addClass('full__width');  
			body.addClass('minimalist__sidebar__full__width__open');
		  }
		  }
		});
		// $('html, body').on('click', function () {
		  // if (sidebar.hasClass('visible')) {
		  // $('html, body').removeClass('no-scroll');
		  // sidebar.removeClass('visible');
		  // }
		// });
		// close.on('click', function () {$('html, body').removeClass('no-scroll');});

})(); 
	  
	  
//----------------------------------------------------/
// Header sidebar mobile
//----------------------------------------------------/	
(function () {
  var header = $('.header'),
      items = header.find('.header__item'),
      burger = header.find('.header__burger'),
      searchOpen = header.find('.header__search'),
      sidebar = $('.sidebar'),
	  close = sidebar.find('.sidebar__close'),
      search = $('.search');
      items.each(function () {
        var item = $(this),
        head = item.find('.header__head'),
        body = item.find('.header__body');
        head.on('click', function (e) {
        e.stopPropagation();

        if (!item.hasClass('active')) {
        items.removeClass('active');
        item.addClass('active');
        } else {
        items.removeClass('active');
        }

        searchOpen.removeClass('active');
        search.removeClass('visible');
        });
        body.on('click', function (e) {
        e.stopPropagation();
        });
		
		$('html, body').on('click', function () {
			items.removeClass('active');
		});
        });
  
  burger.on('click', function (e) {
    e.stopPropagation();
	if (!sidebar.hasClass('visible')) {
		sidebar.addClass('visible');
        $('body').addClass('no-scroll');
	} else {
		sidebar.removeClass('visible');
        $('body').removeClass('no-scroll');
	}
  });
  sidebar.on('click', function (e) {e.stopPropagation();});	
  $('body').on('click', function () {
	  if (sidebar.hasClass('visible')) {
	  $('body').removeClass('no-scroll');
	  sidebar.removeClass('visible');
	  }
  });
  close.on('click', function () {$('body').removeClass('no-scroll');});

})(); 
(function () {
  var sidebar = $('.sidebar'),
      items = sidebar.find('.sidebar__item_dropdown'),
      toggle = sidebar.find('.sidebar__toggle'),
      sidebarOverlay = sidebar.next(),
      helpOpen = sidebar.find('.sidebar__help'),
      close = sidebar.find('.sidebar__close'),
      search = $('.search'),
      theme = $('.theme'),
      help = $('.help'),
      helpOverlay = help.next(),
      helpClose = help.find('.help__close');
	  items.each(function () {
		var item = $(this),
		head = item.find('.sidebar__head'),
		body = item.find('.sidebar__menu');
		head.on('click', function (e) {
		e.stopPropagation();
		if (!item.hasClass('active')) {
		items.removeClass('active');
		item.addClass('active');
		} else {
		items.removeClass('active');
		}        
		});
		$('.sidebar__menu').on('click', function (e) {
			items.removeClass('active');
		});
		$('html, body').on('click', function () {
			items.removeClass('active');
		});
	  });
	  toggle.on('click', function () {
		sidebar.toggleClass('active');
		sidebarOverlay.toggleClass('active');
		items.toggleClass('wide');
		theme.toggleClass('wide');
	  });
	  sidebarOverlay.on('click', function () {
		sidebar.removeClass('active');
		sidebarOverlay.removeClass('active');
		items.removeClass('wide');
		theme.removeClass('wide');
	  });
	  close.on('click', function () {
		sidebar.removeClass('visible');
	  });
	  helpOpen.on('click', function () {
		help.addClass('active');
		helpOverlay.addClass('active');
	  });
	  helpOverlay.on('click', function () {
		help.removeClass('active');
		helpOverlay.removeClass('active');
	  });
	  helpClose.on('click', function () {
		help.removeClass('active');
		helpOverlay.removeClass('active');
	  });
})();
//----------------------------------------------------/
// actions btns
//----------------------------------------------------/	
(function () {
  var actions = $('.actions');
  actions.each(function () {
    var action = $(this),
        button = action.find('.actions__button'),
        body = action.find('.actions__body');
    button.on('click', function (e) {
      e.stopPropagation();

      if (!action.hasClass('active')) {
        actions.removeClass('active');
        action.addClass('active');
      } else {
        actions.removeClass('active');
      }
    });
    body.on('click', function (e) {
      e.stopPropagation();
    });
    $('html, body').on('click', function () {
      actions.removeClass('active');
    });
  });
})();
//----------------------------------------------------/
// JS tabs
//----------------------------------------------------/	
(function () {
  var tabs = $('.js-tabs');
  tabs.each(function () {
    var thisTabs = $(this),
        nav = thisTabs.find('.js-tabs-link'),
        option = thisTabs.find('.option'),
        item = thisTabs.find('.js-tabs-item');
    nav.on('click', function () {
      var thisNav = $(this),
          indexNav = thisNav.index();
      nav.removeClass('active');
      thisNav.addClass('active');
      item.hide();
      item.eq(indexNav).fadeIn();
      return false;
    }).first().trigger('click');
  });
  $(document).ready(function () {
    var option = $('.js-tabs-select .option');
    option.on('click', function () {
      var thisOption = $(this),
          indexOption = thisOption.index();
      $('.js-tabs-item').hide();
      $('.js-tabs-item').eq(indexOption).fadeIn();
    });
  });
})();
//----------------------------------------------------/
// scrollbar width
//----------------------------------------------------/	
function getScrollBarWidth() {
  var outer = $('<div>').css({
    visibility: 'hidden',
    width: 100,
    overflow: 'scroll'
  }).appendTo('body'),
      widthWithScroll = $('<div>').css({
    width: '100%'
  }).appendTo(outer).outerWidth();
  outer.remove();
  return 100 - widthWithScroll;
}
//----------------------------------------------------/
// js popups
//----------------------------------------------------/	
(function () {
  var body = $('body'),
      wrap = $('.js-popup-wrap'),
      overlay = $('.js-popup-overlay'),
      close = $('.js-popup-close');
  var el;
  $('[data-popup]').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();

    var _this = $(this),
        data = _this.data('popup');

    el = $(data);
    showPopup(el);
  });
  close.on('click', function (e) {
    var _thisClose = $(this);

    el = _thisClose.parents('.js-popup');
    e.preventDefault();
    hidePopup();
  });
  overlay.on('click', function () {
    var _thisOverlay = $(this);

    el = _thisOverlay.parents('.js-popup');
    hidePopup();
  });
  $(document).keyup(function (e) {
    if (e.keyCode === 27) hidePopup();
  });

  function hidePopup() {
    if (el) {
      el.removeClass('animation');

      if ($('.js-popup.visible').length == 1) {
        body.removeClass('no-scroll');
        body.css('padding-right', 0);
      }

      setTimeout(function () {
        el.removeClass('visible');
      }, 300);
    }
  }
})();
//----------------------------------------------------/
// notification
//----------------------------------------------------/	
(function () {
  var notification = $('.notification'),
      items = notification.find('.notification__item');
  items.each(function () {
    var item = $(this),
        like = item.find('.notification__control .notification__action:nth-child(1)'),
        reply = item.find('.notification__control .notification__action:nth-child(2)'),
        cancel = item.find('.answer__btns .answer__button:nth-child(2)'),
        answer = item.find('.answer');
    like.on('click', function () {
      like.toggleClass('active');
    });
    reply.on('click', function () {
      answer.slideDown();
    });
    cancel.on('click', function () {
      answer.slideUp();
    });
  });
})();

//----------------------------------------------------/
// Cookies Consent Box
//----------------------------------------------------/	
if(jQuery("#gbpr-badge-close").length > 0) {
	(function() {
		var act1 = document.getElementById('gbpr-badge-close')
		var act2 = document.getElementById('popuppfirsttime')
		$('#gbpr-badge-decline').on('click', function (e) {
			act2.classList.add("d-none");
		});	
		function act1Clicked(){
		   act2.classList.remove("not-accepted");
		   act2.classList.add("accepted");
		   localStorage.setItem('btn2-enabled', true);
		}
		if (localStorage.getItem('btn2-enabled'))
			act1Clicked();
		act1.addEventListener('click', act1Clicked);
	})();
}

//----------------------------------------------------/
// Cookies Consent Box
//----------------------------------------------------/	
$(document).ready(function () {
	if ($('body').hasClass('alerts__close__hide')) {
		var closeButtons = document.querySelectorAll('.alert .close'),
			alerts = document.querySelectorAll('.alert.alert-dismissible');
		
		closeButtons.forEach(function(closeButton) {
		  closeButton.addEventListener('click', function() {
			var alert = this.closest('.alert');
			var alertId = alert.getAttribute('id');
			localStorage.setItem(alertId, 'dismissed');
		  });
		});

		alerts.forEach(function(alert) {
		  var alertId = alert.getAttribute('id');
		  if (localStorage.getItem(alertId) === 'dismissed') {
			alert.style.display = 'none';
		  }
		});
	}
});