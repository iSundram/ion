<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page bg-white sitelock">
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
						<img style="width: 130px;margin-bottom: 5px;" src="{$WEB_ROOT}/assets/img/marketconnect/sitelock/logo.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.sitelock.tagline"}</h6>
						<p class="promo__sub__title coodiv-text-9 font-weight-300 mt-4">{lang key="store.sitelock.contentHeadline"}</p>	
			
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/sitelock-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/sitelock-illustration.tpl"}
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
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#plans');return false">{lang key="store.sitelock.plansAndPricing"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#features');return false">{lang key="store.sitelock.featuresLink"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#emergency');return false">{lang key="store.sitelock.websiteHacked"}</a></li>
				<li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#faq');return false">{lang key="store.sitelock.faq"}</a></li>
			</ul>
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative" id="plans">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-6 font-weight-700 mb-4">{lang key="store.sitelock.comparePlans"}</h2>
					<p class="coodiv-text-10 font-weight-400">{lang key="store.sitelock.comparePlansSubtitle"}</p>
				</div>
			</div>
			
			<div class="row justify-content-center mt-13">
				{foreach $plans as $plan}
				       <div class="col-12 col-md-6 col-lg-4 mb-8 mb-lg-0">
                            <div class="pricing-plans-special border rounded-8 pt-15 pb-8 px-9 white-bg h-100 d-flex flex-column">
                                <div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
                                    <h5 class="coodiv-text-8 mb-0 fw-bold">{$plan->productGroup->name}{$plan->name}</h5>
                                </div>                                
								<div class="buttom-pricing-element">
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
								<form method="post" action="{routePath('cart-order')}">
                                    <input type="hidden" name="pid" value="{$plan->id}">
                                    <select name="billingcycle" class="form-control mb-2">
                                        {foreach $plan->pricing()->allAvailableCycles() as $cycle}
                                            <option value="{$cycle->cycle()}">
                                                {if $cycle->isRecurring()}
                                                    {if $cycle->isYearly()}
                                                        {$cycle->cycleInYears()}
                                                    {else}
                                                        {$cycle->cycleInMonths()}
                                                    {/if}
                                                    -
                                                {/if}
                                                {$cycle->toFullString()}</option>
                                        {/foreach}
                                    </select>
									<strong class="plan-highlight mb-7 mt-2">Save more money with annual term</strong>
									
                                    <button type="submit" class="btn btn-outline-dark d-block w-100 coodiv-text-12">{lang key="store.sitelock.buyNow"}</button>
                                </form>
								
								<ul class="pricing-plans-special-body">
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
	
	
	<div class="py-14 white-bg position-relative border-top-light" id="features">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">					
					<h6 class="coodiv-text-6 font-weight-700 mb-4">{lang key="store.sitelock.contentHeadline"}</h6>
					<p class="coodiv-text-10 font-weight-400 text-center">{lang key="store.sitelock.featuresHeadline"}</p>
					<p class="coodiv-text-10 font-weight-400 text-center">{lang key="store.sitelock.contentBodyParagraph1"}</p>
					<p class="coodiv-text-10 font-weight-400 text-center">{lang key="store.sitelock.contentBodyParagraph2"}</p>
					<p class="coodiv-text-10 font-weight-400 text-center">{lang key="store.sitelock.contentBodyParagraph3"}</p>
				</div>
			</div>
			
			
			<div class="row main__features__store__blocks mt-15">
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-search"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresMalwareTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresMalwareContent"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-wrench"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresMalwareRemovalTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresMalwareRemovalContent"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-code"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresVulnerabilityTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresVulnerabilityContent"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-file-code"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresOWASPTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresOWASPContent"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-trophy"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresTrustSealTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresTrustSealContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-shield-alt"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresFirewallTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresFirewallContent"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-lock"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresReputationTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresReputationContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-star"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresSetupTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresSetupContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="icon mb-4"><i class="fad fa-globe"></i></div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.featuresCDNTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.featuresCDNContent"}</p>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	{if !is_null($emergencyPlan)}
	<div class="py-14 white-bg position-relative border-top-light" id="emergency">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">					
					<h6 class="coodiv-text-6 font-weight-700 mb-4 text-danger">{lang key="store.sitelock.emergencyPlanTitle"}</h6>
					<h6 class="coodiv-text-6 font-weight-700 mb-4">{lang key="store.sitelock.emergencyPlanHeadline"}</h6>
					<p class="coodiv-text-10 font-weight-400 text-center">{lang key="store.sitelock.emergencyPlanBody"}</p>
				</div>
			</div>
			
			<div class="sitelock-website-hacked">
			<h3 class="sitelock-website-hacked-title">{lang key="store.sitelock.emergencyPlanHeadline"}</h3>
				<div class="row main__features__store__blocks mt-15">
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>1</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanResponseTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanResponseContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>2</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanMalwareTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanMalwareContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>3</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanPriorityTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanPriorityContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>4</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanAftercareTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanAftercareContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>5</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanUpdatesTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanUpdatesContent"}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mb-8">
					<div class="feature flex-column">
						<div class="number mb-2"><span>6</span></div>
						<div class="text text-center">
							<h4 class="coodiv-text-9 font-weight-bold mb-0">{lang key="store.sitelock.emergencyPlanPaymentTitle"}</h4>
							<p class="coodiv-text-11 mb-0">{lang key="store.sitelock.emergencyPlanPaymentContent"}</p>
						</div>
					</div>
				</div>
				
				</div>
				
			
               <div class="text-center">
                <p class="coodiv-text-11 font-weight-400 mb-5">{lang key="store.sitelock.emergencyPlanOnlyCost" price="{if $emergencyPlan->pricing()->best()}{$emergencyPlan->pricing()->best()->toFullString()}{else}-{/if}" }</p>
                <form method="post" action="{routePath('cart-order')}">
                    <input type="hidden" name="pid" value="{$emergencyPlan->id}">
                    <button type="submit" class="btn btn-primary">
                        {lang key="store.sitelock.buyNow"}
                    </button>
                </form>
				</div>
            </div>
			
		</div>
	</div>
	{/if}
    <div class="py-14 white-bg" id="faq">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.sitelock.faqTitle"}</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
						{foreach [[One,Two,Three,Four,Five,Six]] as $columns}
							{foreach $columns as $row}
								<div class="coodiv__faq__accordions__item">
									<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
										<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
											{lang key="store.sitelock.faq{$row}Title"}
										</button>
									</div>
									<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
										<div class="coodiv-text-11 font-weight-400">
											{if $row == Three}
											{lang key="store.sitelock.faq{$row}Body"}
											<ul class="mt-3">
												<li>{lang key="store.sitelock.faqThreeBodyList1"}</li>
												<li>{lang key="store.sitelock.faqThreeBodyList2"}</li>
												<li>{lang key="store.sitelock.faqThreeBodyList3"}</li>
											</ul>
											{elseif $row == Four}
											{lang key="store.sitelock.faqFourBodyParagraph1" vulnerabilityStrong="<strong>{lang key="store.sitelock.websiteVulnerability"}</strong>"}<br/><br/>
											{lang key="store.sitelock.faqFourBodyParagraph2" malwareStrong="<strong>{lang key="store.sitelock.malware"}</strong>"}<br/><br/>
											{else}
											{lang key="store.sitelock.faq{$row}Body"}
											{/if}
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
