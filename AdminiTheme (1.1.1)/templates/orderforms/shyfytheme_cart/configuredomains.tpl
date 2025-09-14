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
					<h1 class="coodiv-text-5 font-weight-bold mb-0">{$LANG.cartdomainsconfig}</h1>
					<p class="coodiv-text-10 font-weight-300">{$LANG.orderForm.reviewDomainAndAddons}</p>
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
            <form method="post" action="{$smarty.server.PHP_SELF}?a=confdomains" id="frmConfigureDomains">
                <input type="hidden" name="update" value="true" />

                {if $errormessage}
                    <div class="alert alert-danger" role="alert">
                        <p>{$LANG.orderForm.correctErrors}:</p>
                        <ul>
                            {$errormessage}
                        </ul>
                    </div>
                {/if}
				
				<div class="cart__domains__config__boxes__wrapper">
                {foreach $domains as $num => $domain}

                <div class="cart__domains__config__box">
					<div class="main__cart__domains__config__box">
						<div class="cart__domains__config__box__icon">
							<svg class="cart__domains__config__box__icon__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48">
								<path class="colorone" d="M43.08,13.83a14.16,14.16,0,0,0-.59-1.3h0l-.05-.09A22.22,22.22,0,0,0,22.91,0a4.18,4.18,0,0,0-.51,0A22.41,22.41,0,0,0,2.34,12.49l0,.07a22.13,22.13,0,0,0,0,19.69l0,0A22.4,22.4,0,0,0,22.4,44.8c.49,0,1,0,1.43,0A1.62,1.62,0,0,0,25.31,43a1.59,1.59,0,0,0-1.72-1.47c-.38,0-.76,0-1.16,0h0c-2.36,0-4.76-3.29-6.23-8.35h3.14a1.6,1.6,0,1,0,0-3.2H15.44a42.7,42.7,0,0,1,0-15.29H29.51a1.6,1.6,0,0,0,1.51.68,1.57,1.57,0,0,0,1.1-.68H40a1.19,1.19,0,0,1,.08.16,1.6,1.6,0,0,0,3.13-.49A1.57,1.57,0,0,0,43.08,13.83Zm-4.86-2.27H31.93a24.64,24.64,0,0,0-3-7.21A19,19,0,0,1,38.22,11.56ZM22.4,3.2h.25c2.27.23,4.55,3.48,6,8.35H16.17C17.64,6.49,20,3.2,22.4,3.2ZM15.82,4.39a24.53,24.53,0,0,0-3,7.17H6.57A19.19,19.19,0,0,1,15.82,4.39Zm0,36a19.35,19.35,0,0,1-9.23-7.16h6.28A25,25,0,0,0,15.8,40.41ZM12.18,30.05H4.8A19.15,19.15,0,0,1,3.2,22.4a18.9,18.9,0,0,1,1.6-7.64h7.38a46.7,46.7,0,0,0,0,15.29Z"/>
								<path class="colortwo" d="M46.84,19.26l-11.2-3.2a1.64,1.64,0,0,0-.88,0l-11.2,3.2A1.61,1.61,0,0,0,22.4,20.8v8.61A20.06,20.06,0,0,0,34.57,47.87a1.59,1.59,0,0,0,1.26,0A20.06,20.06,0,0,0,48,29.41V20.8A1.61,1.61,0,0,0,46.84,19.26ZM34.92,34.31a1.59,1.59,0,0,1-2.3,0l-2.57-2.65a1.6,1.6,0,0,1,0-2.26h0a1.6,1.6,0,0,1,2.26,0l1.42,1.47,4.28-4.41a1.6,1.6,0,0,1,2.26,0h0a1.6,1.6,0,0,1,0,2.26Z"/>
							</svg>
						</div>
						<div class="cart__domains__config__box__header d-flex align-items-center justify-content-between mb-10">
							<div class="cart__domains__config__box__header__informations">
								<h6 class="cart__domains__config__name coodiv-text-6 font-weight-700 mb-0">{$domain.domain}</h6>
								{if $domain.hosting}
									<span class="domain__has__hosting"><i class="fal fa-check"></i> {$LANG.cartdomainshashosting}</span>
								{else}
									<a class="domain__has__no__hosting" href="{$WEB_ROOT}/cart.php"><i class="fal fa-times"></i> {$LANG.cartdomainsnohosting}</a>
								{/if}
							</div>
							<div class="cart__domains__config__box__header__options">
								<div class="cart__domains__config__period">
									<span class="coodiv-text-12">{$LANG.orderregperiod}: {$domain.regperiod} {$LANG.orderyears}</span>
								</div>
							</div>
						</div>
						{if $domain.dnsmanagement || $domain.emailforwarding || $domain.idprotection}
							<div class="row addon-products cart__domains__config__products__wrapper">
								{if $domain.dnsmanagement}
									<div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
										<div class="cart__domains__config__products__item panel-addon{if $domain.dnsmanagementselected} panel-addon-selected{/if}">
											<div class="cart__domains__config__products__item__header">
												<label>
													<input type="checkbox" name="dnsmanagement[{$num}]"{if $domain.dnsmanagementselected} checked{/if} />
												</label>
												<div class="d-block ml-2">
													<h6 class="coodiv-text-10 mb-0">{$LANG.domaindnsmanagement}</h6>
													<span class="coodiv-text-12 font-weight-300">{$domain.dnsmanagementprice} / {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
											</div>
											<span class="cart__domains__config__products__item__know__more" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsdnsmanagementinfo}"><i class="fas fa-info"></i></span>
										</div>
									</div>
								{/if}

								{if $domain.idprotection}
									<div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
										<div class="cart__domains__config__products__item panel-addon{if $domain.idprotectionselected} panel-addon-selected{/if}">
											<div class="cart__domains__config__products__item__header">
												<label>
													<input type="checkbox" name="idprotection[{$num}]"{if $domain.idprotectionselected} checked{/if} />
												</label>
												<div class="d-block ml-2">
													<h6 class="coodiv-text-10 mb-0">{$LANG.domainidprotection}</h6>
													<span class="coodiv-text-12 font-weight-300">{$domain.idprotectionprice} / {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
											</div>
											<span class="cart__domains__config__products__item__know__more" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsidprotectioninfo}"><i class="fas fa-info"></i></span>
										</div>
									</div>
								{/if}

								{if $domain.emailforwarding}
									<div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
										<div class="cart__domains__config__products__item panel-addon{if $domain.emailforwardingselected} panel-addon-selected{/if}">
											<div class="cart__domains__config__products__item__header">
												<label>
													<input type="checkbox" name="emailforwarding[{$num}]"{if $domain.emailforwardingselected} checked{/if} />
												</label>
												<div class="d-block ml-2">
													<h6 class="coodiv-text-10 mb-0">{$LANG.domainemailforwarding}</h6>
													<span class="coodiv-text-12 font-weight-300">{$domain.emailforwardingprice} / {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
											</div>
											<span class="cart__domains__config__products__item__know__more" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsemailforwardinginfo}"><i class="fas fa-info"></i></span>
										</div>
									</div>
								{/if}
							</div>
						{/if}
					</div>
					{if $domain.eppenabled || $domain.fields}
					<div class="cart__domains__config__box__additionel__inputs">
						{if $domain.eppenabled}
							<div class="row justify-content-start align-items-center">
								<div class="col-md-2 col-12">
									<h6 class="coodiv-text-11">{$LANG.domaineppcode}</h6>
								</div>
								<div class="col-md-10 col-12">
									<div class="form-group">
										<input type="text" name="epp[{$num}]" id="inputEppcode{$num}" value="{$domain.eppvalue}" class="field d-block w-100" placeholder="" />
										<span class="coodiv-text-12 font-weight-300 sub-color">{$LANG.domaineppcodedesc}</span>
									</div>
								</div>
							</div>
						{/if}
						{foreach from=$domain.fields key=domainfieldname item=domainfield}
							<div class="form-group row justify-content-start align-items-center">
								<div class="col-md-2 col-12">
									<h6 class="coodiv-text-11">{$domainfieldname}:</h6>
								</div>
								<div class="col-md-10 col-12">{$domainfield}</div>
							</div>
						{/foreach}
					</div>
					{/if}
					
					</div>

                {/foreach}
				</div>

                {if $atleastonenohosting}
					<div class="cart__domains__config__box domain__config__namesertver">
						<div class="row justify-content-start mb-5">
							<div class="col-md-8 col-12">
								<h6 class="coodiv-text-7 section__title">{$LANG.domainnameservers}</h6>
								<p class="coodiv-text-10 font-weight-300">{$LANG.cartnameserversdesc}</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label for="inputNs1">{$LANG.domainnameserver1}</label>
									<input type="text" class="form-control" id="inputNs1" name="domainns1" value="{$domainns1}" />
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label for="inputNs2">{$LANG.domainnameserver2}</label>
									<input type="text" class="form-control" id="inputNs2" name="domainns2" value="{$domainns2}" />
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label for="inputNs3">{$LANG.domainnameserver3}</label>
									<input type="text" class="form-control" id="inputNs3" name="domainns3" value="{$domainns3}" />
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label for="inputNs1">{$LANG.domainnameserver4}</label>
									<input type="text" class="form-control" id="inputNs4" name="domainns4" value="{$domainns4}" />
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label for="inputNs5">{$LANG.domainnameserver5}</label>
									<input type="text" class="form-control" id="inputNs5" name="domainns5" value="{$domainns5}" />
								</div>
							</div>
						</div>
					</div>
                {/if}

             
				
				<div class="buttom__cart__submit__area">
					<div class="buttom__cart__submit__area__container d-flex align-items-center justify-content-between">
						<div class="">
						<div class="sticky__content d-flex align-items-center">
							<div class="coodiv-text-8 font-weight-bold buttom__cart__submit__area__domains__number" id="cartItemCount">{$cartitemcount}</div>
							<span class="coodiv-text-8 font-weight-bold">{$LANG.orderproduct} <small class="font-weight-300 coodiv-text-11">{$LANG.recommendations.title.addedTo}</small></span>
						</div>
						</div>
						<div class="d-flex align-items-center">
						<a class="viewcart-btn coodiv-text-11 font-weight-bold mr-9" href="#">{$LANG.viewcart}</a>
						<button type="submit" class="orderform__submit__btn__succses btn btn-primary btn-lg">{$LANG.continue}</button>
						</div>
					</div>
                </div>

            </form>
        </div>
    </div>
</div>

{include file="orderforms/standard_cart/recommendations-modal.tpl"}
