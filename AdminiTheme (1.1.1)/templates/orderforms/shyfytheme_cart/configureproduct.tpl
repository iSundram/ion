{include file="orderforms/standard_cart/common.tpl"}
<script>
var _localLang = {
    'addToCart': '{$LANG.orderForm.addToCart|escape}',
    'addedToCartRemove': '{$LANG.orderForm.addedToCartRemove|escape}'
}
</script>
<div class="standard__cart__order__steps__container full__with__section into__main__page__content__full__width__element">
	<div class="main__page__content">
		<div class="row justify-content-start">
			<div class="col-md-8 col-12">
				<div class="orderform__cart__header">
					<h1 class="coodiv-text-5 font-weight-bold mb-0">{$LANG.orderconfigure}</h1>
					<p class="coodiv-text-10 font-weight-300">{$LANG.orderForm.configureDesiredOptions}</p>
				</div>
			</div>
		</div>
		<div class="standard__cart__order__steps__wrapper mt-9">
			<div class="standard__cart__order__steps">
				<a class="standard__cart__order__steps__item done" href="#"><span class="standard__cart__order__steps__item__number">1</span> <span class="standard__cart__order__steps__item__text">{$LANG.cartproductselection}</span></a>
				<a class="standard__cart__order__steps__item current" href="#"><span class="standard__cart__order__steps__item__number">2</span> <span class="standard__cart__order__steps__item__text">{$LANG.cartproductconfig}</span></a>
				<a class="standard__cart__order__steps__item" href="#"><span class="standard__cart__order__steps__item__number">3</span> <span class="standard__cart__order__steps__item__text">{$LANG.cartreviewcheckout}</span></a>
				<a class="standard__cart__order__steps__item" href="#"><span class="standard__cart__order__steps__item__number">4</span> <span class="standard__cart__order__steps__item__text">{$LANG.store.addon.wptk.proceedToCheckout}</span></a>
			</div>
		</div>
	</div>
</div>
<div id="order-standard_cart">
    <div class="row">
        <div class="col-12">
            <form id="frmConfigureProduct">
                <input type="hidden" name="configure" value="true" />
                <input type="hidden" name="i" value="{$i}" />

                <div class="row justify-content-start">
                    <div class="secondary-cart-body">
                        <div class="default__shadow__panel product__configure__info">
							<div class="default__shadow__panel__body">
								<h6 class="coodiv-text-7 font-weight-bold mb-7">{$productinfo.name}</h6>
								<p>{$productinfo.description}</p>
							</div>
                        </div>

                        <div class="alert alert-danger w-hidden" role="alert" id="containerProductValidationErrors">
                            <p>{$LANG.orderForm.correctErrors}:</p>
                            <ul id="containerProductValidationErrorsList"></ul>
                        </div>

						 {if $pricing.type eq "recurring"}
						 
							{if $pricing.monthly}
							{assign var='minimalprice' value=$pricing.rawpricing.monthly}
							{elseif $pricing.quarterly}
							{math assign="minimalprice" equation="y/3" y=$pricing.rawpricing.quarterly}
							{elseif $pricing.semiannually}
							{math assign="minimalprice" equation="y/6" y=$pricing.rawpricing.semiannually} 
							{elseif $pricing.annually}
							{math assign="minimalprice" equation="y/12" y=$pricing.rawpricing.annually} 
							{elseif $pricing.biennially}
							{math assign="minimalprice" equation="y/24" y=$pricing.rawpricing.biennially} 
							{elseif $pricing.triennially}    
							{math assign="minimalprice" equation="y/36" y=$pricing.rawpricing.triennially} 
							{/if}
							{if $pricing.quarterly}
							{math assign="price_save_quarterly" equation="x*3" x=$minimalprice}
							{/if}
							{if $pricing.semiannually}
							{math assign="price_save_semiannually" equation="x*6" x=$minimalprice}
							{/if}
							{if $pricing.annually}
							{math assign="price_save_annually" equation="x*12" x=$minimalprice}
							{/if}
							{if $pricing.biennially}
							{math assign="price_save_biennially" equation="x*24" x=$minimalprice}
							{/if}
							{if $pricing.triennially}
							{math assign="price_save_triennially" equation="x*36" x=$minimalprice}
							{/if}		
                            <div class="field-container cycles__fields">
								<h6 id="cyclepricemonthly" data-row-price="{$minimalprice}" class="field__title coodiv-text-7 font-weight-300">{$LANG.cartchoosecycle}</h6>
								<div class="panel__check__cart__choosecycle__group row row-eq-height justify-content-start">
									{if $pricing.monthly}
										<div class="item__grid col-md-4 col-6">
											<div class="radio__check__panel default__shadow__panel">
												<div class="default__shadow__panel__body__small">
													<label class="radio cart__choose__cycle__label d-flex justify-content-center {if $billingcycle eq "monthly"} checked{/if}" for="monthly" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="monthly"{else}data-change-billingcycle{/if}>
														<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
															<input class="icheck-control" type="radio" value="monthly" name="billingcycle" {if $billingcycle eq "monthly"} checked{/if} >
														    <div class="icheck__control__check__icon">
																<div class="icheck__control__check__icon__checked__effect"></div>
																<div class="icheck__control__check__cycle__btn">
																	<span class="cycle__select">select</span> 
																	<span class="cycle__selected">selected</span>
																	<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.msetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.msetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('monthly', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div> 
																</div>
															</div>
														</div>
														<div class="cart__choose__cycle__content text-center">
															<h6 class="coodiv-text-10">{$LANG.orderpaymenttermmonthly}</h6>
															<p class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.monthly}{$currency.suffix}</p>
															<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{$pricing.rawpricing.monthly}</span> {$LANG.orderpaymenttermmonthly}</span>
														</div>
													</label>
												</div>
											</div>
										</div>
									{/if} 
									
									{if $pricing.quarterly}
										<div class="item__grid col-md-4 col-6">
											<div class="radio__check__panel default__shadow__panel">
												<div class="default__shadow__panel__body__small">
													<span class="best__pricing__cycle__badge quarterly d-none"><i class="fas fa-bolt"></i> {$LANG.feedbackbest} choice</span>
													<label class="cart__choose__cycle__label d-flex justify-content-center" for="quarterly" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="quarterly"{else}data-change-billingcycle{/if}>
														<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
															<input class="icheck-control" type="radio" value="quarterly" name="billingcycle" {if $billingcycle eq "quarterly"} checked{/if} >
															<div class="icheck__control__check__icon">
																<div class="icheck__control__check__icon__checked__effect"></div>
																<div class="icheck__control__check__cycle__btn">
																	<span class="cycle__select">select</span> 
																	<span class="cycle__selected">selected</span>
																	<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.qsetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.qsetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('quarterly', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div>
																</div>
															</div>
														</div>														
														<div class="cart__choose__cycle__content text-center">
															<h6 class="coodiv-text-10">{$LANG.orderpaymenttermquarterly}</h6>
															<span class="cart__choose__cycle__content__saving quarterly"><s>{$currency.prefix}{$price_save_quarterly}</s><span class="disoucted__price"><span id="quarterlydisount"></span> {$LANG.markdown.saved}</span></span>															
															<p id="cyclepricequarterly" data-row-price="{$pricing.rawpricing.quarterly}" class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.quarterly}{$currency.suffix}</p>
															<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{($pricing.rawpricing.quarterly/3)|string_format:"%.2f"}</span> {$LANG.orderpaymenttermmonthly}</span>
														</div>
													</label>
												</div>
											</div>
										</div>
									{/if}
									
									
									{if $pricing.semiannually}
									<div class="item__grid col-md-4 col-6">
										<div class="radio__check__panel default__shadow__panel">
											<div class="default__shadow__panel__body__small">
												<span class="best__pricing__cycle__badge semiannually d-none"><i class="fas fa-bolt"></i> {$LANG.feedbackbest} choice</span>
												<label class="cart__choose__cycle__label d-flex justify-content-center" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="semiannually"{else}data-change-billingcycle{/if}>
													<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
														<input class="icheck-control" type="radio" name="billingcycle" value="semiannually"{if $billingcycle eq "semiannually"} checked{/if} onchange="updateConfigurableOptions({$i}, this.value); return false">
														<div class="icheck__control__check__icon">
															<div class="icheck__control__check__icon__checked__effect"></div>
															<div class="icheck__control__check__cycle__btn">
																<span class="cycle__select">select</span> 
																<span class="cycle__selected">selected</span>
																<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.ssetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.ssetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('semiannually', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div>
															</div>
														</div>
													</div>
													<div class="cart__choose__cycle__content text-center">
														<h6 class="coodiv-text-10">{$LANG.orderpaymenttermsemiannually}</h6>
														<span class="cart__choose__cycle__content__saving semiannually"><s>{$currency.prefix}{$price_save_semiannually}</s><span class="disoucted__price"><span id="semiannuallydisount"></span> {$LANG.markdown.saved}</span></span>
														<p id="cyclepricesemiannually" data-row-price="{$pricing.rawpricing.semiannually}" class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.semiannually}{$currency.suffix}</p>
														<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{($pricing.rawpricing.semiannually/6)|string_format:"%.2f"}</span> {$LANG.orderpaymenttermmonthly}</span>
													</div>
												</label>
											</div>
										</div>
									</div>
								{/if}
								{if $pricing.annually}
									<div class="radio__check__panel item__grid col-md-4 col-6">
										<div class="radio__check__panel default__shadow__panel">
											<div class="default__shadow__panel__body__small">
												<span class="best__pricing__cycle__badge annually d-none"><i class="fas fa-bolt"></i> {$LANG.feedbackbest} choice</span>
												<label class="cart__choose__cycle__label d-flex justify-content-center" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="annually"{else}data-change-billingcycle{/if}>
													<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
														<input class="icheck-control" type="radio" name="billingcycle" value="annually"{if $billingcycle eq "annually"} checked{/if} onchange="updateConfigurableOptions({$i}, this.value); return false">
														<div class="icheck__control__check__icon">
															<div class="icheck__control__check__icon__checked__effect"></div>
															<div class="icheck__control__check__cycle__btn">
																<span class="cycle__select">select</span> 
																<span class="cycle__selected">selected</span>
																<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.asetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.asetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('annually', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div>
															</div>
														</div>
													</div>
													<div class="cart__choose__cycle__content text-center">
														<h6 class="coodiv-text-10">{$LANG.orderpaymenttermannually}</h6>
														<span class="cart__choose__cycle__content__saving annually"><s>{$currency.prefix}{$price_save_annually}</s><span class="disoucted__price"><span id="annuallydisount"></span> {$LANG.markdown.saved}</span></span>
														<p id="cyclepriceannually" data-row-price="{$pricing.rawpricing.annually}" class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.annually}{$currency.suffix}</p>
														<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{($pricing.rawpricing.annually/12)|string_format:"%.2f"}</span> {$LANG.orderpaymenttermmonthly}</span>
													</div>
												</label>
											</div>
										 </div>
									 </div>
								{/if}
								{if $pricing.biennially}
									<div class="radio__check__panel item__grid col-md-4 col-6">
										<div class="radio__check__panel default__shadow__panel">
											<div class="default__shadow__panel__body__small">
												<span class="best__pricing__cycle__badge biennially d-none"><i class="fas fa-bolt"></i> {$LANG.feedbackbest} choice</span>
												<label class="cart__choose__cycle__label d-flex justify-content-center" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="biennially"{else}data-change-billingcycle{/if}>
													<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
														<input class="icheck-control" type="radio" name="billingcycle" value="biennially"{if $billingcycle eq "biennially"} checked{/if} onchange="updateConfigurableOptions({$i}, this.value); return false">
														<div class="icheck__control__check__icon">
															<div class="icheck__control__check__icon__checked__effect"></div>
															<div class="icheck__control__check__cycle__btn">
																<span class="cycle__select">select</span> 
																<span class="cycle__selected">selected</span>
																<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.bsetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.bsetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('biennially', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div>
															</div>
														</div>
													</div>
													<div class="cart__choose__cycle__content text-center">
														<h6 class="coodiv-text-10">{$LANG.orderpaymenttermbiennially}</h6>
														<span class="cart__choose__cycle__content__saving biennially"><s>{$currency.prefix}{$price_save_biennially}</s><span class="disoucted__price"><span id="bienniallydisount"></span> {$LANG.markdown.saved}</span></span>
														<p id="cyclepricebiennially" data-row-price="{$pricing.rawpricing.biennially}" class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.biennially}{$currency.suffix}</p>
														<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{($pricing.rawpricing.biennially/24)|string_format:"%.2f"}</span> {$LANG.orderpaymenttermmonthly}</span>
													</div>
												</label>
											</div>
										</div>
									</div>
								{/if}
								
								
								{if $pricing.triennially}
									<div class="radio__check__panel item__grid col-md-4 col-6">
										<div class="radio__check__panel default__shadow__panel">
											<div class="default__shadow__panel__body__small">
												<span class="best__pricing__cycle__badge triennially d-none"><i class="fas fa-bolt"></i> {$LANG.feedbackbest} choice</span>
												<label class="cart__choose__cycle__label d-flex justify-content-center" {if $configurableoptions}data-update-config data-config-i={$i} data-config-val="triennially"{else}data-change-billingcycle{/if}>
													<div class="cart__choose__cycle__input check check-cycle cercle__input__radio">
														<input class="icheck-control" type="radio" name="billingcycle" value="triennially"{if $billingcycle eq "triennially"} checked{/if} onchange="updateConfigurableOptions({$i}, this.value); return false">
														<div class="icheck__control__check__icon">
															<div class="icheck__control__check__icon__checked__effect"></div>
															<div class="icheck__control__check__cycle__btn">
																<span class="cycle__select">select</span> 
																<span class="cycle__selected">selected</span>
																<div class="cycle__setep__fees__wrapper">{if $pricing.rawpricing.tsetupfee neq 0}<span class="cycle__setup__fees">{$currency.prefix}{$pricing.rawpricing.tsetupfee}{$currency.suffix} {$LANG.ordersetupfee}</span>{else}<span class="cycle__setup__fees__free">{$LANG.orderfree} {$LANG.ordersetupfee}</span>{/if} {if in_array('triennially', $productinfo.freedomainpaymentterms)}<span class="cycle__with__free__domain">{$LANG.orderfreedomainonly}</span>{/if}</div>
															</div>
														</div>
													</div>
													<div class="cart__choose__cycle__content text-center">
														<h6 class="coodiv-text-10">{$LANG.orderpaymenttermtriennially}</h6>
														<span class="cart__choose__cycle__content__saving triennially"><s>{$currency.prefix}{$price_save_triennially}</s><span class="disoucted__price"><span id="trienniallydisount"></span> {$LANG.markdown.saved}</span></span>
														<p id="cyclepricetriennially" data-row-price="{$pricing.rawpricing.triennially}" class="coodiv-text-6 main-text-color font-weight-bold">{$currency.prefix}{$pricing.rawpricing.triennially}{$currency.suffix}</p>
														<span class="coodiv-text-12 font-weight-300">{$currency.prefix}<span>{($pricing.rawpricing.triennially/36)|string_format:"%.2f"}</span> {$LANG.orderpaymenttermmonthly}</span>
													</div>
												</label>
											</div>
										</div>
									</div>
								{/if}
							</div>
                        </div>
                        {/if}

                        {if count($metrics) > 0}
						<div class="field-container">
							<div class="row justify-content-start mb-5">
								<div class="col-md-10 col-12">
									<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.metrics.title}</h6> 
									<p class="coodiv-text-10 font-weight-300">{$LANG.metrics.explanation}</p>
								</div>
							</div>
                            <ul>
                                {foreach $metrics as $metric}
                                    <li>
                                        {$metric.displayName}
                                        -
                                        {if count($metric.pricing) > 1}
                                            {$LANG.metrics.startingFrom} {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#modalMetricPricing-{$metric.systemName}">
                                                {$LANG.metrics.viewPricing}
                                            </button>
                                        {elseif count($metric.pricing) == 1}
                                            {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            {if $metric.includedQuantity > 0} ({$metric.includedQuantity} {$LANG.metrics.includedNotCounted}){/if}
                                        {/if}
                                        {include file="$template/usagebillingpricing.tpl"}
                                    </li>
                                {/foreach}
                            </ul>
						</div>
                        {/if}
						
						
						<div id="productAddonsContainer">
                        {if $configurableoptions}
						
                           <div class="product__config__loader section__loader d-none">
								{include file="$template/includes/theme-core/loader.tpl"}
								<span class="section__loader__title">{$LANG.loading}</span>
							</div>
                            <div class="field-container product-configurable-options" id="productConfigurableOptions">
								
                                <div class="d-flex flex-column">
                                    {foreach $configurableoptions as $num => $configoption}
                                    {if $configoption.optiontype eq 1}
									<div class="configoption__optiontype__1 mb-6">
										<h6 class="coodiv-text-7 font-weight-300" for="inputConfigOption{$configoption.id}">{$configoption.optionname}</h6>
										<div class="form-group custom__select__wrapper shadow__custom__select">
											<select name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" class="form-control select__dropdown__menu__search">
												{foreach key=num2 item=options from=$configoption.options}
													<option value="{$options.id}"{if $configoption.selectedvalue eq $options.id} selected="selected"{/if}>
														{$options.name}
													</option>
												{/foreach}
											</select>
										</div>
									</div>
                                    {elseif $configoption.optiontype eq 2}
                                    <div class="configoption__optiontype__2 mb-6">
										<h6 class="coodiv-text-7 font-weight-300" for="inputConfigOption{$configoption.id}">{$configoption.optionname}</h6>
										<div class="panel__check__cart__group row justify-content-start">
											{foreach key=num2 item=options from=$configoption.options}
											<div class="item__grid col-md-4 col-6">
												<div class="radio__check__panel default__shadow__panel">
													<div class="default__shadow__panel__body__small">
														<label class="panel__check__cart__group__label d-flex justify-content-start" for="{$options.id}">
															<div class="cercle__input__radio input">
																<input type="radio" name="configoption[{$configoption.id}]" value="{$options.id}"{if $configoption.selectedvalue eq $options.id} checked="checked"{/if} />
																<div class="icheck__control__check__icon">
																	<div class="icheck__control__check__icon__checked__effect"></div>
																</div>
															</div>
															<div class="panel__check__cart__group__content">
																<h6 class="coodiv-text-10">{if $options.nameonly}{$options.nameonly}{else}{$LANG.enable}{/if}</h6>
																<p class="coodiv-text-12 font-weight-600">   
																	{if ($options.fullprice == '0.00' || $options.fullprice == null)}
																		<span class="badge badge-success py-0 px-4 rounded-8 coodiv-text-12 mr-3">{$LANG.orderfree}</span>
																	{else}
																		{$currency.prefix}{$options.fullprice}{$currency.suffix}
																	{/if}
																	{if $options.setup != '0.00' && $options.setup != null}
																		<small>{$currency.prefix}{$options.setup}{$currency.suffix} {$LANG.ordersetupfee}</small>
																	{/if}
																</p>
															</div>
														</label>
													</div>
												</div>
											 </div>
											{/foreach}
										</div>
									</div>
                                    {elseif $configoption.optiontype eq 3}
									<div class="configoption__optiontype__3 mb-6">
										<h6 class="coodiv-text-7 font-weight-300" for="inputConfigOption{$configoption.id}">{$configoption.optionname}</h6>
										<div class="panel__check__cart__group row justify-content-start">
											<div class="item__grid col-12">
												<div class="radio__check__panel default__shadow__panel">
													<div class="default__shadow__panel__body__small">
														<label class="panel__check__cart__group__label d-flex justify-content-start" for="{$options.id}">
															<div class="cercle__input__radio input">
																<input type="checkbox" name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" value="1"{if $configoption.selectedqty} checked{/if} />
																<div class="icheck__control__check__icon">
																	<div class="icheck__control__check__icon__checked__effect"></div>
																</div>
															</div>
															<div class="panel__check__cart__group__content">
																<h6 class="coodiv-text-10">{if $configoption.options.0.nameonly}{$configoption.options.0.nameonly}{else}{$LANG.enable}{/if}</h6>
																<p class="coodiv-text-12 font-weight-600">  
																	{if $configoption.options.0.recurring != "0.00"}                                                                
																		{$currency.prefix}{$configoption.options.0.recurring|string_format:"%.2f"}{$currency.suffix}
																	{else}
																		<span class="badge badge-success py-0 px-4 rounded-8 coodiv-text-12 mr-3">{$LANG.orderfree}</span>
																	{/if}
																</p>
															</div>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
                                    {elseif $configoption.optiontype eq 4}
									<div class="configoption__optiontype__4 mb-6">
										<h6 class="coodiv-text-7 font-weight-300" for="inputConfigOption{$configoption.id}">{$configoption.optionname}</h6>
										<div class="row justify-content-start">
											<div class="col-12">
												<div class="form-group default__shadow__panel">
													<div class="default__shadow__panel__body">
													{if $configoption.qtymaximum}
													{if !$rangesliderincluded}
														<script type="text/javascript" src="{$BASE_PATH_JS}/ion.rangeSlider.min.js"></script>
														<link href="{$BASE_PATH_CSS}/ion.rangeSlider.css" rel="stylesheet">
														<link href="{$BASE_PATH_CSS}/ion.rangeSlider.skinModern.css" rel="stylesheet">
														{assign var='rangesliderincluded' value=true}
													{/if}
                                                    <input type="text" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" class="form-control" />
                                                    <script>
                                                        var sliderTimeoutId = null;
                                                        var sliderRangeDifference = {$configoption.qtymaximum} - {$configoption.qtyminimum};
                                                        // The largest size that looks nice on most screens.
                                                        var sliderStepThreshold = 25;
                                                        // Check if there are too many to display individually.
                                                        var setLargerMarkers = sliderRangeDifference > sliderStepThreshold;

                                                        jQuery("#inputConfigOption{$configoption.id}").ionRangeSlider({
                                                            min: {$configoption.qtyminimum},
                                                            max: {$configoption.qtymaximum},
                                                            grid: true,
                                                            grid_snap: setLargerMarkers ? false : true,
                                                            onChange: function() {
                                                                if (sliderTimeoutId) {
                                                                    clearTimeout(sliderTimeoutId);
                                                                }

                                                                sliderTimeoutId = setTimeout(function() {
                                                                    sliderTimeoutId = null;
                                                                    recalctotals();
                                                                }, 250);
                                                            }
                                                        });
                                                    </script>
                                                {else}
                                                    <div>
                                                        <input type="number" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" min="{$configoption.qtyminimum}" onchange="recalctotals()" onkeyup="recalctotals()" class="form-control form-control-qty" />
                                                        <span class="form-control-static form-control-static-inline">
                                                                x {$configoption.options.0.name}
                                                            </span>
                                                    </div>
                                                {/if}
												</div>
												</div>
											</div>
										</div>
									</div>
                                    {/if}
                                    {/foreach}
                                </div>
                            </div>

                        {/if}
						
						{if $productinfo.type eq "server"}
						<div class="field-container">
							<div class="row justify-content-start mb-5">
								<div class="col-md-10 col-12">
									<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.cartconfigserver}</h6> 
								</div>
							</div>

							<div class="default__shadow__panel">
							<div class="default__shadow__panel__body">

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputHostname">{$LANG.serverhostname}</label>
                                            <input type="text" name="hostname" class="form-control" id="inputHostname" value="{$server.hostname}" placeholder="servername.example.com">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputRootpw">{$LANG.serverrootpw}</label>
                                            <input type="password" name="rootpw" class="form-control" id="inputRootpw" value="{$server.rootpw}">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNs1prefix">{$LANG.serverns1prefix}</label>
                                            <input type="text" name="ns1prefix" class="form-control" id="inputNs1prefix" value="{$server.ns1prefix}" placeholder="ns1">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNs2prefix">{$LANG.serverns2prefix}</label>
                                            <input type="text" name="ns2prefix" class="form-control" id="inputNs2prefix" value="{$server.ns2prefix}" placeholder="ns2">
                                        </div>
                                    </div>
                                </div>

                            </div>
							</div>
						</div>
                        {/if}

                        {if $customfields}
						<div class="field-container">
							<div class="row justify-content-start mb-5">
								<div class="col-md-10 col-12">
									<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.orderadditionalrequiredinfo}</h6> 
									<p class="coodiv-text-12 font-weight-300">{lang key='orderForm.requiredField'}</p>
								</div>
							</div>
							<div class="default__shadow__panel">
								<div class="default__shadow__panel__body">
									{foreach $customfields as $customfield}
										<div class="form-group">
											<label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
											{$customfield.input}
											{if $customfield.description}
												<span class="field-help-text">
													{$customfield.description}
												</span>
											{/if}
										</div>
									{/foreach}
								</div>
							</div>
						</div>
                        {/if}
						</div>
						
						
						
						{if count($addonsPromoOutput) > 0}
							{foreach $addonsPromoOutput as $output}
								{if $output != ""}{assign var="hasVisiblePromoAddons" value=true}{/if}
							{/foreach} 

                            {if $hasVisiblePromoAddons}
								<div class="field-promo-container">
									<div class="row justify-content-start mb-5">
										<div class="col-md-10 col-12">
											<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.navservices}</h6> 
										</div>
									</div>
									<div class="section-body">    
										{foreach $addonsPromoOutput as $output}
											{$output|replace:"type='radio'":"class='icheck-control'"|replace:"bg-white":""|replace:'class="logo"':'class="market__connect__old__logo d-none"'|replace:'class="radio-inline"':'class="radio-inline cercle__input__radio"'}
										{/foreach}
									</div>
								</div>    
							{/if}
						{/if}
						
						
						{if $addons}
						<div class="field-container">
							<div class="row justify-content-start mb-5">
								<div class="col-md-10 col-12">
									<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.cartavailableaddons}</h6> 
								</div>
							</div>
							<div class="panel__check__cart__group row justify-content-start addon-products">
								{foreach $addons as $addon}
									<div class="item__grid col-lg-4 col-6">
										<div class="product__configure__addon__item default__shadow__panel panel-addon{if $addon.status} panel-addon-selected{/if}">
											<span class="product__configure__addon__item__checked__effect"></span>
											<div class="default__shadow__panel__body text-left">
												<div class="d-flex">
													<label>
														<input type="checkbox" name="addons[{$addon.id}]"{if $addon.status} checked{/if} />
													</label>
													<div class="d-block ml-2 pr-8">
														<h6 class="coodiv-text-10">{$addon.name}</h6>
														<span class="coodiv-text-12 font-weight-300">{$addon.pricing}</span>
													</div>
												</div>
												<span class="product__configure__addon__item__know__more" data-toggle="tooltip" data-placement="top" title="{$addon.description}"><i class="fas fa-info"></i></span>
											</div>
										</div>
									</div>
								{/foreach}
							</div>
                        </div>
                        {/if}
						
                    </div>
					
					
					
                    <div class="secondary-cart-sidebar" id="scrollingPanelContainer">
                        <div class="sticky__order__summary__sidebar__wrapper">
                            <div class="sticky__order__summary__sidebar">
								<div class="sticky__order__summary__sidebar__header">
									<h2 class="coodiv-text-7 font-weight-300 mb-0">{$LANG.ordersummary}</h2>
								</div>
								<div class="sticky__sidebar__order__summary position-relative">
									<div class="minimalist__sidebar__update__loader loader" id="orderSummaryLoader">
										{include file="$template/includes/theme-core/loader-minimalist.tpl"}
									</div>
									<div id="producttotal"></div>
								</div>
                            </div>
							<div class="sticky__order__summary__sidebar__footer">
							   <button type="submit" id="btnCompleteProductConfig" class="orderform__submit__btn__succses btn btn-primary btn-lg w-100">{$LANG.continue}</button>
						   </div>
                        </div>
                    </div>
					

                </div>

            </form>
        </div>
    </div>
</div>

<script>recalctotals();</script>

{include file="orderforms/standard_cart/recommendations-modal.tpl"}
