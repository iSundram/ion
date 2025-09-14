<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page bg-white threesixtymonitoring">
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
						<img style="width: 110px;margin-bottom: 15px;" class="img-logo" src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/logo.png">
						{if $websitePlanCount > 0}
							<div class="tab-website">
								<h6 class="promo__title coodiv-text-4 font-weight-700">{lang key="store.threesixtymonitoring.websiteHeading.title"}</h6>
								<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.threesixtymonitoring.websiteHeading.tagline"}</p>
								<div class="shadow__card">
									<div class="card__body mt-10">
										<form action="{routePath('cart-threesixtymonitoring-site-check')}" id="frmSiteCheck">
											<div class="row justify-content-start align-items-center">
												<div class="col-12 col-sm-5 pr-lg-1">
													<div class="form-group mb-0">
														<input type="text" class="form-control" name="url" placeholder="www.example.com">
													</div>
												</div>
												<div class="col-10 col-sm-5 px-lg-1">
													<div class="form-group mb-0">
														<select class="form-control" name="probe_id">
															<option value="">Select location</option>
															{foreach $threesixtymonitoring.probes as $probe}
																<option value="{$probe.id}">{$probe.name}</option>
															{/foreach}
														</select>
													</div>
												</div>
												<div class="col-2 pl-lg-1">
													<button type="submit" class="btn btn-default btn-sm w-100 btn-search">
														<i class="far fa-search main-icon"></i>
														<i class="fas fa-spinner fa-spin" style="display: none"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						{/if}
						{if $serverPlanCount > 0}
							<div class="tab-server"{if $websitePlanCount > 0} style="display: none;"{/if}>
								<h6 class="promo__title coodiv-text-4 font-weight-700">{lang key="store.threesixtymonitoring.serverHeading.title"}</h6>
								<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.threesixtymonitoring.serverHeading.tagline"}</p>
								<a href="#serverSectionPricing" class="btn btn-primary btn-pricing-scroll">{lang key="store.threesixtymonitoring.button.getStarted"}</a>
							</div>
						{/if}
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/threesixtymonitoring-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/threesixtymonitoring-illustration.tpl"}
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
				{if $websitePlanCount > 0}
				<li class="nav-item">
					<a class="nav-link {if $websitePlanCount > 0} active{/if}" id="pills-website-tab" data-toggle="pill" href="#pills-website" role="tab" aria-controls="pills-website" aria-selected="true"><span>{lang key="store.threesixtymonitoring.navTab.website"}</span></a>
				</li>
				{/if}
                {if $serverPlanCount > 0}
				<li class="nav-item">
					<a class="nav-link {if $websitePlanCount <= 0} active{/if}" id="pills-server-tab" data-toggle="pill" href="#pills-server" role="tab" aria-controls="pills-server" aria-selected="false"><span>{lang key="store.threesixtymonitoring.navTab.server"}</span></a>
				</li>
				{/if}
			</ul>
		</div>
	</div>
	
	
	<div class="py-14 white-bg position-relative">
			<div class="tab-content p-0">
				<div class="tab-pane tab-website fade{if $websitePlanCount > 0} show active{/if}" id="pills-website" role="tabpanel" aria-labelledby="pills-website-tab">
					<div class="inner__page__content__container">
					<div class="row justify-content-start mb-13">
						<div class="col-lg-7 col-12">
							<h2 class="coodiv-text-7 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websiteDiscover.title"}</h2>
							<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.websiteDiscover.tagline"}</p>

							<div class="row justify-content-start mt-10 mx-0">
								<div class="col-lg-4 col-md-6 col-12">
									<div class="features__box__three">
									<i class="fad fa-signal-4"></i>	
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.websiteDiscover.i1" tagOpen="<strong>" tagClose="</strong>"}</p>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 col-12">
									<div class="features__box__three">
									<i class="fad fa-bells"></i>
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.websiteDiscover.i1" tagOpen="<strong>" tagClose="</strong>"}</p>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 col-12">
									<div class="features__box__three">
									<i class="fad fa-monitor-heart-rate"></i>
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.websiteDiscover.i3" tagOpen="<strong>" tagClose="</strong>"}</p>
									</div>
								</div>
							</div>
							
							<div class="row justify-content-start mb-13 mt-10 mx-0">
									<h2 class="coodiv-text-7 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websiteDiscover.title"}</h2>
									<div class="row justify-content-start mt-10">
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-monitor-heart-rate"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i1a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i1b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i1c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-tachometer-alt"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i2a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i2b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i2c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-globe-stand"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i3a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i3b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i3c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-tags"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i4a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i4b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-project-diagram"></i>	
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i5a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i5b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-unlock"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i6a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i6b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-unlink"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i7a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i7b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-compass"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i8a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i8b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-users-class"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i9a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i9b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fab fa-google"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i10a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i10b"}</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-5 col-12 d-md-block d-none position-relative">
								<div class="section__graphic__sticky">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/screen-full-site.png">
								</div>	
							</div>
						</div>
					</div>
						
						
					<div class="inner__page__content__container border-top-light py-15">
						<div class="row justify-content-start mt-13 mb-6">
							<div class="col-lg-7 col-12">
								<h2 class="coodiv-text-7 font-weight-700 mb-2">{lang key="store.threesixtymonitoring.notifications.title"}</h2>
								<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.notifications.tagline"}</p>
							</div>
						</div>
						<div class="row justify-content-start">
							<div class="col store__features__box__4">
								<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0012_mail.png">
								<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.email"}</h6>
							</div>
							<div class="col store__features__box__4">
								<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0011_sms.png">
								<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.sms"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0008_push.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pushbullet"}</h6>
							</div>

							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0009_gch.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.googlechat"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0010_pb.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pushover"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0013_discord.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.discord"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0007_slack.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.slack"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0006_webhook.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.webhook"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0005_stride.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.stride"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0004_pager.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pagerduty"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0003_tg.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.telegram"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0002_flock.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.flock"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0001_ms.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.microsoft365"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0000_genie.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.opsgenie"}</h6>
							</div>
							
						</div>
					</div>
					
					
					<div class="py-18 position-relative gradient__bg__1">
						<div class="inner__page__content__container">
							<div class="row dark-mode-texts align-items-center">
								<div class="col-12 col-lg-6">
									<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websiteMonitor.title"}</h2>
									<img class="d-block d-lg-none img-full" src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/screen-status.png">
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.websiteMonitor.tagline"}</p>
									<div class="d-flex align-items-start">
										<a href="#websiteSectionPricing" class="btn btn-default btn-pricing-scroll btn-sm">{lang key="store.threesixtymonitoring.button.startMonitoringShort"}</a>
									</div>
								</div>
								<div class="col-6 d-none d-lg-block">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/screen-status.png">
								</div>
							</div>
					
						</div>
					</div>	
					
					{if $websitePlanCount > 0}
					<div class="py-14 white-bg position-relative border-top-light">
						<div class="inner__page__content__container">
							<div class="row justify-content-center px-lg-0 px-10 mb-13">
								<div class="col-lg-8 col-11 text-center">
									<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websitePricing.title"}</h2>
									<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.websiteMonitor.tagline"}</p>
								</div>
							</div>
							
							<div class="row justify-content-center">
								{foreach $planComparisonData['website'] as $plan}
								<div class="col-12 col-md-4 col-lg-3 mb-8 mb-lg-0">
									<div class="pricing-item pricing-plans-special text-left border rounded-8 pt-10 pb-8 px-9 white-bg h-100 d-flex flex-column">
										<div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
											<h5 class="coodiv-text-8 font-weight-700">{$plan->name}</h5>
										</div>
										 <p class="coodiv-text-12 font-weight-400">{lang key="store.threesixtymonitoring.comparison."|cat:$plan->features['tagLine']}</p>
										

										<div class="buttom-pricing-element">
										<div class="price pricing-text">
										<div class="pricing align-items-center mt-5 mb-2 d-flex">
											<span class="coodiv-text-4 font-weight-200 mr-4">
											 {if $inPreview && !$featurePrice}
												$1.23
											{elseif $plan->isFree()}
												{lang key="orderpaymenttermfree"}
											{else}
												{$plan->pricing()->first()->toPrefixedString()}
											{/if}
											</span>
										</div>	
										</div>
						
										<strong class="plan-highlight mb-7">Save more money with an annual term</strong>							
										<form method="post" action="{routePath('cart-order')}">
											<input type="hidden" name="checkout" value="1">
											<input type="hidden" name="pid" value="{$plan->id}">
											<button class="btn btn-outline-dark d-block w-100 coodiv-text-12 btn-signup text-uppercase" type="submit"{if $inPreview} disabled="disabled"{/if}>
												{lang key="ordertitle"}
											</button>
										</form>							
										<ul class="pricing-plans-special-body mt-10">
											{foreach $plan->features as $featureKey => $featureValue}
												{if $featureKey != 'tagLine'}
													<li>
													{if !$featureValue}
													<s>
													{/if}
													{lang key="store.threesixtymonitoring.comparison."|cat:$featureKey}
													{if !$featureValue}
													</s>
													{elseif $featureKey == 'timeIntervals'}
														{if $featureValue == 1}
															<b>60 {lang key="seconds"}</b>
														{else}
															<b>{$featureValue} {lang key="minutes"}</b>
														{/if}
													{elseif $featureKey == 'dataRetention'}
														{if $featureValue == 1}
															<b>24 {lang key="hours"}</b>
														{else}
															<b>{$featureValue} {lang key="days"}</b>
														{/if}
													{elseif $featureValue == 'yes'}
														<b>{lang key="yes"}</b>
													{elseif is_string($featureValue)}
														{lang key="store.threesixtymonitoring.comparison."|cat:$featureValue tagOpen="<strong>" tagClose="</strong>"}
													{else}
														<b>{$featureValue}</b>
													{/if}
													
													</li>
												{/if}
											{/foreach}
										</ul>
										</div>
									</div>
								</div>
								{/foreach}
							</div>
						</div>
					</div>
					{/if}
					
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
									{foreach [[1,2,3,4,5,6,7,8]] as $columns}
										{foreach $columns as $row}
										<div class="coodiv__faq__accordions__item">
											<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
												<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
													{lang key="store.threesixtymonitoring.faq.q$row"}
												</button>
											</div>
											<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
												<div class="coodiv-text-11 font-weight-400">
													{lang key="store.threesixtymonitoring.faq.a$row"}
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
				
				
				<div class="tab-pane tab-server fade{if $websitePlanCount <= 0} show active{/if}" id="pills-server" role="tabpanel" aria-labelledby="pills-server-tab">
				
				<div class="inner__page__content__container">
					<div class="row justify-content-start mb-13">
						<div class="col-lg-7 col-12">
							<h2 class="coodiv-text-7 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websiteDiscover.title"}</h2>
							<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.serverDiscover.tagline"}</p>

							<div class="row justify-content-start mt-10 mx-0">
								<div class="col-md-6 col-12">
									<div class="features__box__three">
									<i class="fad fa-signal-4"></i>	
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.serverDiscover.i1" tagOpen="<strong>" tagClose="</strong>"}</p>
									</div>
								</div>
								
								<div class="col-md-6 col-12">
									<div class="features__box__three">
									<i class="fad fa-bells"></i>
									<p class="coodiv-text-10 font-weight-400">{lang key="store.threesixtymonitoring.serverDiscover.i1" tagOpen="<strong>" tagClose="</strong>"}</p>
									</div>
								</div>
	
							</div>
							
							<div class="card monitoring__plan__section section-monitoring mt-12 pt-2">
								<div class="card__header">
								<h2 class="coodiv-text-7 font-weight-700 mb-2">{lang key="store.threesixtymonitoring.serverMonitor.title"}</h2>
								<p class="coodiv-text-10 mb-0 font-weight-400">{lang key="store.threesixtymonitoring.serverMonitor.tagline"}, {lang key="store.threesixtymonitoring.serverMonitor.lostRevenue"}</p>
								</div>
								
								
								<div class="card__body">
								<h6 class="coodiv-text-11 font-weight-400"><strong>99.9% {lang key="store.threesixtymonitoring.serverMonitor.uptime"}</strong> = $500 {lang key="store.threesixtymonitoring.serverMonitor.perYear"}</h6>
								<h6 class="coodiv-text-11 font-weight-400"><strong>99.8% {lang key="store.threesixtymonitoring.serverMonitor.uptime"}</strong> = $1000 {lang key="store.threesixtymonitoring.serverMonitor.perYear"}</h6>
								<h6 class="coodiv-text-11 font-weight-400"><strong>99.7% {lang key="store.threesixtymonitoring.serverMonitor.uptime"}</strong> = 1,500 {lang key="store.threesixtymonitoring.serverMonitor.perYear"}</h6>
								<h6 class="coodiv-text-11 font-weight-400"><strong>98% {lang key="store.threesixtymonitoring.serverMonitor.uptime"}</strong> = $10,000 {lang key="store.threesixtymonitoring.serverMonitor.perYear"}</h6>
								<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.serverMonitor.asterisk"}</p>
								</div>
								<div class="card__footer d-flex align-items-center justify-content-end pb-2">
									<a href="#serverSectionPricing" class="btn btn-primary btn-sm btn-pricing-scroll">{lang key="store.threesixtymonitoring.button.startMonitoringShort"}</a>
								</div>
							</div>
							
							
							
							
							<div class="row justify-content-start mb-13 mt-10 mx-0">
									<h2 class="coodiv-text-7 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.serverMonitor.title"}</h2>
									<div class="row justify-content-start mt-10">
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-monitor-heart-rate"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i1a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i1b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i1c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-tachometer-alt"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i2a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i2b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i2c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-globe-stand"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i3a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i3b"}</p>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i3c"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-tags"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i4a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i4b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-project-diagram"></i>	
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i5a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i5b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-unlock"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i6a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i6b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-unlink"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i7a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i7b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-compass"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i8a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i8b"}</p>
											</div>
										</div>
										
										<div class="col-lg-4 col-md-6 col-12">
											<div class="features__box__three">
											<i class="fad fa-users-class"></i>
											<h6 class="coodiv-text-9 font-weight-700">{lang key="store.threesixtymonitoring.websiteFeatures.i9a"}</h6>
											<p class="coodiv-text-11 font-weight-400">{lang key="store.threesixtymonitoring.websiteFeatures.i9b"}</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-5 col-12 d-md-block d-none position-relative">
								<div class="section__graphic__sticky">
									<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/screen-dash.png">
								</div>	
							</div>
						</div>
					</div>
						
						
					<div class="inner__page__content__container border-top-light py-15">
						<div class="row justify-content-start mt-13 mb-6">
							<div class="col-lg-7 col-12">
								<h2 class="coodiv-text-7 font-weight-700 mb-2">{lang key="store.threesixtymonitoring.notifications.title"}</h2>
								<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.notifications.tagline"}</p>
							</div>
						</div>
						<div class="row justify-content-start">
							<div class="col store__features__box__4">
								<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0012_mail.png">
								<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.email"}</h6>
							</div>
							<div class="col store__features__box__4">
								<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0011_sms.png">
								<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.sms"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0008_push.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pushbullet"}</h6>
							</div>

							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0009_gch.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.googlechat"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0010_pb.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pushover"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0013_discord.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.discord"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0007_slack.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.slack"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0006_webhook.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.webhook"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0005_stride.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.stride"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0004_pager.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.pagerduty"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0003_tg.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.telegram"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0002_flock.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.flock"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0001_ms.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.microsoft365"}</h6>
							</div>
							
							<div class="col store__features__box__4">
							<img src="{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/app_0000_genie.png">
							<h6 class="coodiv-text-10 font-weight-700 d-block mt-4">{lang key="store.threesixtymonitoring.notifications.opsgenie"}</h6>
							</div>
							
						</div>
					</div>
					
					
					{if $serverPlanCount > 0}
					<div class="py-14 white-bg position-relative border-top-light">
						<div class="inner__page__content__container">
							<div class="row justify-content-center px-lg-0 px-10 mb-13">
								<div class="col-lg-8 col-11 text-center">
									<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.threesixtymonitoring.websitePricing.title"}</h2>
									<p class="coodiv-text-9 font-weight-400">{lang key="store.threesixtymonitoring.websiteMonitor.tagline"}</p>
								</div>
							</div>
							
							<div class="row justify-content-center">
								{foreach $planComparisonData['server'] as $plan}
								<div class="col-12 col-md-4 col-lg-3 mb-8 mb-lg-0">
									<div class="pricing-item pricing-plans-special text-left border rounded-8 pt-10 pb-8 px-9 white-bg h-100 d-flex flex-column">
										<div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
											<h5 class="coodiv-text-8 font-weight-700">{$plan->name}</h5>
										</div>
										 <p class="coodiv-text-12 font-weight-400">{lang key="store.threesixtymonitoring.comparison."|cat:$plan->features['tagLine']}</p>
										

										<div class="buttom-pricing-element">
										<div class="price pricing-text">
										<div class="pricing align-items-center mt-5 mb-2 d-flex">
											<span class="coodiv-text-4 font-weight-200 mr-4">
											 {if $inPreview && !$featurePrice}
												$1.23
											{elseif $plan->isFree()}
												{lang key="orderpaymenttermfree"}
											{else}
												{$plan->pricing()->first()->toPrefixedString()}
											{/if}
											</span>
										</div>	
										</div>
						
										<strong class="plan-highlight mb-7">Save more money with an annual term</strong>							
										<form method="post" action="{routePath('cart-order')}">
											<input type="hidden" name="checkout" value="1">
											<input type="hidden" name="pid" value="{$plan->id}">
											<button class="btn btn-outline-dark d-block w-100 coodiv-text-12 btn-signup text-uppercase" type="submit"{if $inPreview} disabled="disabled"{/if}>
												{lang key="ordertitle"}
											</button>
										</form>							
										<ul class="pricing-plans-special-body mt-10">
											{foreach $plan->features as $featureKey => $featureValue}
												{if $featureKey != 'tagLine'}
													<li>
													{if !$featureValue}
													<s>
													{/if}
													{lang key="store.threesixtymonitoring.comparison."|cat:$featureKey}
													{if !$featureValue}
													</s>
													{elseif $featureKey == 'timeIntervals'}
														{if $featureValue == 1}
															<b>60 {lang key="seconds"}</b>
														{else}
															<b>{$featureValue} {lang key="minutes"}</b>
														{/if}
													{elseif $featureKey == 'dataRetention'}
														{if $featureValue == 1}
															<b>24 {lang key="hours"}</b>
														{else}
															<b>{$featureValue} {lang key="days"}</b>
														{/if}
													{elseif $featureValue == 'yes'}
														<b>{lang key="yes"}</b>
													{elseif is_string($featureValue)}
														{lang key="store.threesixtymonitoring.comparison."|cat:$featureValue tagOpen="<strong>" tagClose="</strong>"}
													{else}
														<b>{$featureValue}</b>
													{/if}
													
													</li>
												{/if}
											{/foreach}
										</ul>
										</div>
									</div>
								</div>
								{/foreach}
							</div>
						</div>
					</div>
					{/if}
					
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
									{foreach [[1,2,3,4,5,6,7,8]] as $columns}
										{foreach $columns as $row}
										<div class="coodiv__faq__accordions__item">
											<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
												<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
													{lang key="store.threesixtymonitoring.faq.q$row"}
												</button>
											</div>
											<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
												<div class="coodiv-text-11 font-weight-400">
													{lang key="store.threesixtymonitoring.faq.a$row"}
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
		</div>
	</div>

    <div class="modal modal-results fade" id="modalTestResults" tabindex="-1" role="dialog" aria-labelledby="modalTestResultsTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTestResultsTitle">{lang key="store.threesixtymonitoring.modal.title"} <span class="span-modal-results"></span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="{lang key="close"}">
                        <span aria-hidden="true"><i class="fal fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body" style="background-image: url('{$WEB_ROOT}/assets/img/marketconnect/threesixtymonitoring/modal-bg.png')">
                    <div class="text-center">
                        <p>{lang key="store.threesixtymonitoring.modal.subtitle"}</p>
                        <div class="div-modal-border"></div>
                        <div class="div-results">
                            <div class="row">
                                <div class="col-3">
                                    <span>{lang key="store.threesixtymonitoring.modal.currentStatus"}</span>
                                </div>
                                <div class="col-3">
                                    <span>{lang key="store.threesixtymonitoring.modal.resolvingTime"}</span>
                                </div>
                                <div class="col-3">
                                    <span>{lang key="store.threesixtymonitoring.modal.connectionTime"}</span>
                                </div>
                                <div class="col-3">
                                    <span>{lang key="store.threesixtymonitoring.modal.totalTime"}</span>
                                </div>
                            </div>
                            <div class="row result-values">
                                <div class="col-3">
                                    <span class="metric-value" data-metric="host_status" data-metric-type="label">Online</span>
                                </div>
                                <div class="col-3">
                                    <span class="metric-value" data-metric="time_dns" data-metric-type="time">0.009S</span>
                                </div>
                                <div class="col-3">
                                    <span class="metric-value" data-metric="time_connect" data-metric-type="time">0.013S</span>
                                </div>
                                <div class="col-3">
                                    <span class="metric-value" data-metric="time_total" data-metric-type="time">1.257S</span>
                                </div>
                            </div>
                            <div class="row result-icons">
                                <div class="col-3" data-metric="host_status">
                                    <div class="metric-icon result-positive">
                                        <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.positive"}"></i>
                                        <span class="sr-only">{lang key="store.threesixtymonitoring.modal.positive"}</span>
                                    </div>
                                </div>
                                <div class="col-3" data-metric="time_dns">
                                    <div class="metric-icon result-positive">
                                        <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.positive"}"></i>
                                        <span class="sr-only">{lang key="store.threesixtymonitoring.modal.positive"}</span>
                                    </div>
                                </div>
                                <div class="col-3" data-metric="time_connect">
                                    <div class="metric-icon result-positive">
                                        <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.positive"}"></i>
                                        <span class="sr-only">{lang key="store.threesixtymonitoring.modal.positive"}</span>
                                    </div>
                                </div>
                                <div class="col-3" data-metric="time_total">
                                    <div class="metric-icon result-positive">
                                        <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.positive"}"></i>
                                        <span class="sr-only">{lang key="store.threesixtymonitoring.modal.positive"}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-legend">
                            <div class="col-2 offset-3">
                                <i class="fas fa-circle result-positive"></i>
                                <span>{lang key="store.threesixtymonitoring.modal.positive"}</span>
                            </div>
                            <div class="col-2">
                                <i class="fas fa-circle result-concern"></i>
                                <span>{lang key="store.threesixtymonitoring.modal.concern"}</span>
                            </div>
                            <div class="col-2">
                                <i class="fas fa-circle result-negative"></i>
                                <span>{lang key="store.threesixtymonitoring.modal.negative"}</span>
                            </div>
                        </div>
                        <a href="#websiteSectionPricing" class="btn btn-primary btn-pricing-scroll btn-modal-get-started">{lang key="store.threesixtymonitoring.button.getStarted"}</a>
                        <div class="div-cloneable-results d-none">
                            <div class="metric-icon result-positive">
                                <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.positive"}"></i>
                                <span class="sr-only">{lang key="store.threesixtymonitoring.modal.positive"}</span>
                            </div>
                            <div class="metric-icon result-concern">
                                <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.concern"}"></i>
                                <span class="sr-only">{lang key="store.threesixtymonitoring.modal.concern"}</span>
                            </div>
                            <div class="metric-icon result-negative">
                                <i aria-hidden="true" class="fas fa-circle" title="{lang key="store.threesixtymonitoring.modal.negative"}"></i>
                                <span class="sr-only">{lang key="store.threesixtymonitoring.modal.negative"}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
(function($) {
    $(document).ready(function() {
        $('#frmSiteCheck').submit(function() {
            var form = this;
            var btnSubmit = $(form).find('button[type=submit]');
            var url = jQuery(form).find('[name="url"]');
            var probe = jQuery(form).find('[name="probe_id"] option:selected');
            var searchBtnIcon = jQuery(form).find('i');

            if (probe.val().length == 0 || url.val().length == 0) {
                WHMCS.ui.effects.errorShake(searchBtnIcon);
                return false;
            }

            $(btnSubmit).find('.main-icon').hide();
            $(btnSubmit).find('.fa-spinner').show();

            WHMCS.http.jqClient.jsonPost({
                url: $(form).attr('action'),
                data: $(form).serialize(),
                success: function(response) {
                    var isHostUp = !response.result['down_now'];

                    jQuery('.modal-title .span-modal-results').text(
                        "https://" + url.val() + " — " + probe.text()
                    );

                    $('.result-values [data-metric]').each(function(index, metricElement) {
                        var metric = $(metricElement).data('metric');
                        var dataType = $(metricElement).data('metric-type');
                        var metricData = response.result[metric];

                        if (metricData && isHostUp) {
                            if (dataType === 'time') {
                                metricData.value = metricData.value + ' S';
                            }
                        } else if (!isHostUp && dataType === 'time') {
                            metricData = {
                                value: '---',
                                icon: 'negative'
                            };
                        }

                        $(metricElement).text(metricData.value);

                        jQuery('.result-icons').find('[data-metric="' + metric + '"] .metric-icon')
                            .replaceWith(jQuery('.div-cloneable-results .result-' + metricData.icon).clone());
                    });

                    $(modalTestResults).modal('show');
                },
                fail: function() {
                    WHMCS.ui.effects.errorShake(searchBtnIcon);
                },
                always: function() {
                    $(btnSubmit).find('.fa-spinner').hide();
                    $(btnSubmit).find('.main-icon').show();
                }
            });

            return false;
        });
        jQuery('.btn-link').on('click', function() {
            var isExpanded = jQuery(this).attr('aria-expanded');
            var toggleIcon = jQuery(this).closest('div').find('i');
            var allCards = jQuery(this).closest('section').find('i');
            if (isExpanded == 'true') {
                toggleIcon.removeClass('fa-minus').addClass('fa-plus');
            } else {
                allCards.each(function() {
                    jQuery(this).removeClass('fa-minus').addClass('fa-plus');
                });
                toggleIcon.removeClass('fa-plus').addClass('fa-minus');
            }
        });
        jQuery('.btn-pricing-scroll').on('click', function(event) {
            var element = jQuery(this);
            var targetId = element.attr('href');

            event.preventDefault();
            if (element.hasClass('btn-modal-get-started')) {
                jQuery('#modalTestResults').modal('hide');
            }
            jQuery('html, body').animate({
                scrollTop: jQuery(targetId).offset().top
            }, 500);
        });

        jQuery('#pills-website-tab, #pills-server-tab').on('click', function(event) {
            var element = jQuery(this);

            event.preventDefault();
            if (element.attr('id') == 'pills-website-tab') {
                jQuery('.section-header .tab-server').hide();
                jQuery('.section-header .tab-website').fadeToggle();
            } else {
                jQuery('.section-header .tab-website').hide();
                jQuery('.section-header .tab-server').fadeToggle();
            }
        });
        jQuery('.p-pricing-cta a').on('click', function(event) {
            var element = jQuery(this);
            var targetId = element.attr('href');

            event.preventDefault();
            if (targetId == '#serverSectionPricing') {
                jQuery('.section-header .tab-website').hide();
                jQuery('.section-header .tab-server').fadeToggle();
                jQuery('#pills-website').removeClass('active show');
                jQuery('#pills-server').addClass('active show');
                jQuery('#pills-website-tab').removeClass('active').attr('aria-selected', 'false');
                jQuery('#pills-server-tab').addClass('active').attr('aria-selected', 'true');
            } else {
                jQuery('.section-header .tab-server').hide();
                jQuery('.section-header .tab-website').fadeToggle();
                jQuery('#pills-server').removeClass('active show');
                jQuery('#pills-website').addClass('active show');
                jQuery('#pills-server-tab').removeClass('active').attr('aria-selected', 'false');
                jQuery('#pills-website-tab').addClass('active').attr('aria-selected', 'true');
            }
            jQuery('html, body').animate({
                scrollTop: jQuery(targetId).offset().top
            }, 0);
        });
    });
})(jQuery);
</script>
