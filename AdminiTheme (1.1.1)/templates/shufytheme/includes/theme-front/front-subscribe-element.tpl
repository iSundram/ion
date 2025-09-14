<div class="footer__subscription__wrapper py-14 bg-default-2 light-mode-texts">
	<div class="main__page__content">
		<div class="subscription__wrapper__box row justify-content-between align-items-center">
			<div class="col-lg-6 col-12 text-lg-left text-center">
				<h6 class="coodiv-text-7 font-weight-700 mb-0">
					{if $coodivhomepagesettings.themehomepagesettingsubscribingsectiontitle == null}
						Get notified when we lunche new offers & discounts
					{else}
						{$coodivhomepagesettings.themehomepagesettingsubscribingsectiontitle}
					{/if}
				</h6>
				<p class="coodiv-text-11 font-weight-300">
					{if $coodivhomepagesettings.themehomepagesettingsubscribingsectionsubtitle == null}
						Get new products, freebies, and news to your inbox.
					{else}
						{$coodivhomepagesettings.themehomepagesettingsubscribingsectionsubtitle}
					{/if}
				</p>
			</div>
			{if $coodivhomepagesettings.themehomepagesettingsubscribingsectionsubtitle == null}
				{assign var='mailchimpapikey' value='mailchimpapikey'}
			{else}
				{assign var='mailchimpapikey' value=$coodivhomepagesettings.themehomepagesettingsubscribingsectionmailchimapi}
			{/if}
			<div class="col-lg-6 col-12">
			<form class="subscription__block__form" method="post" action="" id="mailchimp-form" 
				  data-api-key="{$mailchimpapikey|md5|escape:'htmlall':'UTF-8'}" 
				  data-list-id="{$coodivhomepagesettings.themehomepagesettingsubscribingsectionmailchimcode}" 
				  data-dc="{$coodivhomepagesettings.themehomepagesettingsubscribingsectionmailchimoption}">
				<input class="input subscription-block-form-input col" type="email" name="email" placeholder="Your email" required>  
				<button type="submit" class="button">{if $coodivhomepagesettings.themehomepagesettingsubscribingsectionmailchimpusername == null}Subscribe to Our Newsletter{else}{$coodivhomepagesettings.themehomepagesettingsubscribingsectionmailchimpusername}{/if}</p></button>
			</form>
			<div id="mailchimp-form-messages"></div>
			<p class="pl-3 coodiv-text-12 font-heading font-weight-200 mb-0">{$LANG.ordertosagreement} <a class="font-weight-700" target="_blank" href="{$tosurl}">{$LANG.ordertos}</a></p>
		  </div>
		</div>
	</div>
</div>