{assign var="items" value=$CoodivMarketConnectServices}
<div class="promo__slider promo__slider__sidebar">
	<div class="promo__slider__wrapper">
		<div class="promo__slider__background">
			<div class="banner-background">
				<div class="banner-shape">
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
		</div>
		<div class="promo__slider__items side__promo__slider__wrapper__caller">
			{foreach from=$items item=item key=k name=foo}
					<a class="promo__slider__item" href="{routePath('store-product-group', $item.productGroup.slug)}">
						<div class="promo__slider__illustration">
							{include file="$template/includes/theme-core/promo-slide-illustration.tpl" illustration="{$item.name}"}  
						</div>
						<div class="promo__slider__text">
							<div class="promo__slider__content">
								<h2 class="promo__slider__headline">{$item.productGroup.headline}</h2>
								<p class="promo__slider__tagline">{$item.productGroup.tagline}</p>
							</div>
							<div class="promo__slider__more d-flex justify-content-center">
							<span class="btn btn-sm btn-light">{lang key='clientareaviewdetails'}</span>
							</div>
						</div>
					</a>
			{/foreach}
		</div>
	</div>
</div>