<div class="mc-promo veiwcart__addon__container addon-promo-container addon-promo-container-{$promotion->getClass()}" id="promo_{$product->productKey}">
	<div class="marketconnect__promo__banner__header dark-mode-texts">
		<div class="marketconnect__promo__banner__header__main__content">
            <h6 class="coodiv-text-9 mb-0">{$promotion->getHeadline()}</h6>
            <h6 class="coodiv-text-11 font-weight-300">{$promotion->getTagline()}</h6>
			<div class="marketconnect__promo__banner__add mt-5">
			<button type="button" class="btn btn-primary btn-with-icon btn-small btn-add" data-product-key="{$product->productKey}">
			<svg class="options__icons icon__basket">
				<use xlink:href="#icon-basket"></use>
			</svg>
             {lang key="addtocart"}
            </button>
			<div class="price">
                {if $product->isFree()}
                    {lang key="orderfree"}
                {elseif $product->pricing()->first()}
                    {$product->pricing()->setQuantity($cartItem.qty)->first()->breakdownPrice()}
                {/if}
            </div>
			</div>
        </div>
        <div class="market__connect__old__logo d-none">
            <img src="{$promotion->getImagePath()}">
        </div>
    </div>
	{if $promotion->hasFeatures()}
		<ul class="marketconnect__promo__banner__features">
			{assign "promotionFeatures" $promotion->getFeatures()}
			{foreach $promotionFeatures as $key=>$feature}
				<li>
					<i class="fal fa-check"></i> {$feature}
				</li>
			{/foreach}
		</ul>
	{/if}
</div>