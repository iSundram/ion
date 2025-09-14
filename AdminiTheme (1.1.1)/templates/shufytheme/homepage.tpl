{if $shuffythemeversion}
	<div class="main__page__content">		
		{if $coodivhomepagesettings.themehomepagesettingmarketconnectbannaers=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/promo-slider-banner.tpl"}
		{/if}
		{if $coodivhomepagesettings.themehomepagesettingmarketconnectbannaersnav=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/promo-slider-banner-nav.tpl"}
		{/if}
		{if $coodivhomepagesettings.themehomepagesettinghomepagefeaturedsection=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/front-products.tpl"}
		{/if}
		
		{if $coodivhomepagesettings.themehomepagesettingservicesfeatures=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/front-features.tpl"}
		{/if}
		
		{if $coodivhomepagesettings.themehomepagesettingannouncements=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/front-latest-announcements.tpl"}
		{/if}
	</div>
	<div class="full__with__section">
		{if $coodivhomepagesettings.themehomepagesettingsavingbanner=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/front-get-started-and-save.tpl"}
		{/if}
		{if $coodivhomepagesettings.themehomepagesettingsubscribingsection=='activated' || $coodivhomepagesettings.id != '1'}
			{include file="$template/includes/theme-front/front-subscribe-element.tpl"}
		{/if}
	</div>
{/if}
