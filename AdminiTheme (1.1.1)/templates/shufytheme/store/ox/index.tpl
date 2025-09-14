<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page bg-white ox">

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
						<img style="width: 210px;margin-bottom: 10px;" src="{$WEB_ROOT}/assets/img/marketconnect/ox/logo.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.ox.standout.feature1.title"}</h6>
						<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.ox.promoHeading"}</p>
										
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#oxPricing')">{lang key="store.emailServices.overview.learn"}</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/ox-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/ox-illustration.tpl"}
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row main__features__store__blocks">
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-cloud-upload"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature1.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature1.detail"}</p>
					</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-calendar-alt"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature2.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature2.detail"}</p>
					</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-inbox-in"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature3.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature3.detail"}</p>
					</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-archive"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature4.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature4.detail"}</p>
					</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-layer-plus"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature5.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature5.detail"}</p>
					</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-user-secret"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.feature6.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.feature6.detail"}</p>
					</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-mailbox"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.standout.feature2.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.standout.feature2.detail"}</p>
					</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
					<div class="icon">
						<i class="fad fa-trees"></i>
					</div>
					<div class="text">
					<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.ox.standout.feature3.title"}</h4>
					<p class="coodiv-text-11 font-weight-400 mb-8">{lang key="store.ox.standout.feature3.detail"}</p>
					</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	
	<div class="pricing border-top-light mt-0 pt-14" id="oxPricing">
        <div class="inner__page__content__container">
            <h6 class="coodiv-text-7 font-weight-bold text-center">{lang key="store.ox.pricingHeadline"}</h6>
			
			
			<div class="row justify-content-center mt-13">
				{foreach $plans as $plan}
				       <div class="col-12 col-md-6 col-lg-4 mb-8 mb-lg-0">
                            <div class="pricing-plans-special border rounded-8 pt-15 pb-8 px-9 white-bg h-100 d-flex flex-column">
                                <div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
                                    <h5 class="coodiv-text-8 mb-0 fw-bold">{$plan->productGroup->name}{$plan->name}</h5>
                                </div>                                
								<div class="buttom-pricing-element mt-auto">
								<div class="pricing d-flex align-items-center mt-10 mb-2">
                                    <span class="coodiv-text-4 font-weight-bold color-blackish-blue mr-4">
									{if $plan->isFree()}
										{lang key='orderpaymenttermfree'}
									{elseif $plan->pricing()->first()}
										{$plan->pricing()->first()->toPrefixedString()}
									{else}
										-
									{/if}
									</span>
                                </div>
								<strong class="plan-highlight mb-7">Save more money with annual term</strong>
								<form action="{routePath('cart-order')}" method="post">
									<input type="hidden" name="pid" value="{$plan->id}">
									<button type="submit" class="btn btn-outline-dark d-block w-100 coodiv-text-12 {if $plan->is_featured}btn-cpanelseo{else}btn-default{/if}">
										{lang key="ordernowbutton"}
									</button>
								</form>
								<ul class="pricing-plans-special-body mt-7">
									{foreach $plan->features as $feature => $value}
										 <li>
										 {if is_bool($plan['features'][$feature])}{else}
                                            <b>{$plan['features'][$feature]}</b>
                                        {/if}
										{$feature}</li>
                                    {/foreach}
								</ul>
								</div>
                            </div>
                        </div>
				{/foreach}			
			</div>
        </div>
    </div>
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.emailServices.faqs.title"}</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
					{foreach [[1,2,3,4,5,6,7,8]] as $columns}
						{foreach $columns as $row}
						<div class="coodiv__faq__accordions__item">
							<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
								<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
									{lang key="store.ox.faq$row.question"}
								</button>
							</div>
							<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
								<div class="coodiv-text-11 font-weight-400">
									{lang key="store.ox.faq$row.answer"}
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

