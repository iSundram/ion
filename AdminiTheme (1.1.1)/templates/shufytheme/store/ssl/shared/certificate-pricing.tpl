<div class="py-18 position-relative gradient__bg__1 {$type}">
	<div class="inner__page__content__container">
		<div class="row justify-content-center px-lg-0 px-10 mb-13 dark-mode-texts">
			<div class="col-lg-8 col-11 text-center">
				<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key='store.ssl.shared.pricing'}</h2>
			</div>
		</div>
		<div class="row justify-content-center mt-15">
			{if count($certificates.$type) > 0}		
			{foreach $certificates.$type as $product}			
			<div class="col-12 col-md-6 col-lg-4 mb-8 mb-lg-0">
				<div class="pricing-item pricing-plans-special text-left border rounded-8 pt-10 pb-8 px-9 white-bg h-100 d-flex flex-column">
					<div class="pricing-plans-special-header d-flex justify-content-between align-items-center">
						<h5 class="coodiv-text-8 font-weight-700">{$certificateFeatures.{$product->configoption1}.displayName}</h5>
					</div>
					{if $hasFeatured.$type}
						<div class="popular-plan-wrapper">
							{if $product->isFeatured}
								<div class="popular-plan">
									<div class="plan-container">
										<div class="txt-container">{{lang key='recommended'}|upper}</div>
									</div>
								</div>
							{/if}
							{$headingTitle}
						</div>
					{else}
						<p class="coodiv-text-12 font-weight-400">{$headingTitle}</p>
					{/if}

					<div class="buttom-pricing-element">
					<div class="price pricing-text">
					<div class="pricing align-items-center mt-5 mb-2 d-flex">
						<span class="coodiv-text-4 font-weight-200 mr-4">
						{$product->pricing()->annual()->yearlyPrice()}
						</span>
					</div>	
					</div>
	
					<strong class="plan-highlight mb-7">Save more money with an annual term</strong>					
					<form method="post" action="{routePath('cart-order')}">
						<input type="hidden" name="pid" value="{$product->id}">
						<button type="submit" class="btn btn-outline-dark d-block w-100 coodiv-text-12 btn-signup text-uppercase">{lang key='store.ssl.landingPage.buyNow'}</button>
					</form>					
					<ul class="pricing-plans-special-body mt-10">
					    <li>{lang key='store.ssl.shared.encryption256'}</li>
						<li><b>{$certificateFeatures.{$product->configoption1}.issuance}</b> {lang key='store.ssl.shared.issuanceTime'}</li>
						<li><b>{$certificateFeatures.{$product->configoption1}.for}</b> {lang key='store.ssl.shared.greatFor'}</li>
						<li><b>USD ${$certificateFeatures.{$product->configoption1}.warranty}</b> {lang key='store.ssl.shared.warrantyValue'}</li>
						<li>{lang key='store.ssl.shared.siteSeal'}</li>
						<li>{lang key='store.ssl.shared.freeReissues'}</li>
						<li><b>99.9%</b> {lang key='store.ssl.shared.browserSupport'}</li>
						<li><b>{if $product->pricing()->annual()}{$product->pricing()->annual()->yearlyPrice()}{else}-{/if}</b> for {lang key='store.ssl.shared.oneYearPrice'}</li>
						<li><b>{if $product->pricing()->biennial()}{$product->pricing()->biennial()->yearlyPrice()}{else}-{/if}</b> for {lang key='store.ssl.shared.twoYearPrice'}</li>
						<li><b>{if $product->pricing()->triennial()}{$product->pricing()->triennial()->yearlyPrice()}{else}-{/if}</b> for {lang key='store.ssl.shared.threeYearPrice'}</li>
				
					</ul>
					</div>
				</div>
			</div>
			{/foreach}
			{else}
				<div class="col-9">
					<div class="lead preview-text">
						{lang key='store.ssl.shared.noProducts'}
					</div>
				</div>
			{/if}
		</div>
	</div>
</div>
