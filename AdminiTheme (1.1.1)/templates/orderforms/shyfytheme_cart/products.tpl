{include file="orderforms/standard_cart/common.tpl"}
<div class="full__with__section">
	<div class="main__page__content">
		<div class="row justify-content-start">
			<div class="col-md-8 col-12">
				<div class="orderform__cart__header">
					<h1 class="coodiv-text-5 font-weight-bold mb-0">{if $productGroup.headline}{$productGroup.headline}{else}{$productGroup.name}{/if}</h1>
					{if $productGroup.tagline}
						<p class="coodiv-text-10 font-weight-300">{$productGroup.tagline}</p>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
<div class="full__with__section cart__categories__menu__wrapper full__width__secondarysidebar__menu mt-9 mb-10 into__main__page__content__full__width__element">
	<div class="full__width__secondarysidebar__menu__item main__page__content d-flex align-items-start">
		{foreach $secondarySidebar as $panel}
			<div menuItemName="{$panel->getName()}" class="product__cart__sidepanel {if $panel->getClass()}{$panel->getClass()}{else}panel-sidebar{/if}{if $panel->getExtra('mobileSelect') and $panel->hasChildren()} hidden-sm hidden-xs{/if}"{if $panel->getAttribute('id')} id="{$panel->getAttribute('id')}"{/if}>			
				{if $panel->hasBodyHtml()}
					<div class="panel-body">
						{$panel->getBodyHtml()}
					</div>
				{/if}
				{if $panel->hasChildren()}
					<div class="product__cart__sidepanel__group {if $panel->getChildrenAttribute('class')} {$panel->getChildrenAttribute('class')}{/if}">
						{foreach $panel->getChildren() as $child}
							{if $child->getUri()}
								<a enuItemName="{$child->getName()}" href="{$child->getUri()}" class="product__cart__sidepanel__item {if $child->isDisabled()} disabled{/if}{if $child->getClass()} {$child->getClass()}{/if}{if $child->isCurrent()} active{/if}"{if $child->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $child->getAttribute('target')} target="{$child->getAttribute('target')}"{/if} id="{$child->getId()}">
									{if $child->hasIcon()}
									{if $child->getName()|strstr:"Domain Renewals"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="synchronize-warning--arrow-fail-notification-sync-warning-failure-synchronize-error"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="m11 9 2-.5.5 2"></path><path id="Vector_2" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M13 8.5A6.6 6.6 0 0 1 7 13a6 6 0 0 1-5.64-3.95"></path><path id="Vector_3" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="m3 5-2 .5-.5-2"></path><path id="Vector_4" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M1 5.5A6.79 6.79 0 0 1 7 1a6 6 0 0 1 5.64 4"></path></g></svg>
									{elseif $child->getName()|strstr:"Domain Registration"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="web--server-world-internet-earth-www-globe-worldwide-web-network"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M7 13.5a6.5 6.5 0 1 0 0-13 6.5 6.5 0 0 0 0 13Z"></path><path id="Vector_2" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M.5 7h13"></path><path id="Vector_3" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M9.5 7A11.22 11.22 0 0 1 7 13.5 11.22 11.22 0 0 1 4.5 7 11.22 11.22 0 0 1 7 .5 11.22 11.22 0 0 1 9.5 7v0Z"></path></g></svg>
									{elseif $child->getName()|strstr:"Domain Transfer"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="arrow-transfer-diagonal-1--arrows-arrow-server-data-diagonal-internet-transfer-network"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="m.5 10.5 10-10H6"></path><path id="Vector_2" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="m13.5 3.5-10 10H8"></path></g></svg>
									{elseif $child->getName()|strstr:"View Cart"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-0.5 -0.5 14 14" height="14" width="14"><g id="shopping-bag-hand-bag-2--shopping-bag-purse-goods-item-products"><path id="Vector" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M11.96 11.505a0.929 0.929 0 0 1 -0.929 1.031H1.969a0.929 0.929 0 0 1 -0.929 -1.031L1.857 4.179h9.286l0.817 7.326Z" stroke-width="1"></path><path id="Vector_2" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M4.179 4.179V2.786a2.321 2.321 0 1 1 4.643 0v1.393" stroke-width="1"></path></g></svg>
									{else}
										<i class="{$child->getIcon()}"></i>
									{/if}
									{elseif $child->getLabel()|strstr:"VPS" || $child->getLabel()|strstr:"Dedicated" || $child->getLabel()|strstr:"server" || $child->getLabel()|strstr:"Server" || $child->getLabel()|strstr:"خادم" || $child->getLabel()|strstr:"الخوادم" || $child->getLabel()|strstr:"Hosting" || $child->getLabel()|strstr:"استضافة" || $child->getLabel()|strstr:"إستضافة"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="database-server-2--server-network-internet"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M12.5.5h-11a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1Z"></path><path id="Vector_2" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M7.5 3H11"></path><path id="Vector_3" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M1.5 5.5a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1"></path><g id="Group 623"><path id="Vector_4" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M3.25 8.25a.25.25 0 0 1 0-.5"></path><path id="Vector_5" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M3.25 8.25a.25.25 0 0 0 0-.5"></path></g><g id="Group 627"><path id="Vector_6" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M3.25 3.25a.25.25 0 0 1 0-.5"></path><path id="Vector_7" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M3.25 3.25a.25.25 0 0 0 0-.5"></path></g><path id="Vector_8" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M7.5 8H11"></path><path id="Vector_9" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M7 10.5v3"></path><path id="Vector_10" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M2 13.5h10"></path></g></svg>
									{elseif $child->getLabel()|strstr:"SSL" || $child->getLabel()|strstr:"شهادة"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="shield-1--shield-protection-security-defend-crime-war-cover"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M7.354 13.384a.992.992 0 0 1-.714 0v0A9.492 9.492 0 0 1 .55 4.517V1.542A.992.992 0 0 1 1.542.55h10.91a.992.992 0 0 1 .991.992v2.975a9.492 9.492 0 0 1-6.09 8.867v0Z"></path></g></svg>
									{elseif $child->getLabel()|strstr:"Product Addons" || $child->getLabel()|strstr:"خدمة" || $child->getLabel()|strstr:"خدمات" || $child->getLabel()|strstr:"Data" || $child->getLabel()|strstr:"support" || $child->getLabel()|strstr:"Support" || $child->getLabel()|strstr:"Programming"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="module-puzzle-1--code-puzzle-module-programming-plugin-piece"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M4.1 1.211c.36.351.573.824.599 1.325L6.521.723a.668.668 0 0 1 .996 0l1.475 1.535c-.21.101-.402.236-.568.398a2.052 2.052 0 0 0 2.899 2.9c.162-.167.297-.36.399-.569l1.554 1.535a.668.668 0 0 1 0 .996l-1.813 1.784a2.043 2.043 0 1 1-2.162 2.162l-1.824 1.813a.668.668 0 0 1-.996 0l-1.475-1.534c.21-.102.402-.237.568-.4a2.057 2.057 0 1 0-3.317-2.33L.723 7.478a.668.668 0 0 1 0-.996l1.813-1.784a1.993 1.993 0 0 1-1.325-.597 2.043 2.043 0 1 1 2.89-2.89v0Z"></path></g></svg>
									{elseif $child->getLabel()|strstr:"Cloudflare" || $child->getLabel()|strstr:"كلاودفلير"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-0.5 -0.5 14 14" height="14" width="14"><g id="VPN-connection"><path id="Vector 524" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M3.049 4.713c0.432 -0.288 1.724 -0.863 3.45 -0.863 1.724 0 3.018 0.575 3.449 0.863" stroke-width="1"></path><path id="Vector 525" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M4.299 6.558c0.367 -0.184 1.319 -0.55 2.199 -0.55 0.878 0 1.831 0.366 2.198 0.55" stroke-width="1"></path><path id="Vector 526" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M5.778 8.431c0.121 -0.061 0.433 -0.181 0.721 -0.181s0.6 0.121 0.72 0.18" stroke-width="1"></path><path id="Vector" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M6.85 12.471c-0.176 0.087 -0.437 0.087 -0.7 0C2.739 11.155 0.464 7.824 0.464 4.144V1.428C0.464 0.903 0.902 0.464 1.426 0.464h10.147c0.525 0 0.962 0.438 0.962 0.964v2.717c0 3.768 -2.275 7.011 -5.686 8.325Z" stroke-width="1"></path></g></svg>
									{elseif $child->getLabel()|strstr:"Cloud" || $child->getLabel()|strstr:"السحابة" || $child->getLabel()|strstr:"النسخ"}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-0.5 -0.5 14 14" height="14" width="14"><g id="cloud-data-transfer--cloud-data-transfer-internet-server-network"><path id="Vector" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="m3.699 8.216 1.827 -1.616v4.845" stroke-width="1"></path><path id="Vector_2" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="m9.301 9.831 -1.828 1.615V6.6" stroke-width="1"></path><path id="Vector_3" stroke="#2859c5" stroke-linecap="round" stroke-linejoin="round" d="M3.64 10.068a2.965 2.965 0 0 1 -0.397 -5.915 0.212 0.212 0 0 0 0.195 -0.119 3.592 3.592 0 0 1 6.972 0.845 0.228 0.228 0 0 0 0.161 0.186 2.535 2.535 0 0 1 0.466 4.777" stroke-width="1"></path></g></svg>
									{else}
										<svg class="product__cart__sidepanel__item__icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14"><g id="shipping-box-1--box-package-label-delivery-shipment-shipping"><path id="Vector" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M12.5.5h-11a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-11a1 1 0 0 0-1-1Z"></path><path id="Vector_2" stroke="#000000" stroke-linecap="round" stroke-linejoin="round" d="M9 .5v5a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-5"></path></g></svg>
									{/if}

									{$child->getLabel()}

									{if $child->hasBadge()}
										&nbsp;<span class="badge">{$child->getBadge()}</span>
									{/if}
								</a>
							{else}
								<div menuItemName="{$child->getName()}" class="list-group-item{if $child->getClass()} {$child->getClass()}{/if}" id="{$child->getId()}">
									{if $child->hasIcon()}
										<i class="{$child->getIcon()}"></i>&nbsp;
									{/if}

									{$child->getLabel()}

									{if $child->hasBadge()}
										&nbsp;<span class="badge">{$child->getBadge()}</span>
									{/if}
								</div>
							{/if}
						{/foreach}
					</div>
				{/if}

				{if $panel->hasFooterHtml()}
					<div class="panel-footer clearfix">
						{$panel->getFooterHtml()}
					</div>
				{/if}
			</div>
			{if $panel->getExtra('mobileSelect') and $panel->hasChildren()}
				{* Mobile Select only supports dropdown menus *}
				<div class="panel hidden-lg hidden-md {if $panel->getClass()}{$panel->getClass()}{else}panel-default{/if}"{if $panel->getAttribute('id')} id="{$panel->getAttribute('id')}"{/if}>
					{include file="orderforms/$carttpl/sidebar-categories-selector.tpl"}
				</div>
			{/if}
		{/foreach}
	</div>
</div>
<div id="order-standard_cart">
	{if $errormessage}
		<div class="alert alert-danger">
			{$errormessage}
		</div>
	{elseif !$productGroup}
		<div class="alert alert-info">
			{lang key='orderForm.selectCategory'}
		</div>
	{/if}
	

	<div class="standard__cart__slider__layout__options__header row justify-content-between mb-3 standard__cart__{$productscount}products">
		
		<div class="col-md-4 col-6">
			<h6 class="coodiv-text-8 font-weight-300">{$groupname}</h6>
			{if $coodivsettings.allowproductsliderswitch=='activated' || $coodivsettings.id != '1'}
				<div class="standard__slider__standard__cart__toggle">
					{if $coodivsettings.productasslider=='activated' || $coodivsettings.id != '1'}
						<span class="standard__slider__standard__cart__toggle__slider selected">Slider</span>
						<span class="standard__slider__standard__cart__toggle__all">All</span>
					{else}
						<span class="standard__slider__standard__cart__toggle__slider">Slider</span>
						<span class="standard__slider__standard__cart__toggle__all selected">All</span>
					{/if}
				</div>
			{/if}
		</div>
		
		<div class="col-md-8 col-6 d-flex align-items-center justify-content-end">
			<div class="standard__cart__slider__layout__wrapper__options">
				<button class="standard__cart__slider__prev"></button>
				<span class="standard__cart__slider__counter"></span>
				<button class="standard__cart__slider__next"></button>
			</div>
		</div>
	</div>
	<div class="standard__cart__slider__layout__wrapper ">
		<div class="standard__cart__slider__layout {if $coodivsettings.productasslider=='activated' || $coodivsettings.id != '1'}slider{else}all{/if}">
			{foreach $products as $key => $product}
			
			{if $product.pricing.monthly}
				{if $product.pricing.rawpricing.monthly > 0}
					{assign var='minimalprice' value=$product.pricing.rawpricing.monthly}
				{/if}
				{elseif $product.pricing.quarterly}
				{math assign="minimalprice" equation="y/3" y=$product.pricing.rawpricing.quarterly}
				{elseif $product.pricing.semiannually}
				{math assign="minimalprice" equation="y/6" y=$product.pricing.rawpricing.semiannually} 
				{elseif $product.pricing.annually}
				{math assign="minimalprice" equation="y/12" y=$product.pricing.rawpricing.annually} 
				{elseif $product.pricing.biennially}
				{math assign="minimalprice" equation="y/24" y=$product.pricing.rawpricing.biennially} 
				{elseif $product.pricing.triennially}    
				{math assign="minimalprice" equation="y/36" y=$product.pricing.rawpricing.triennially} 
			{/if}
			
			{if $product.pricing.quarterly}
				{math assign="check_discount_quarterly" equation="100-((y/(x*3))*100)" x=$minimalprice y=$product.pricing.rawpricing.quarterly format="%d"}
			{else}
				{assign var='check_discount_quarterly' value="0"}
			{/if}
			{if $product.pricing.semiannually}
				{math assign="check_discount_semiannually" equation="100-((y/(x*6))*100)" x=$minimalprice y=$product.pricing.rawpricing.semiannually format="%d"}
			{else}
				{assign var='check_discount_semiannually' value="0"}
			{/if}
			{if $product.pricing.annually}
				{math assign="check_discount_annually" equation="100-((y/(x*12))*100)" x=$minimalprice y=$product.pricing.rawpricing.annually format="%d"}
			{else}
				{assign var='check_discount_annually' value="0"}
			{/if}
			{if $product.pricing.biennially}
				{math assign="check_discount_biennially" equation="100-((y/(x*24))*100)" x=$minimalprice y=$product.pricing.rawpricing.biennially format="%d"}
			{else}
				{assign var='check_discount_biennially' value="0"}    
			{/if}
			{if $product.pricing.triennially}
				{math assign="check_discount_triennially" equation="100-((y/(x*36))*100)" x=$minimalprice y=$product.pricing.rawpricing.triennially format="%d"}
			{else}
				{assign var='check_discount_triennially' value="0"}      
			{/if}
			{if $check_discount_quarterly > 0 || $check_discount_semiannually > 0 || $check_discount_annually > 0 || $check_discount_biennially > 0 || $check_discount_triennially > 0}
				{assign var="show_discount" value=true}
			{/if}   
			{if $check_discount_quarterly > 0 || $check_discount_semiannually > 0 || $check_discount_annually > 0 || $check_discount_biennially > 0 || $check_discount_triennially > 0}
			{assign var="show_discount" value=true}
			{/if}  
			<div class="pricing__plans__standard__item">
				<div class="pricing__plans__standard rounded-8 pt-12 pb-8 px-9 white-bg h-100 d-flex flex-column mx-3">
					<div class="pricing-plans-special-header d-flex justify-content-between align-items-center flex-wrap">
						<h5 class="coodiv-text-7 mb-0 font-weight-bold">{$product.name}</h5>
						{if $product.stockControlEnabled}
						<p class="coodiv-text-12 font-weight-300 mb-0">{$product.qty} {$LANG.orderavailable}</p>
						{/if}
					</div>
					<p class="coodiv-text-11 font-weight-300">{$groupname}</p>
					<p class="coodiv-text-11 font-weight-400 mt-8 main-text-color">{$productGroup.tagline}</p>
					<div class="buttom-pricing-element mt-auto">
						<div class="pricing d-flex align-items-start mt-lg-10 mt-4 mb-2">
							<span class="coodiv-text-3 font-weight-bold main-text-color mr-4">
							{if $product.bid}
							{if $product.displayprice}
							<span class="emyui-ews-plans-group-price-tag">{$product.displayprice}</span>
							{/if}
							{else}
							{if $product.pricing.hasconfigoptions}
							
							{/if}
							{if $product.pricing.minprice.cycle eq "free"}
							{else}
							<span class="coodiv-text-4 font-weight-200">{$activeCurrency.prefix}</span>
							{/if}
							<span id="cyclepricraw" data-row-price-min="{$minimalprice}" class="emyui-ews-plans-group-price-tag">
							{if $product.pricing.minprice.cycle eq "monthly"}
							<span data-row-price="{$product.pricing.rawpricing.monthly}">{$product.pricing.rawpricing.monthly}</span>
								{elseif $product.pricing.minprice.cycle eq "quarterly"}
							<span id="quarterlyprice" data-row-price="{$product.pricing.rawpricing.quarterly}">{$product.pricing.rawpricing.quarterly}</span>
								{elseif $product.pricing.minprice.cycle eq "semiannually"}
							<span id="semiannuallyprice" data-row-price="{$product.pricing.rawpricing.semiannually}">{$product.pricing.rawpricing.semiannually}</span>
								{elseif $product.pricing.minprice.cycle eq "annually"}
							<span id="annuallyprice" data-row-price="{$product.pricing.rawpricing.annually}">{$product.pricing.rawpricing.annually}</span>
								{elseif $product.pricing.minprice.cycle eq "biennially"}
							<span id="bienniallyprice" data-row-price="{$product.pricing.rawpricing.biennially}">{$product.pricing.rawpricing.biennially}</span>
								{elseif $product.pricing.minprice.cycle eq "triennially"}
							<span id="trienniallyprice" data-row-price="{$product.pricing.rawpricing.triennially}">{$product.pricing.rawpricing.triennially}</span>
								{elseif $product.pricing.minprice.cycle eq "free"}
								{$LANG.orderfree}
							{else}
							{$product.pricing.rawpricing.monthly}
							{/if}
							</span>
							{/if}
							</span>
							<span class="coodiv-text-12 font-weight-300 line-height-20 mt-3">
							{if $product.pricing.minprice.cycle eq "monthly"}
									{$LANG.orderpaymenttermmonthly}
								{elseif $product.pricing.minprice.cycle eq "quarterly"}
									{$LANG.orderpaymenttermquarterly}
								{elseif $product.pricing.minprice.cycle eq "semiannually"}
									{$LANG.orderpaymenttermsemiannually}
								{elseif $product.pricing.minprice.cycle eq "annually"}
									{$LANG.orderpaymenttermannually}
								{elseif $product.pricing.minprice.cycle eq "biennially"}
									{$LANG.orderpaymenttermbiennially}
								{elseif $product.pricing.minprice.cycle eq "triennially"}
									{$LANG.orderpaymenttermtriennially}
							{/if}
							</span>
						</div>
						{if $show_discount}          
							<strong class="plan-highlight mb-7">
								{if $check_discount_quarterly > 0 && $product.pricing.quarterly && $check_discount_quarterly > $check_discount_semiannually && $check_discount_quarterly > $check_discount_annually && $check_discount_quarterly > $check_discount_biennially && $check_discount_quarterly > $check_discount_triennially}
								With a {$LANG.pricingCycleShort.quarterly} term ({$check_discount_quarterly}% savings)							
								{elseif $check_discount_semiannually > 0 && $product.pricing.semiannually && $check_discount_semiannually > $check_discount_quarterly && $check_discount_semiannually > $check_discount_annually && $check_discount_semiannually > $check_discount_biennially && $check_discount_semiannually > $check_discount_triennially}
								With a {$LANG.pricingCycleShort.semiannually} term ({$check_discount_semiannually}% savings)
								{elseif $check_discount_annually > 0 && $product.pricing.annually && $check_discount_annually > $check_discount_semiannually && $check_discount_annually > $check_discount_quarterly && $check_discount_annually > $check_discount_biennially && $check_discount_annually > $check_discount_triennially}
								With a 1{$LANG.pricingCycleShort.annually} term ({$check_discount_annually}% savings)
								{elseif $check_discount_biennially > 0 && $product.pricing.biennially && $check_discount_biennially > $check_discount_semiannually && $check_discount_biennially > $check_discount_annually && $check_discount_biennially > $check_discount_quarterly && $check_discount_biennially > $check_discount_triennially}
								With a {$LANG.pricingCycleShort.biennially} term ({$check_discount_biennially}% savings)
								{elseif $check_discount_triennially > 0 && $product.pricing.triennially && $check_discount_triennially > $check_discount_semiannually && $check_discount_triennially > $check_discount_annually && $check_discount_triennially > $check_discount_biennially && $check_discount_triennially > $check_discount_quarterly}
								With a {$LANG.pricingCycleShort.triennially} term ({$check_discount_triennially}% savings)
								{/if}
							</strong>
						{/if}
						<a href="{$product.productUrl}" class="btn btn-primary-outline d-block w-100 coodiv-text-12 text-uppercase btn-order-now" id="{$idPrefix}-order-button"{if $product.hasRecommendations} data-has-recommendations="1"{/if}>
							{$LANG.ordernowbutton}
						</a>
							
						{if $product.featuresdesc}
						  <ul class="pricing__plans__special__body {$idPrefix}-description">
								{$product.featuresdesc}
						   </ul>
						{/if}
						{if $product.features}
						<ul class="pricing__plans__special__body">
							{foreach $product.features as $feature => $value}
								<li id="{$idPrefix}-feature{$value@iteration}">
									<span class="feature-value">{$value}</span>
									{$feature}
								</li>
							{/foreach}
						</ul>	
						{/if}
					</div>
				</div>
			</div>
			{/foreach}
		</div>
	</div>
</div>

{include file="orderforms/standard_cart/recommendations-modal.tpl"}
