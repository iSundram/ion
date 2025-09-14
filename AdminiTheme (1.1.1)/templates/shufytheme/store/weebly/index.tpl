<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page bg-white weebly">
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
						<img style="width: 130px;margin-bottom: 5px;" src="{$WEB_ROOT}/assets/img/marketconnect/weebly/logo.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.websiteBuilder.headline"}</h6>
						<p class="promo__sub__title coodiv-text-9 font-weight-300 mt-4">{lang key="store.websiteBuilder.introduction"}</p>	
			
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/weebly-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/weebly-illustration.tpl"}
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="full__width__secondarysidebar__menu white-bg">
		<div class="main__page__content">
			<ul class="nav" id="pills-tab" role="tablist">
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#overview');return false">{lang key="store.websiteBuilder.tab.overview"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#features');return false">{lang key="store.websiteBuilder.tab.features"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#pricing');return false">{lang key="store.websiteBuilder.tab.pricing"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#faq');return false">{lang key="store.websiteBuilder.tab.faq"}</a></li>
			</ul>
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative" id="how">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key="store.websiteBuilder.ddEditor"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.websiteBuilder.ddEditorDescription"}</p>
				</div>
			</div>
			
			<div class="row main__features__store__blocks">
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
						<div class="icon"><i class="fad fa-pager"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.builder"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.builderDescription"}</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
						<div class="icon"><i class="fad fa-shopping-cart"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.ecommerce"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.ecommerceDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-align-left"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.forms"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.formsDescription"}</p>
					</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-copy"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.templates"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.templatesDescription"}</p>
					</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-images"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.gallery"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.galleryDescription"}</p>
					</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-newspaper"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.blogging"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.bloggingDescription"}</p>
					</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-video"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.video"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.videoDescription"}</p>
					</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-8">
					<div class="feature">
					<div class="icon"><i class="fad fa-file-search"></i></div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.websiteBuilder.features.seo"}</h4>
					<p class="coodiv-text-11 mb-0">{lang key="store.websiteBuilder.features.seoDescription"}</p>
					</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	
	<div class="py-14 white-bg position-relative border-top-light" id="pricing">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key="clientareaaddonpricing"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.websiteBuilder.tagline"}</p>
				</div>
			</div>
			
			<div class="row justify-content-center align-items-center store__pricing__plan__cycle__wrapper">
			<div class="col-auto d-lg-block d-none">
				<div class="btn-group store__pricing__plan__cycle mb-6" role="group">
					{foreach $billingCycles as $cycle}
						<button type="button" class="btn btn-default cycle-change{if $cycle@first} active{/if}" data-cycle="{$cycle}">
							{lang key={'orderpaymentterm'|cat:$cycle}}
						</button>
					{/foreach}
				</div>
			</div>
			
			{if !$loggedin && $currencies}
			<div class="col-md-3">
				<form method="post" action="">
					<select name="currency" class="form-control currency-selector" onchange="submit()">
						<option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
						{foreach $currencies as $currency}
							<option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
						{/foreach}
					</select>
				</form>
			</div>
			{/if}
		</div>

		{if $litePlan}
			<div class="border rounded-20 bg-white px-10 py-10 mb-4">
				<div class="pricing float-right">
					{foreach $litePlan->pricing()->allAvailableCycles() as $pricing}
						<h4 class="pricing-text {$pricing->cycle()}{if !$pricing@first} w-hidden{/if}">
							{$pricing->toFullString()}
						</h4>
					{foreachelse}
						{if $inPreview}
							-
						{/if}
					{/foreach}
					<h4 class="pricing-text not-available w-hidden">-</h4>
				</div>
				<h4 class="coodiv-text-7 font-weight-bold">{lang key="store.websiteBuilder.pricing.free.headline"}</h4>
				<p class="coodiv-text-10 mb-0">{lang key="store.websiteBuilder.pricing.free.tagline"}</p>
				<p class="coodiv-text-10">{$litePlan->description}</p>
				<form method="post" action="{routePath('cart-order')}">
					<input type="hidden" name="pid" value="{$litePlan->id}">
					<input type="hidden" name="billingcycle" value="">
					<button type="submit" class="btn btn-primary mt-6">
						{lang key='getStartedNow'}
					</button>
				</form>
			</div>
		{/if}
		
		<div class="row justify-content-center weebly-plans">
		{if count($products) > 0}
			{foreach $products as $key => $product}
			<div class="col-12 col-md-6 col-lg-4 mb-8 mb-lg-0">
				<div class="pricing-item pricing-plans-special text-left border rounded-8 pt-15 pb-8 px-9 white-bg h-100 d-flex flex-column">
					<div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
						<h5 class="coodiv-text-7 mb-0 font-weight-700">{$product->name}</h5>
					</div>
					<p class="coodiv-text-12">{lang key="store.websiteBuilder.pricing.idealFor" for=$product->idealFor}</p>
					<p class="coodiv-text-11 mt-8">{lang key="store.websiteBuilder.ddEditorDescription"}</p>
					
										
					<div class="buttom-pricing-element ">
					{foreach $product->pricing()->allAvailableCycles() as $pricing}
					<div class="price pricing-text {$pricing->cycle()}{if !$pricing@first} w-hidden{/if}">
					<div class="pricing align-items-center mt-10 mb-2 d-flex">
						<span class="coodiv-text-4 font-weight-bold color-blackish-blue mr-4">{$pricing->toFullString()}</span>
					</div>
					</div>
					{foreachelse}
						{if $inPreview}
							-
						{/if}
					{/foreach}
					<span class="pricing-text not-available w-hidden">-</span>
	
					<strong class="plan-highlight mb-7">Save more money with an annual term</strong>					
					<form method="post" action="{routePath('cart-order')}">
						<input type="hidden" name="pid" value="{$product->id}">
						<input type="hidden" name="billingcycle" value="">
						<button type="submit" class="btn btn-outline-dark d-block w-100 coodiv-text-12 btn-signup">{lang key="signup"}</button>
					</form>
					
					<h6 class="coodiv-text-11 font-weight-bold mt-10">{lang key="store.websiteBuilder.pricing.siteFeatures"}</h6>
					<ul class="pricing-plans-special-body border-bottom">
					{foreach $product->siteFeatures as $langKey => $feature}
						<li>
							{lang key="store.websiteBuilder.pricing.features.$langKey"}
						</li>
					{/foreach}
					</ul>		
					<h6 class="coodiv-text-11 font-weight-bold mt-5">{lang key="store.websiteBuilder.pricing.eCommerceFeatures"}</h6>					
					{foreach $product->ecommerceFeatures as $langKey => $feature}
						<p class="coodiv-text-11 mb-0">
							{lang key="store.websiteBuilder.pricing.features.$langKey"}
						</p>
					{/foreach}
					</div>
				</div>
			</div>
			{/foreach}
			{elseif $inPreview}
				<div class="col-12 lead text-center">
					{lang key="store.websiteBuilder.adminPreview"}
				</div>
			{/if}
			
		</div>
			
			
		</div>
	</div>

	<div class="py-14 white-bg" id="faq">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.websiteBuilder.faq.title"}</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
						{foreach [[1,2,3,4,5,7,8]] as $columns}
							{foreach $columns as $row}
								<div class="coodiv__faq__accordions__item">
									<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
										<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
											{lang key="store.websiteBuilder.faq.q$row"}
										</button>
									</div>
									<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
										<div class="coodiv-text-11 font-weight-400">
											{lang key="store.websiteBuilder.faq.a$row"}
										</div>
									</div>
								</div>	
							{/foreach}	
						{/foreach}	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    jQuery(document).ready(function(){
        jQuery('.landing-page.weebly .cycle-change').on('click', function() {
            var newCycle = jQuery(this).data('cycle');
            jQuery('.row.weebly-plans .pricing-text').hide();
            jQuery('.landing-page.weebly .' + newCycle).show();
            jQuery('.landing-page.weebly .cycle-change').removeClass('active');
            jQuery(this).addClass('active');
            jQuery('.landing-page.weebly .pricing input[name="billingcycle"]').val(newCycle);
            jQuery('.weebly-plans div.pricing-item').each(function(index) {
                if (jQuery(this).find('.' + newCycle).length <= 0) {
                    jQuery(this).find('span.not-available').show();
                    jQuery(this).parent('div').find('.btn-signup').prop('disabled', true);
                    jQuery(this).fadeTo('slow', 0.5);
                } else {
                    jQuery(this).find('span.not-available').hide();
                    jQuery(this).parent('div').find('.btn-signup').prop('disabled', false);
                    jQuery(this).fadeTo('slow', 1);
                }
            });
        });

        var startCycle = jQuery('.btn.cycle-change.active').data('cycle');
        jQuery('.landing-page.weebly .pricing input[name="billingcycle"]').val(startCycle);
    });
</script>
