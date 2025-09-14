<!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<![endif]-->

<link type="text/css" rel="stylesheet" href="{$BASE_PATH_CSS}/ion.rangeSlider.css" property="stylesheet" />
<link type="text/css" rel="stylesheet" href="{$BASE_PATH_CSS}/ion.rangeSlider.skinHTML5.css" property="stylesheet" />
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="marketconnect__page__wrapper full__with__section landing-page bg-white codeguard">
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
						<img style="width: 130px;margin-bottom: 5px;" src="{$WEB_ROOT}/assets/img/marketconnect/codeguard/logo.png">
						<h6 class="promo__title coodiv-text-4 font-weight-700 mt-4">{lang key="store.codeGuard.headline"}</h6>
						<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.codeGuard.tagline"}</p>
										
						<div class="promo__btns banner__actions__btns mt-10">
							<a href="#" class="btn btn-lg btn-primary" onclick="smoothScroll('#overview');return false">{lang key="store.emailServices.overview.learn"}</a>
							<a href="#" class="btn btn-lg btn-primary-outline" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-6 col-12 pr-lg-15 order-md-last order-first">
					<div class="store__front__promo__hero__illustration">
						<div class="promo__slider__illunsration__item">
							{if file_exists("templates/$template/assets/svg/orderform/codeguard-illustration.tpl")}
								{include file="{$template}/assets/svg/orderform/codeguard-illustration.tpl"}
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
				<li role="presentation" class="nav-item"><a class="nav-link" href="#ranktracker" onclick="smoothScroll('#overview');return false">{lang key="store.codeGuard.tab.overview"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#siteaudit" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#textoptimizer" onclick="smoothScroll('#features');return false">{lang key="store.codeGuard.tab.features"}</a></li>
				<li role="presentation" class="nav-item"><a class="nav-link" href="#benchmarking" onclick="smoothScroll('#faq');return false">{lang key="store.codeGuard.tab.faq"}</a></li>
			</ul>
		</div>
	</div>
	
	<div id="overview" class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
				<div class="row">
                <div class="col-md-6 col-12 text-center">
                    <img src="{$WEB_ROOT}/templates/{$template}/assets/img/store/cg-dashboard.png">
                </div>
                <div class="col-md-6 col-12 d-flex flex-column justify-content-center pl-md-12">
                    <h6 class="coodiv-text-5 font-weight-700">{lang key="store.codeGuard.leadTitle"}</h6>
                    <p class="coodiv-text-10 font-weight-400 mb-4">{lang key="store.codeGuard.leadText1"}</p>
                    <p class="coodiv-text-10 font-weight-400">{lang key="store.codeGuard.leadText2"}</p>
                </div>
            </div>
			
			<div class="row main__features__store__blocks mt-6">
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-cloud-upload"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.dailyBackup"}</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fab fa-wordpress-simple"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.wpPlugin"}</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-bell"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.changeAlerts"}</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-shield-alt"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.malwareProtection"}</h4>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<div class="py-18 position-relative gradient__bg__1" id="pricing">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13 dark-mode-texts">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key='store.codeGuard.chooseBackupPlan'}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.codeGuard.features.unlimitedFilesDescription"}</p>
				</div>
			</div>
			{if count($products) > 0}	
			<div class="row justify-content-center align-items-center">
				<div class="col-md-4 col-12">
				 {if !$loggedin && $currencies}
					<form method="post" action="{routePath('store-product-group', $routePathSlug)}" >
						<select name="currency" class="form-control currency-selector" onchange="submit()">
							<option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
							{foreach $currencies as $currency}
								<option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
							{/foreach}
						</select>
					</form>
				{/if}
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-9 col-12 white-bg shadow-2 rounded-10 px-8 py-8">
					<div class="price-calc-container aws-pro">
						<div class="price-calc-top">
							<input type="hidden" id="codeGuardPlanSelector" name="codeguardplan" value="" />
						</div>
						<div class="row justify-content-between mx-0 mt-15">
						<div class="pricing-container col-md-auto col-12 text-md-left text-center mb-md-0 mb-8">
							<div id="pricingAmount" class="price">--</div>
							<div id="pricingCycle"></div>
						</div>
						
						<form action="{routePath('cart-order')}" method="post" class="col-md-auto col-12 text-center">
							<input id="selectedProductId" type="hidden" name="pid" value="">
							<button type="submit" class="btn btn-primary" id="product-order-button">
								{lang key='ordernowbutton'}
							</button>
						</form>
						</div>
					</div>
				</div>
			 </div>
			 {elseif $inPreview}
				<div class="row align-items-center justify-content-center">
					<div class="col-12 lead text-center">
						{lang key="store.codeGuard.adminPreview"}
					</div>
				</div>
			 {/if}
		</div>
	</div>
	
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.codeGuard.features.dailyBackup"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key="store.codeGuard.features.dailyBackupDescription"} and more</p>
				</div>
			</div>
			<div class="row main__features__store__blocks mt-6">
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-database"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.unlimitedFiles"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.unlimitedFilesDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-hand-pointer"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.oneClickRestore"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.oneClickRestoreDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-monitor-heart-rate"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.malwareMonitoring"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.malwareMonitoringDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fab fa-wordpress-simple"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.wp"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.wpDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-file"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.fileMonitoring"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.fileMonitoringDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-clock"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.dailyBackup"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.fileMonitoringDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-server"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.servers"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.serversDescription"}</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-12 mb-8">
					<div class="feature text-center flex-column">
						<div class="icon">
							<i class="fad fa-inbox-in"></i>
						</div>
						<div class="text">
							<h4 class="coodiv-text-9 font-weight-bold mb-4">{lang key="store.codeGuard.features.email"}</h4>
							<p class="coodiv-text-11 font-weight-400">{lang key="store.codeGuard.features.emailDescription"}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.codeGuard.faq.title"}</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-xl-8 col-lg-9">
					<div class="accordion coodiv__faq__accordions__wrapper" id="accordionFaqsection">
					{foreach [[1,2,3,4,5,6,7,8,9]] as $columns}
						{foreach $columns as $row}
						<div class="coodiv__faq__accordions__item">
							<div class="coodiv__faq__accordions__item__header" id="heading-{$row}">
								<button class="btn-reset coodiv-text-10 font-weight-700 accordion-trigger arrow-icon w-100" type="button" data-toggle="collapse" data-target="#collapse-{$row}" aria-expanded="false" aria-controls="collapse-{$row}">
									{lang key="store.codeGuard.faq.q$row"}
								</button>
							</div>
							<div id="collapse-{$row}" class="collapse coodiv__faq__accordions__item__body" aria-labelledby="heading-{$row}" data-parent="#accordionFaqsection">
								<div class="coodiv-text-11 font-weight-400">
									{lang key="store.codeGuard.faq.a$row"}
								</div>
							</div>
						</div>	
						{/foreach}	
					{/foreach}	
					</div>
				</div>
			</div>
			
		 <div class="text-center mt-10">
                <img style="width:130px" src="{$WEB_ROOT}/assets/img/marketconnect/codeguard/logo.png">
            </div>
		</div>
	</div>



</div>

<!-- RangeSlider JS -->
<script src="{$BASE_PATH_JS}/ion.rangeSlider.js"></script>
<script>
    var sliderActivated = false,
        sliderProductNames = [
        {foreach $products as $product}
            "{$product->diskSpace}",
        {/foreach}
        ],
        allProducts = {
        {foreach $products as $num => $product}
        "{$num}": {
            "pid": "{$product->id}",
            "name": "{$product->name}",
            "desc": "{$product->formattedProductFeatures.featuresDescription|nl2br|trim}",
            "price": "{$product->pricing()->first()->price()}",
            "cycle": "{lang key={'orderpaymentterm'|cat:$product->pricing()->first()->cycle()}}"
        },
        {/foreach}
        },
        definedProducts = {
        {foreach $products as $product}
            "{$product->id}": "{$product@index}"{if !($product@last)},{/if}
        {/foreach}
        };

    {foreach $products as $product}
        {if $product->isFeatured}
            var firstFeatured = definedProducts["{$product->id}"];
            {break}
        {/if}
    {/foreach}

    var rangeSliderValues = {
        type: "single",
        grid: true,
        grid_snap: true,
        hide_min_max: true,
        step: 1,
        from: 1,
        onStart: refreshSelectedProduct,
        {if $products|@count eq 1}
            disable: true,
        {/if}
        onChange: refreshSelectedProduct,
        values: sliderProductNames
    };

    if (typeof firstFeatured !== 'undefined') {
        rangeSliderValues['from'] = firstFeatured;
    }

    function refreshSelectedProduct(data) {
        var featureName = "",
            featureMarkup = "",
            i = parseInt(data.from);

        if (isNaN(i)) {
            i = 0;
            jQuery(".irs-single").text(sliderProductNames[0]);
            jQuery(".irs-grid-text").text('');
        }
        jQuery("#selectedProductId").val(allProducts[i].pid);
        jQuery("#productDescription").html(allProducts[i].desc);
        jQuery("#pricingAmount").html(allProducts[i].price);
        jQuery("#pricingCycle").html(allProducts[i].cycle);
    }

    jQuery("#codeGuardPlanSelector").ionRangeSlider(rangeSliderValues);
    {if $products|@count eq 1}
    jQuery(".irs-single").text(sliderProductNames[0]);
    jQuery(".irs-grid-text").text('');
    {/if}
    sliderActivated = true;
</script>
