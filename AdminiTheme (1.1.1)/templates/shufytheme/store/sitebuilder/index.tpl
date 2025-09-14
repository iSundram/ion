<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page sitebuilder">

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
						<img style="width: 130px;margin-bottom: 5px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/header-img.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.siteBuilder.features.essentials.1"}</h6>
						<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.siteBuilder.featuresdescriptions.essentials.1"}</p>
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a>
						</div>
					</div>
				</div>
				
				
				
				
				
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
						{if file_exists("templates/$template/assets/svg/orderform/sitebuilder-illustration.tpl")}
							{include file="{$template}/assets/svg/orderform/sitebuilder-illustration.tpl"}
						{/if}
						</div>
					</div>
				</div>
				
				
				
			</div>
		</div>
	</div>
	
	<div class="py-14 white-bg" id="how">
		<div class="inner__page__content__container">
			<div class="row align-items-center">
                <div class="col-lg-7 col-12 hidden-xs pl-lg-10">
                    <img src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/journey-builder.png" class="d-none d-lg-block">
                </div>
                <div class="col-lg-5 col-12">
                    <h6 class="coodiv-text-4 font-weight-700">{lang key="store.siteBuilder.introHeadline"}</h6>
                    <p class="coodiv-text-9 font-weight-400">{lang key="store.siteBuilder.intro1"}</p>
                    <p class="coodiv-text-9 font-weight-400">{lang key="store.siteBuilder.intro2"}</p>
                </div>
            </div>
		</div>
	</div>
    <div class="features border-top-light" id="features">
        <div class="inner__page__content__container">
            <h6 class="coodiv-text-4 font-weight-700 text-center mb-5">{lang key="store.siteBuilder.featuresTitle"}</h6>
            <ul class="nav nav-tabs coodiv justify-content-center" role="tablist">
                <li class="nav-item"><a href="#essentials" class="nav-link active" aria-controls="essentials" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresEssentials"}</a></li>
                <li class="nav-item"><a href="#social" class="nav-link" aria-controls="social" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresSocial"}</a></li>
                <li class="nav-item"><a href="#store" class="nav-link" aria-controls="store" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresStore"}</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade show active" id="essentials">
                    <p class="coodiv-text-11 text-center">{lang key="store.siteBuilder.features.essentials.tagline"}</p>
					
					<div class="row main__features__store__blocks">
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-01.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.1"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.1"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-02.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.2"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.2"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-03.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.3"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.3"}</p>
							</div>
						</div>
                    </div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-04.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.4"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.4"}</p>
							</div>
						</div>
                    </div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-05.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.5"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.5"}</p>
							</div>
						</div>
                    </div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-06.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.essentials.6"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.essentials.6"}</p>
							</div>
						</div>
                    </div>
					</div>
				</div>
                <div role="tabpanel" class="tab-pane fade" id="social">
					
					<p class="coodiv-text-11 text-center">{lang key="store.siteBuilder.features.blog.tagline"}</p>
					
					<div class="row main__features__store__blocks">
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/social/icon-01.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.1"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.1"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/essential/icon-02.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.2"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.2"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/social/icon-03.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.3"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.3"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/social/icon-04.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.4"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.4"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/social/icon-05.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.5"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.5"}</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-6 mb-8">
						<div class="feature flex-column">
							<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/social/icon-06.png"></div>
							<div class="text">
								<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.blog.6"}</h4>
								<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.blog.6"}</p>
							</div>
						</div>
					</div>
					</div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="store">
						
						<p class="coodiv-text-11 text-center">{lang key="store.siteBuilder.features.store.tagline"}</p>
						
						<div class="row main__features__store__blocks">
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-01.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.1"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.1"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-02.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.2"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.2"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-03.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.3"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.3"}</p>
								</div>
							</div>
						</div>
						
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-05.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.5"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.5"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-06.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.6"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.6"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-07.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.7"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.7"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-08.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.8"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.8"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-09.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.9"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.9"}</p>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 mb-8">
							<div class="feature flex-column">
								<div class="icon"><img style="width: 90px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/icons/store/icon-10.png"></div>
								<div class="text">
									<h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key="store.siteBuilder.features.store.10"}</h4>
									<p class="coodiv-text-11 mb-0 font-weight-400">{lang key="store.siteBuilder.featuresdescriptions.store.10"}</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
            <div class="text-center">
                <a href="#" class="btn btn-primary large" onclick="smoothScroll('#pricing');return false">
                    {lang key="store.siteBuilder.viewPricing"}
                </a>
            </div>
        </div>
    </div>

	<div class="border-top-light">
		<div class="inner__page__content__container">
			<div class="templates border-0">
				<h2>{lang key="store.siteBuilder.templatesTitle"}</h2>
				<br>
				<ul class="nav nav-tabs coodiv justify-content-center" role="tablist">
					<li class="nav-item">
						<a href="#" class="nav-link templates-filter-btn" data-type="single">{lang key="store.siteBuilder.templates.singlePage"}</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link templates-filter-btn" data-type="multi">{lang key="store.siteBuilder.templates.multiPage"}</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link templates-filter-btn" data-type="ecom">{lang key="store.siteBuilder.templates.eCommerce"}</a>
					</li>
				</ul>
				<div class="previews">
					<div class="row">
						{foreach $templates as $i => $template}
							{if $i == 11}
								<div class="col-md-6 col-lg-4 show-more">
									<a href="#">
										<div>
											<span class="icon-wrapper">
												<i class="fas fa-plus"></i>
											</span>
										</div>
										<span class="tplname">{lang key="viewMore"}</span>
									</a>
								</div>
							{else}
								<div class="col-md-6 col-lg-4 type-{$template['type']}{if $i > 11} d-none{/if}">
									<a href="{$template['preview']}" target="_blank">
										<div class="thumb-wrapper">
											<img {if $i < 11}src{else}data-src{/if}="{$template['thumbnail']}" class="deferred">
											<span class="type-label">{lang key="store.siteBuilder.templates.typeLabels.{$template['type']}"}</span>
										</div>
										<span class="tplname">{$template['name']}</span>
									</a>
								</div>
							{/if}
						{/foreach}
					</div>
				</div>
				<p class="font-weight-400 coodiv-text-11 text-center">{lang key="store.siteBuilder.templatesOutro"}</p>
			</div>
		</div>
	</div>

    <div class="pricing" id="pricing">
        <div class="inner__page__content__container">
            {if $trialPlan}
                <h2>{lang key="store.siteBuilder.tryFree"}</h2>
                <p class="text-center">
                    {lang key="store.siteBuilder.tryFreeIntro"}
                    <br class="hidden-xs">
                    {lang key="store.siteBuilder.tryFreeIntro2"}
                </p>
                <br>
                <div class="text-center">
                    <form method="post" action="{routePath('cart-order')}">
                        <input type="hidden" name="pid" value="{$trialPlan->id}">
                        <input type="hidden" name="billingcycle" value="">
                        <button type="submit" class="btn btn-primary large">
                            {lang key='store.siteBuilder.tryFreeCta'}
                        </button>
                    </form>
                </div>
            {else}
                <h2>{lang key="store.siteBuilder.pricingTitle"}</h2>
            {/if}
            <div class="pricing-table">
                <div class="pricing-table-row col-heading">
                    <div class="col-primary">{lang key="store.siteBuilder.featuresLabelTitle"}</div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">{$plan->name}</div>
                    {/foreach}
                </div>
                {foreach $promoHelper->getFeatures() as $featureKey => $feature}
                    <div class="pricing-table-row">
                        <div class="col-primary">{lang key="store.siteBuilder.featuresLabels.$featureKey"}</div>
                        {foreach $plans as $plan}
                            <div class="col-plans-{count($plans)}">
                                {if isset($plan->features[$feature])}
                                    {if is_bool($plan->features[$feature])}
                                        {if $plan->features[$feature]}
                                            <i class="fas fa-check"></i>
                                        {else}
                                            <i class="fas fa-times"></i>
                                        {/if}
                                    {else}
                                        {$plan->features[$feature]}
                                    {/if}
                                {else}
                                    <i class="fas fa-check"></i>
                                {/if}
                            </div>
                        {/foreach}
                    </div>
                {/foreach}
                <div class="pricing-table-row col-heading">
                    <div class="col-primary"></div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">
                            {if $inPreview && !$plan->pricing()->first()}
                                -
                            {else}
                                {$plan->pricing()->first()->price()}
                            {/if}
                        </div>
                    {/foreach}
                </div>
                <div class="pricing-table-row col-heading">
                    <div class="col-primary"></div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">
                            <form action="{routePath('cart-order')}" method="post">
                                <input type="hidden" name="pid" value="{$plan->id}">
                                <button type="submit" class="btn btn-primary btn-sm d-block w-100">
                                    {lang key='buy'}
                                </button>
                            </form>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
	
	<div class="pb-14 pt-35 white-bg" id="faqs">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.siteBuilder.compareTitle"}</h2>
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
											{lang key="store.siteBuilder.compare$row"}
										</button>
									</div>
									<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
										<div class="coodiv-text-11 font-weight-400">
											{lang key="store.siteBuilder.compare{$row}desc"}
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
    var baseRef = '.landing-page.sitebuilder .templates';
    function showAllTemplates() {
        jQuery(baseRef + ' .previews .show-more').remove();
        jQuery(baseRef + ' .previews .d-none').hide().removeClass('d-none').fadeIn();
        jQuery(baseRef + ' .previews img.deferred').each(function() {
            jQuery(this).attr('src', jQuery(this).data('src'));
        }).removeClass('deferred');
    }
    jQuery(document).ready(function() {
        jQuery(baseRef + ' .templates-filter-btn').click(function(e) {
            e.preventDefault();
            jQuery(baseRef + ' .templates-filter-btn').removeClass('active');
            jQuery(this).addClass('active');
            showAllTemplates();
            jQuery(baseRef + ' .previews .type-single,' + baseRef + ' .previews .type-multi,' + baseRef + ' .previews .type-ecom').hide();
            jQuery(baseRef + ' .previews .type-' + jQuery(this).data('type')).show();
        });
        jQuery(baseRef + ' .previews .show-more a').click(function(e) {
            e.preventDefault();
            showAllTemplates();
        });
    });
</script>
