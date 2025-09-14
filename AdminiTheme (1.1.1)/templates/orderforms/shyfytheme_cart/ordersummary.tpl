{if $producttotals}
	<div class="sticky__order__summary__sidebar__body">
		 <div class="sticky__order__summary__sidebar__body__product__informations">
			 <div class="product__info__item main__product">
				<span class="main__product__name">{$producttotals.productinfo.groupname} - {if $producttotals.allowqty && $producttotals.qty > 1}{$producttotals.qty} x {/if}{$producttotals.productinfo.name}</span>
				<span class="product__info__price">{$producttotals.pricing.baseprice}</span>
			 </div>
			 {if $producttotals.configoptions}
			 <div class="product__info__wrapper configoption">
				<span class="product__info__wrapper__title">{$LANG.cartproductconfig}</span>
				{foreach $producttotals.configoptions as $configoption}
					<div class="product__info__item">
						<span class="product__info__name">{$configoption.name}: {$configoption.optionname}</span>
						<span class="product__info__price">{$configoption.recurring}{if $configoption.setup} + {$configoption.setup} {$LANG.ordersetupfee}{/if}</span>
					</div>
				{/foreach}
			 </div>
			 {/if}
			 {if $producttotals.addons}
			 <div class="product__info__wrapper addon">
				 <span class="product__info__wrapper__title">{$LANG.cartaddons}</span>
				 {foreach $producttotals.addons as $addon}
					<div class="product__info__item addon">
						<span class="product__info__name">{$addon.name}</span>
						<span class="product__info__price">{$addon.recurring}</span>
					</div>
				 {/foreach}
			 </div>
			 {/if}
		 </div>

		{if $producttotals.pricing.setup || $producttotals.pricing.recurring || $producttotals.pricing.addons}
			<div class="product__summary__totals__wrapper">
				{if $producttotals.pricing.setup}
					<div class="product__summary__totals__item">
						<span class="product__summary__name">{$LANG.cartsetupfees}:</span>
						<span class="product__summary__price">{$producttotals.pricing.setup}</span>
					</div>
				{/if}
				{foreach from=$producttotals.pricing.recurringexcltax key=cycle item=recurring}
					<div class="product__summary__totals__item">
						<span class="product__summary__name">{$cycle}:</span>
						<span class="product__summary__price">{$recurring}</span>
					</div>
				{/foreach}
				{if $producttotals.pricing.tax1}
					<div class="product__summary__totals__item">
						<span class="product__summary__name">{$carttotals.taxname} @ {$carttotals.taxrate}%:</span>
						<span class="product__summary__price">{$producttotals.pricing.tax1}</span>
					</div>
				{/if}
				{if $producttotals.pricing.tax2}
					<div class="product__summary__totals__item">
						<span class="product__summary__name">{$carttotals.taxname2} @ {$carttotals.taxrate2}%:</span>
						<span class="product__summary__price">{$producttotals.pricing.tax2}</span>
					</div>
				{/if}
			</div>
		{/if}
	</div>

    <div class="sidebar__separated__price d-flex flex-column">
		<span class="coodiv-text-11 font-weight-300">{$LANG.ordertotalduetoday}</span>
        <span class="coodiv-text-5 font-weight-bold amt">{$producttotals.pricing.totaltoday}</span>
    </div>
{elseif $renewals}
    {if $carttotals.renewals}
        <span class="product-name">{lang key='domainrenewals'}</span>
        {foreach $carttotals.renewals as $domainId => $renewal}
            <div class="clearfix" id="cartDomainRenewal{$domainId}">
                <span class="pull-left float-left">
                    {$renewal.domain} - {$renewal.regperiod} {if $renewal.regperiod == 1}{lang key='orderForm.year'}{else}{lang key='orderForm.years'}{/if}
                </span>
                <span class="pull-right float-right">
                    {$renewal.priceBeforeTax}
                    <a onclick="removeItem('r','{$domainId}'); return false;" href="#" id="linkCartRemoveDomainRenewal{$domainId}">
                        <i class="fas fa-fw fa-trash-alt"></i>
                    </a>
                </span>
            </div>
            {if $renewal.dnsmanagement}
                <div class="clearfix">
                    <span class="pull-left float-left">+ {lang key='domaindnsmanagement'}</span>
                </div>
            {/if}
            {if $renewal.emailforwarding}
                <div class="clearfix">
                    <span class="pull-left float-left">+ {lang key='domainemailforwarding'}</span>
                </div>
            {/if}
            {if $renewal.idprotection}
                <div class="clearfix">
                    <span class="pull-left float-left">+ {lang key='domainidprotection'}</span>
                </div>
            {/if}
            {if $renewal.hasGracePeriodFee}
                <div class="clearfix">
                    <span class="pull-left float-left">+ {lang key='domainRenewal.graceFee'}</span>
                </div>
            {/if}
            {if $renewal.hasRedemptionGracePeriodFee}
                <div class="clearfix">
                    <span class="pull-left float-left">+ {lang key='domainRenewal.redemptionFee'}</span>
                </div>
            {/if}

        {/foreach}
    {/if}
    <div class="summary-totals">
        <div class="clearfix">
            <span class="pull-left float-left">{lang key='ordersubtotal'}:</span>
            <span class="pull-right float-right">{$carttotals.subtotal}</span>
        </div>
        {if ($carttotals.taxrate && $carttotals.taxtotal) || ($carttotals.taxrate2 && $carttotals.taxtotal2)}
            {if $carttotals.taxrate}
                <div class="clearfix">
                    <span class="pull-left float-left">{$carttotals.taxname} @ {$carttotals.taxrate}%:</span>
                    <span class="pull-right float-right">{$carttotals.taxtotal}</span>
                </div>
            {/if}
            {if $carttotals.taxrate2}
                <div class="clearfix">
                    <span class="pull-left float-left">{$carttotals.taxname2} @ {$carttotals.taxrate2}%:</span>
                    <span class="pull-right float-right">{$carttotals.taxtotal2}</span>
                </div>
            {/if}
        {/if}
    </div>
    <div class="total-due-today">
        <span class="amt">{$carttotals.total}</span>
        <span>{lang key='ordertotalduetoday'}</span>
    </div>
{/if}
