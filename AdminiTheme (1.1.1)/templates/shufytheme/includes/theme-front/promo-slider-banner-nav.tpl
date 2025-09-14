{assign var="items" value=$CoodivMarketConnectServices}

{if $items|count > 1}
	<div class="homepage__promo__slider__nav__wrapper d-lg-block d-none items-{$items|count}">	
		{foreach from=$items item=item key=k name=foo}
			<div class="homepage__promo__slider__nav__box text-center coodiv-hover-y">
				<div class="homepage__promo__slider__nav__box__icon__wrapper">
				{include file="$template/includes/theme-core/promo-slide-icons.tpl" illustration="{$item.name}"}  
				</div>
				<h6 class="coodiv-text-9 font-weight-700 mt-2">{$item.name}</h6>
				<p class="coodiv-text-11 font-weight-300 mt-1 slider__text__wrapper">{$item.productGroup.tagline}</p>
			</div>
		{/foreach}
	</div>
{/if}