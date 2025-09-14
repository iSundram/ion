<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page xovinow">
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
						<img style="width: 80px" src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/logo.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.xoviNow.tagline" lineBreak='<div class="d-none d-lg-block"></div>'}</h6>
						<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.xoviNow.measureResults2" startBold="<strong>" endBold="</strong>"}</p>
										
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#cpsPricing')">{lang key="store.emailServices.overview.buy"}</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/xovinow-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/xovinow-illustration.tpl"}
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
				<li role="presentation" class="nav-item"><a class="nav-link active" href="#keywords" aria-controls="keywords" role="tab" data-toggle="tab">{lang key="store.emailServices.incoming.title"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#advisor" aria-controls="advisor" role="tab" data-toggle="tab">{lang key="store.emailServices.outgoing.title"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#ranktracker" aria-controls="ranktracker" role="tab" data-toggle="tab">{lang key="store.emailServices.archiving.title"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#siteaudit" aria-controls="siteaudit" role="tab" data-toggle="tab">{lang key="store.emailServices.archiving.title"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#textoptimizer" aria-controls="textoptimizer" role="tab" data-toggle="tab">{lang key="store.emailServices.archiving.title"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#benchmarking" aria-controls="benchmarking" role="tab" data-toggle="tab">{lang key="store.emailServices.archiving.title"}</a></li>
			</ul>
		</div>
	</div>
	
	<div id="overview" class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="keywords">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/keywords.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.keywords.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.keywords.line1"}</p>
                            <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet3"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet4"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet5"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.keywords.bullet6"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="advisor">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/advisor.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.advisor.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.advisor.line1"}</p>
                            <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.advisor.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.advisor.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.advisor.bullet3"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.advisor.bullet4"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.advisor.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="ranktracker">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/rank-tracker.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.rankTracker.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.rankTracker.line1"}</p>
                             <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.rankTracker.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.rankTracker.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.rankTracker.bullet3"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.rankTracker.bullet4"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.rankTracker.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="siteaudit">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/site-audit.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.siteAudit.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.siteAudit.line1"}</p>
                             <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.siteAudit.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.siteAudit.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.siteAudit.bullet3"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.siteAudit.bullet4"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.siteAudit.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="textoptimizer">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/text-optimizer.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.textOptimizer.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.textOptimizer.line1"}</p>
                             <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.textOptimizer.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.textOptimizer.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.textOptimizer.bullet3"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="benchmarking">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/benchmarking.svg">
                        </div>
                        <div class="col-md-6">
                            <h3 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.features.benchmarking.title"}</h3>
                            <p class="coodiv-text-9 font-weight-400">{lang key="store.xoviNow.features.benchmarking.line1"}</p>
                             <ul class="default__list__features">
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.benchmarking.bullet1"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.benchmarking.bullet2"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.benchmarking.bullet3"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.benchmarking.bullet4"}</li>
                                <li><i class="fal fa-check"></i>{lang key="store.xoviNow.features.benchmarking.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
			
	<div class="py-14 white-bg position-relative border-top-light">
		<div class="inner__page__content__container">
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="feature-carousel">
						<div id="xovinow-screenshots" class="carousel slide" data-ride="carousel" data-interval="10000">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/dashboard.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/rankings.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/keyword_research_keywords.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/tracked_keywords.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/projects.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/site_audit.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/advisor_overview_column.png">
								</div>
								<div class="carousel-item">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/xovinow/screenshots/advisor_task_details.png">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-12 d-flex align-items-center pl-lg-9">
					<div class="text">
						<h3 class="coodiv-text-7 font-weight-700">{lang key="store.xoviNow.measureResultsTitle"}</h3>
						<p class="coodiv-text-11 font-weight-400">{lang key="store.xoviNow.measureResults2" startBold="<strong>" endBold="</strong>"}</p>
						<p class="coodiv-text-11 font-weight-400">{lang key="store.xoviNow.measureResults1" startBold="<strong>" endBold="</strong>"}</p>
						<h3 class="coodiv-text-7 font-weight-700 mt-5">{lang key="store.xoviNow.audience.freelancersTitle"}</h3>
						<p class="coodiv-text-11 font-weight-400">{lang key="store.xoviNow.audience.freelancersDesc"}</p>
						<h3 class="coodiv-text-7 font-weight-700 mt-5">{lang key="store.xoviNow.audience.smbizTitle"}</h3>
						<p class="coodiv-text-11 font-weight-400">{lang key="store.xoviNow.audience.smbizDesc"}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

	<div class="py-14 white-bg position-relative border-top-light">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4"> {lang key="store.xoviNow.moneyBackGuarantee" guaranteeStart="<br><span>" guaranteeEnd="</span>"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.websiteMonitor.tagline"}</p>
				</div>
			</div>
			
			<div class="row justify-content-center">
			
				
				
			
								
				{foreach $plans as $plan}
				<div class="col-12 col-md-4 col-lg-3 mb-8 mb-lg-0">
					<div class="{if $plan->is_featured}featured{/if} pricing-item pricing-plans-special text-left border rounded-8 pt-10 pb-8 px-9 white-bg h-100 d-flex flex-column">
						<div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
							<h5 class="coodiv-text-8 font-weight-700">{$plan->productGroup->name} - {$plan->name}</h5>
						</div>
						 <p class="coodiv-text-12 font-weight-400"></p>
						

						<div class="buttom-pricing-element">
						<div class="price pricing-text">
						<div class="pricing align-items-center mt-5 mb-2 d-flex">
							<span class="coodiv-text-4 font-weight-200 mr-4">
							 {if $plan->isFree()}
									{lang key='orderpaymenttermfree'}
								{elseif $plan->pricing()->first()}
									{$plan->pricing()->first()->toPrefixedString()}
								{else}
									-
								{/if}
							</span>
						</div>	
						</div>
		
						<strong class="plan-highlight mb-7">Save more money with an annual term</strong>							
						<form action="{routePath('cart-order')}" method="post">
							<input type="hidden" name="pid" value="{$plan->id}">
							<button type="submit" class="btn btn-outline-dark d-block w-100 coodiv-text-12 btn-signup text-uppercase {if $plan->is_featured}btn-xovinow{else}btn-default{/if}">
								{lang key="ordernowbutton"}
							</button>
						</form>						
						<ul class="pricing-plans-special-body mt-10">
						
						{foreach $plan->features as $feature => $value}
							<li>
								{if is_bool($value)}
								{else}
								<b>{$value}</b>
								{/if}
								{lang key="store.xoviNow.featurematrix."|cat:$value@iteration}
							</li>
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
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.xoviNow.faqTitle"}</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
					{foreach [[1,2,3,4,5,6,7,8,9,10,11,12]] as $columns}
						{foreach $columns as $row}
						<div class="coodiv__faq__accordions__item">
							<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
								<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
									{lang key="store.xoviNow.faq$row"}
								</button>
							</div>
							<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
								<div class="coodiv-text-11 font-weight-400">
									{lang key="store.xoviNow.faq{$row}ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
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
