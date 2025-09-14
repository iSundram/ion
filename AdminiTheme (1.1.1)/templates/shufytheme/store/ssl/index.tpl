<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">
<div class="marketconnect__page__wrapper full__with__section landing-page bg-white ssl">
	<div class="main__page__content">
		<div class="store__page__promo__banner__wrapper">
			<div class="banner-background">
				<div class="banner-shape active">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 800 400">
					<defs>
					<linearGradient id="linear-gradient" x1="556.06" y1="209.99" x2="585.29" y2="170.51" gradientTransform="matrix(1.38, -0.05, -0.06, -1.5, -148.97, 473.36)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#2c2e30"/><stop offset="1" stop-color="#1c1e20" stop-opacity="0"/></linearGradient>
					<mask id="mask" x="-398.07" y="-559.62" width="1106.37" height="1101.99" maskUnits="userSpaceOnUse">
					<g id="mask0"><path class="cls-1" d="M409.86-75.74a2.25,2.25,0,0,1,3.37,1.79V292.2a2.25,2.25,0,0,1-3.37,1.8L65.23,110.92a2,2,0,0,1,0-3.59Z"/></g>
					</mask>
					</defs>
					<path class="cls-2" d="M515.67,362,410,296.53,768.56-4.81l90.15,47.18Z"/>
					<path class="cls-3" d="M411.87,295.14V-.68H771.24L412.72,296Z"/>
					<path class="cls-4" d="M409.87-73.28a2.25,2.25,0,0,1,3.36,1.8V294.69a2.25,2.25,0,0,1-3.37,1.79L65.21,113.28l-.09-.09a3.91,3.91,0,0,1,0-5.63l.09-.09Z"/>
					<path class="cls-1" d="M409.86-75.74a2.25,2.25,0,0,1,3.37,1.79V292.2a2.25,2.25,0,0,1-3.37,1.8L65.23,110.92a2,2,0,0,1,0-3.59Z"/>
					<g class="cls-5">
					<path class="cls-6" d="M332.89-542.83l144,213.16c67.3,99.64,35.53,224.49-62.82,281S180.15-21,112.86-120.65l-144-213.16"/>
					<path class="cls-6" d="M-265.36,117.65l144.87-74.51C-52.78,8.32,24.41,22.76,53.78,71.32S55.92,188-11.79,222.85l-144.87,74.51"/>
					<path class="cls-6" d="M-384.35,88.85-154.72-29.26c107.33-55.2,234.15-24.92,286,60.74S144.36,232.53,37,287.74L-192.6,405.84"/>
					<path class="cls-6" d="M290.53,393c-86.6-79.86-85.19-209.81,2-290.24S520.71,21,607.32,100.88s85.2,209.81-2,290.24L465.17,520.32"/>
					<path class="cls-7" d="M558.07,342.64c-35.06,34.44-96.44,35.37-137.21.09s-43.64-91.83-8.58-126.27,96.44-35.37,137.2-.09S593.13,308.2,558.07,342.64Z"/>
					<path class="cls-7" d="M639,409.31c-62.41,61.32-179.82,57.77-262.73-14S282.09,215.75,344.5,154.43s179.83-57.76,262.73,14S701.41,348,639,409.31Z"/>
					</g>
					</svg>
				</div>
			</div>
			
			<div class="row justify-content-start">
				<div class="col-lg-5 col-md-6 col-12 order-md-first order-last d-flex flex-column justify-content-center">
					<div class="store__front__promo__hero__text caption">
						<h6 class="promo__title coodiv-text-4 font-weight-700">{lang key="store.ssl.landingPage.title"}</h6>
						<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.ssl.landingPage.tagline1"}</p>
						<p class="promo__sub__title coodiv-text-8 font-weight-300">{lang key="store.ssl.landingPage.tagline2"}</p>
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Tooltip on left" class="btn btn-lg btn-primary">Get Started Now</a>
							<a href="#" class="btn btn-lg btn-primary-outline">Learn more</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/symantec-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/symantec-illustration.tpl"}
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	{include file="$template/store/ssl/shared/nav.tpl" current=""}
	{if count($certificates) > 0}
		{foreach $certificates as $type => $products}
			{foreach $products as $product}
				{if $type == "dv"}
					{if $dv_lower}
						{if $product->pricing()->best()->yearlyPrice()|replace:$activeCurrency.suffix:""|replace:$activeCurrency.prefix:""|replace:"/`$LANG.pricingCycleShort.annually`":"" < $dv_lower}
							{assign var="dv_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
						{/if}
					{else}
						{assign var="dv_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
					{/if}
				{elseif $type == "ov"}
					{if $ov_lower}
						{if $product->pricing()->best()->yearlyPrice()|replace:$activeCurrency.suffix:""|replace:$activeCurrency.prefix:""|replace:"/`$LANG.pricingCycleShort.annually`":"" < $dv_lower}
							{assign var="ov_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
						{/if}
					{else}
						{assign var="ov_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
					{/if}
				{elseif $type == "ev"}
					{if $ev_lower}
						{if $product->pricing()->best()->yearlyPrice()|replace:$activeCurrency.suffix:""|replace:$activeCurrency.prefix:""|replace:"/`$LANG.pricingCycleShort.annually`":"" < $dv_lower}
							{assign var="ev_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
						{/if}
					{else}
						{assign var="ev_lower" value=$product->pricing()->best()->yearlyPrice()|replace:"/`$LANG.pricingCycleShort.annually`":""}
					{/if}
				{/if}
			{/foreach}
		{/foreach}
	{/if}
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.landingPage.chooseLevel"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.marketgoo.featuresdetail.4"}</p>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6 col-12">
					<div class="ssl__landingpage__box card d-flex flex-column justify-content-center align-items-center py-10 px-13 h-100">
						<div class="icon"><img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-dv-icon.png"></div>
						<div class="d-flex flex-column justify-content-center align-items-center text text-center">
						<h4 class="coodiv-text-6 font-weight-200 mb-6">{lang key="store.ssl.landingPage.dv"}</h4>
						<p class="coodiv-text-10 font-weight-300 mb-8">{lang key="store.ssl.landingPage.dvInformation"}</p>
						
						<div class="package__price mb-9 mt-auto">
							<div class="price">
								<h6 class="coodiv-text-11 font-weight-400 mb-0">{$LANG.startingfrom}</h6>
								{include file="$template/includes/theme-core/coodiv-prices.tpl" price=$dv_lower priceCycle="annually"}
							</div>
						</div>
						<div class="d-flex justify-content-center">
							<a href="{routePath('store-product-group', $routePathSlug, 'dv')}" class="btn btn-primary">{lang key="learnmore"}</a>
						</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 col-12">
					<div class="ssl__landingpage__box card d-flex flex-column justify-content-center align-items-center py-10 px-13 h-100">
						<div class="icon"><img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-ov-icon.png"></div>
						<div class="d-flex flex-column justify-content-center align-items-center text text-center">
						<h4 class="coodiv-text-6 font-weight-200 mb-6">{lang key="store.ssl.landingPage.ov"}</h4>
						<p class="coodiv-text-10 font-weight-300 mb-8">{lang key="store.ssl.landingPage.ovInformation"}</p>
						
						<div class="package__price mb-9 mt-auto">
							<div class="price">
								<h6 class="coodiv-text-11 font-weight-400 mb-0">{$LANG.startingfrom}</h6>
								{include file="$template/includes/theme-core/coodiv-prices.tpl" price=$ov_lower priceCycle="annually"}
							</div>
						</div>
						<div class="d-flex justify-content-center">
							<a href="{routePath('store-product-group', $routePathSlug, 'ov')}" class="btn btn-primary">{lang key="learnmore"}</a>
						</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 col-12">
					<div class="ssl__landingpage__box card d-flex flex-column justify-content-center align-items-center py-10 px-13 h-100">
						<div class="icon"><img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-ev-icon.png"></div>
						<div class="d-flex flex-column justify-content-center align-items-center text text-center">
						<h4 class="coodiv-text-6 font-weight-200 mb-6">{lang key="store.ssl.landingPage.ev"}</h4>
						<p class="coodiv-text-10 font-weight-300 mb-8">{lang key="store.ssl.landingPage.evInformation"}</p>
						
						<div class="package__price mb-9 mt-auto">
							<div class="price">
								<h6 class="coodiv-text-11 font-weight-400 mb-0">{$LANG.startingfrom}</h6>
								{include file="$template/includes/theme-core/coodiv-prices.tpl" price=$ev_lower priceCycle="annually"}
							</div>
						</div>
						<div class="d-flex justify-content-center">
							<a href="{routePath('store-product-group', $routePathSlug, 'ev')}" class="btn btn-primary">{lang key="learnmore"}</a>
						</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	
	<div class="py-14 white-bg position-relative border-top-light">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.landingPage.what"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.ssl.landingPage.whatInfo"}</p>
				</div>
			</div>
			<div class="row justify-content-start">
				<div class="col-md-5 col-12 position-relative">
				<div class="section__graphic__sticky">
                    <img src="{$WEB_ROOT}/templates/{$template}/assets/img/core-img/ssl.svg">
                </div>	
				</div>
				<div class="col-md-7 col-12">
				<ul class="default__list__features">
					<li><i class="fal fa-check"></i>{lang key="store.ssl.landingPage.secureConnection"}</li>
					<li><i class="fal fa-check"></i>{lang key="store.ssl.landingPage.encrypts"}</li>
					<li><i class="fal fa-check"></i>{lang key="store.ssl.landingPage.padlock"}</li>
					<li><i class="fal fa-check"></i>{lang key="store.ssl.landingPage.authenticates"}</li>
				</ul>
				<p class="mt-7 coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.certTypeInfo" dvLink=routePath('store-product-group', $routePathSlug, 'dv') ovLink=routePath('store-product-group', $routePathSlug, 'ov') evLink=routePath('store-product-group', $routePathSlug, 'ev')}</p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative border-top-light">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.landingPage.benefits.title"}</h2>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.benefits.subtitle"}</p>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.benefits.higherResults"}</p>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.benefits.reasons"}:</p>
				</div>
			</div>
			<div class="features__boxes row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-spider-black-widow"></i>	
						</div>
						<h5 class="feature__title coodiv-text-8 font-weight-300">{lang key="store.ssl.landingPage.benefits.encrypt"}</h5>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 mb-10">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-user-shield"></i>
						</div>
						<h5 class="feature__title">{lang key="store.ssl.landingPage.benefits.privacy"}</h5>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 mb-10">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-money-check-alt"></i>	
						</div>
						<h5 class="feature__title">{lang key="store.ssl.landingPage.benefits.secure"}</h5>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 mb-10">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-shield-check"></i>	
						</div>
						<h5 class="feature__title">{lang key="store.ssl.landingPage.benefits.legitimacy"}</h5>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 mb-10">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-lock-alt"></i>	 
						</div>
						<h5 class="feature__title">{lang key="store.ssl.landingPage.benefits.https"}</h5>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 mb-10">
					<div class="feature text-center">
						<div class="feature__icon">
						<i class="fad fa-search"></i>
						</div>
						<h5 class="feature__title">{lang key="store.ssl.landingPage.benefits.seo"}</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="py-18 position-relative gradient__bg__1">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13 dark-mode-texts">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key="store.ssl.landingPage.browser.title"}</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-lg-8 col-md-10 col-12">
					<div class="browser__muckup">
						<div class="browser__muckup__header">
							<span class="link"><small>http://</small>yourwebsite.com</span>
							<span class="option close"></span>
							<span class="option resize"></span>
							<span class="option hide"></span>
						</div>
						
						<div class="browser__muckup__body d-flex flex-column justify-content-center align-items-center">
							<div class="text-center text">
								<img class="mb-6" src="{$WEB_ROOT}/assets/img/marketconnect/symantec/padlock-x.png">
								<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.browser.insecureNotice"}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center dark-mode-texts mt-10">
				<div class="col-lg-8 col-11 text-center">
					<p class="coodiv-text-7 font-weight-200 text-center">{lang key="store.ssl.landingPage.secureInMinutes"}</p>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.landingPage.evs.upgradeTitle"}</h2>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.evs.description"}</p>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.ssl.landingPage.evs.whatIs"}</p>
				</div>
			</div>
			
			<div class="row justify-content-center text-center">
                <div class="col-sm-6 col-md-3">
                    <div class="item">
                        <img class="ssl__store__image__illu" src="{$WEB_ROOT}/assets/img/marketconnect/symantec/shopfront-dv.png">
                        <h4 class="coodiv-text-8 font-weight-700">{lang key="store.ssl.landingPage.dv"}</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="item">
                        <img class="ssl__store__image__illu" src="{$WEB_ROOT}/assets/img/marketconnect/symantec/shopfront-ov.png">
                        <h4 class="coodiv-text-8 font-weight-700">{lang key="store.ssl.landingPage.ov"}</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="item">
                        <img class="ssl__store__image__illu" src="{$WEB_ROOT}/assets/img/marketconnect/symantec/shopfront-ev.png">
                        <h4 class="coodiv-text-8 font-weight-700">{lang key="store.ssl.landingPage.ev"}</h4>
                    </div>
                </div>
            </div>
			<p class="text-center mt-10"><a href="{routePath('store-product-group', $routePathSlug, 'ev')}" class="btn btn-default">{lang key="store.ssl.landingPage.evs.learn"}</a></p>
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative border-top-light">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.websiteBuilder.faq.title"}</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
					{foreach [[1,2,3,4,5]] as $columns}
						{foreach $columns as $row}
						<div class="coodiv__faq__accordions__item">
							<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
								<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
									{lang key="store.ssl.landingPage.faq.q$row"}
								</button>
							</div>
							<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
								<div class="coodiv-text-11 font-weight-400">
									{lang key="store.ssl.landingPage.faq.a$row"}
								</div>
							</div>
						</div>	
						{/foreach}	
					{/foreach}	
					</div>
				</div>
			</div>
			{include file="$template/store/ssl/shared/logos.tpl"}
		</div>
	</div>



    

</div>

<script>
jQuery(document).ready(function() {
    var collapseHeader = jQuery(".card-header[data-toggle='collapse']");
    collapseHeader.on("click", function() {
        var expand = jQuery(this).find('span.arrow:first-child i');
        if(expand.hasClass('fa-chevron-right')) {
            expand.removeClass('fa-chevron-right').addClass('fa-chevron-down');
            jQuery(this).closest('.card')
                .siblings()
                .find('span.arrow:first-child i')
                .removeClass('fa-chevron-down')
                .addClass('fa-chevron-right');
        } else {
            expand.removeClass('fa-chevron-down').addClass('fa-chevron-right');
        }
    });
    jQuery('p.help-me-choose').click(function(e) {
        e.preventDefault();
        if (!jQuery('#collapseHelpMeChoose').hasClass('show')) {
            jQuery('#collapseHelpMeChoose').collapse('show');
        }
        jQuery('html, body').animate({
            scrollTop: jQuery('#collapseHelpMeChoose').offset().top - 75
        }, 500);
    });
    var hash = location.hash.replace('#', '');
    if (hash == 'helpmechoose') {
        jQuery('html, body').animate({
            scrollTop: jQuery('#collapseHelpMeChoose').offset().top - 75
        }, 500);
    }
});
</script>
