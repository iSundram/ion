{include file="orderforms/standard_cart/common.tpl"}


<div class="full__with__section">
	<div class="main__page__content">
		<div class="row justify-content-start">
			<div class="col-md-8 col-12">
				<div class="orderform__cart__header">
					<h1 class="coodiv-text-5 font-weight-bold mb-0">{$LANG.cartproductaddons}</h1>
					<p class="coodiv-text-10 font-weight-300">{$LANG.orderchooseaddons}</p>
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
	{if count($addons) == 0}
		<div id="noAddons" class="alert alert-warning text-center" role="alert">
			{$LANG.cartproductaddonsnone}
		</div>
		<p class="text-center">
			<a href="{$WEB_ROOT}/clientarea.php" class="btn btn-default">
				<i class="fas fa-arrow-circle-left"></i>
				{$LANG.orderForm.returnToClientArea}
			</a>
		</p>
	{/if}
	<div class="products">
		<div class="row justify-content-start">
		{foreach $addons as $num => $addon}
			<div class="col-lg-4 col-md-6 col-12 mb-8">
				<div class="card h-100" id="product{$num}">
					<form method="post" action="{$smarty.server.PHP_SELF}?a=add">
						<input type="hidden" name="aid" value="{$addon.id}" />
						<div class="card__header" class="col-12">
							<div class="row justify-content-between">
								<div class="col">
									<h6 class="coodiv-text-9 mb-0 font-weight-bold">{$addon.name}</h6>
									<div class="addons__product__pricing">
										{if $addon.free}
											<span class="free">{$LANG.orderfree}</span>
										{else}
											<span class="price">{$addon.recurringamount} <span>{$addon.billingcycle}</span></span>
										{/if}
									</div>
								</div>
								<div class="col-auto">
									<button type="submit" class="btn btn-primary btn-sm">
										{$LANG.ordernowbutton}
									</button>
								</div>
							</div>
						</div>
						<div class="card__body">
							<p class="coodiv-text-11 font-weight-300">{$addon.description|nl2br}</p>
							
							<div class="primary__dropdown select__dropdown__menu__search__wrapper position-relative mt-7">
								<select name="productid" id="inputProductId{$num}" class="form-control select__dropdown__menu__search">
									{foreach $addon.productids as $product}
										<option value="{$product.id}">
											{$product.product}{if $product.domain} - {$product.domain}{/if}
										</option>
									{/foreach}
								</select>
							</div>
						</div>
					</form>
				</div>
			</div>
		{/foreach}
		</div>
	</div>


