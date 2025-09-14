{include file="orderforms/standard_cart/common.tpl"}

<div class="standard__cart__order__steps__container full__with__section into__main__page__content__full__width__element">
	<div class="main__page__content">
		<div class="row justify-content-start">
			<div class="col-md-8 col-12">
				<div class="orderform__cart__header">
					<h1 class="coodiv-text-5 font-weight-bold mb-0">{$LANG.domaincheckerchoosedomain}</h1>
					<p class="coodiv-text-10 font-weight-300">{$LANG.cartdomainsconfigdesc}</p>
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
    <div class="row justify-content-start">
        <div class="col-12">			
            <form id="frmProductDomain">
					<input type="hidden" id="frmProductDomainPid" value="{$pid}" />
					<div class="domain-productconfigiration-options-group domain-selection-options">
				
					{if $incartdomains}
					<div class="option domain-productconfigiration-options-item">
						<label class="d-flex align-items-center justify-content-start incartdomains">
							<input type="radio" name="domainoption" value="incart" id="selincart" />
							<span class="title">{$LANG.cartproductdomainuseincart}</span>
						</label>
					</div>
					{/if}
				
					{if $registerdomainenabled}
					<div class="option domain-productconfigiration-options-item">
						<label class="d-flex align-items-center justify-content-start registerdomain">
							<input type="radio" name="domainoption" value="register" id="selregister"{if $domainoption eq "register"} checked{/if} />
							<span class="title">{$LANG.cartregisterdomainchoice|sprintf2:$companyname}</span>
						</label>
					</div>
					{/if}
				
					{if $transferdomainenabled}
					<div class="option domain-productconfigiration-options-item">
						<label class="d-flex align-items-center justify-content-start transferdomain">
							<input type="radio" name="domainoption" value="transfer" id="seltransfer"{if $domainoption eq "transfer"} checked{/if} />
							<span class="title">{$LANG.orderForm.transferToUs}</span>
						</label>
					</div>
					{/if}
					
					{if $owndomainenabled}
					<div class="option domain-productconfigiration-options-item owndomain">
						<label class="d-flex align-items-center justify-content-start owndomain">
							<input type="radio" name="domainoption" value="owndomain" id="selowndomain"{if $domainoption eq "owndomain"} checked{/if} />
							<span class="title">{$LANG.ordertransferdomain}</span>
						</label>
					</div>
					{/if}
				
					{if $subdomains}
					<div class="option domain-productconfigiration-options-item border-opacity">
						<label class="d-flex align-items-center justify-content-start subdomains">
							<input type="radio" name="domainoption" value="subdomain" id="selsubdomain"{if $domainoption eq "subdomain"} checked{/if} />
							<span class="title">{$LANG.cartsubdomainchoice|sprintf2:$companyname}</span>
						</label>
					</div>
					{/if}
				</div>
				
                <div id="selection-options-domains" class="domain-productconfigiration-options-inputs domain-slector-inputs">
				{if $incartdomains}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domainincart">
								<div class="dark-mode-texts mb-7">
									<p class="coodiv-text-9 font-weight-light mb-0">{$LANG.cartproductdomainuseincart}</p>
								</div>
								<div class="incart__select__domain__option domain__search__input__wrapper incartdomains-select row justify-content-start w-100 position-relative">
									<div class="domain__search__input__searching select__dropdown__menu__search__wrapper position-relative col">
										<select id="incartsld" name="incartdomain" class="form-control select__dropdown__menu__search">
											{foreach key=num item=incartdomain from=$incartdomains}
												<option value="{$incartdomain}">{$incartdomain}</option>
											{/foreach}
										</select>
									</div>
									<div class="domain__search__input__options col-auto d-flex align-items-center">
                                        <button type="submit" class="domain-selection-options-buttom btn btn-primary domain-selection-options-buttom" id="useOwnDomain">
                                            {$LANG.orderForm.use}
                                        </button>
                                    </div>
								</div>
							</div>
						</div>
					{/if}
					
                    {if $registerdomainenabled}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domainregister">
							<div class="domain-header-search-form d-flex flex-wrap shadow-0">
								<div class="dark-mode-texts mb-7">
									<p class="coodiv-text-9 font-weight-light mb-0">{$LANG.registerdomaindesc}</p>
								</div>
								<div class="domain__search__input__wrapper single-input row justify-content-start w-100 position-relative">
									<div class="domain__search__input__searching position-relative col">
									<input id="registersld" value="{$sld}"  data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch form-control form-control-lg input-lg search__input" placeholder="{lang key='orderForm.enterDomain'}" autocapitalize="none">
									</div>
									<div class="domain__search__input__options col-auto d-flex align-items-center">
									<div class="inputdomainselect select__dropdown__menu__search__wrapper">
										<select name="registertld" id="registertld" class="select__dropdown__menu__search">
											{foreach from=$registertlds item=listtld}
												<option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
											{/foreach}
										</select>
									</div>
									<button type="submit" class="domain-selection-options-buttom btn btn-primary search-btn">{$LANG.orderForm.check}</button>
									</div>
								</div>
                      
                            </div>
                            </div>
                        </div>
                    {/if}
                    {if $transferdomainenabled}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domaintransfer">
								<div class="dark-mode-texts mb-7">
									<p class="coodiv-text-9 font-weight-light mb-0">{$LANG.carttransferdomainchoice}</p>
								</div>
								<div class="domain__search__input__wrapper single-input row justify-content-start w-100 position-relative">
									<div class="domain__search__input__searching position-relative col">
										<input id="transfersld" value="{$sld}" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch form-control form-control-lg input-lg search__input" placeholder="{lang key='orderForm.enterDomain'}" autocapitalize="none">
									</div>
									<div class="inputdomainselect domain__search__input__options col-auto d-flex align-items-center">
										<div class="inputdomainselect select__dropdown__menu__search__wrapper">
											<select name="transfertld" id="transfertld" class="select__dropdown__menu__search">
												{foreach from=$transfertlds item=listtld}
													<option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
												{/foreach}
											</select>
										</div>
										<button type="submit" class="domain-selection-options-buttom btn btn-primary domain-selection-options-buttom">{$LANG.orderForm.transfer}</button>
									</div>
								</div>
							</div>
						</div>
                    {/if}
                    {if $owndomainenabled}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domainowndomain">
								<div class="dark-mode-texts mb-7">
									<p class="coodiv-text-9 font-weight-light mb-0">{$LANG.orderdomainoption2}</p>
								</div>
								<div class="domain__search__input__wrapper single-input row justify-content-start w-100 position-relative">
									<div class="domain__search__input__searching position-relative col">
										<input type="text" id="owndomainsld" value="{$sld}" placeholder="{lang key='yourdomainplaceholder'}" class="inputdomainsearch form-control form-control-lg input-lg search__input" autocapitalize="none" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
									</div>
									<div class="domain__search__input__options col-auto d-flex align-items-center">
										<div class="inputdomainselect select__dropdown__menu__search__wrapper">
											<input type="text" id="owndomaintld" value="{$tld|substr:1}" placeholder="{$LANG.yourtldplaceholder}" class="owndomaintld-input-ab form-control form-control-lg input-lg" autocapitalize="none" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.required'}" />
										</div>
									<button type="submit" class="domain-selection-options-buttom btn btn-primary domain-selection-options-buttom" id="useOwnDomain">{$LANG.orderForm.use}</button>
									</div>
								</div>
                            </div>
                        </div>
                    {/if}
                    {if $subdomains}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domainsubdomain">
								<div class="dark-mode-texts mb-7">
									<p class="coodiv-text-9 font-weight-light mb-0">{$LANG.cartsubdomainchoice|sprintf2:$companyname}</p>
								</div>
								<div class="domain__search__input__wrapper single-input row justify-content-start w-100 position-relative">
									<div class="domain__search__input__searching position-relative col">
										<input id="subdomainsld" value="{$sld}" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch form-control form-control-lg input-lg search__input" placeholder="yourname" autocapitalize="none">
									</div>
									<div class="inputdomainselect domain__search__input__options col-auto d-flex align-items-center">
										<div class="inputdomainselect select__dropdown__menu__search__wrapper">
											<select name="subdomaintld" id="subdomaintld" class="select__dropdown__menu__search">
												{foreach $subdomains as $subid => $subdomain}
													<option value="{$subid}">{$subdomain}</option>
												{/foreach}
											</select>
										</div>
										<button type="submit" class="domain-selection-options-buttom btn btn-primary">{$LANG.orderForm.check}</button>
									</div>
								</div>
                            </div>
                        </div>
					{/if}
					{if $spotlightTlds}
						<div class="domains__spotlighttlds__selection__wrapper {if $domainoption eq "register" || $domainoption eq "transfer"}domains__spotlighttlds__selection__wrapper__register__transfer{else}d-none{/if}">
							{foreach $spotlightTlds as $key => $data}
								<div id="{$data.tld}" class="domains__spotlighttlds__selection__item {if $data.group}with__badge{/if}">
									{if $data.group}<span class="domains__spotlighttlds__selection__item__badge {$data.group}">{$data.groupDisplayName}</span>{/if}
									<span class="domains__spotlighttlds__selection__item__tld">{$data.tld}</span>
									<span class="domains__spotlighttlds__selection__item__price">{$data.register}</span>
								</div>
							{/foreach}
						</div>
					{/if}
					{if $freedomaintlds}
					<div class="dark-mode-texts mt-3 d-flex">
						<p class="coodiv-text-12 font-weight-light">*{$LANG.orderfreedomainregistration} {$LANG.orderfreedomainappliesto}: {$freedomaintlds}</p>
					</div>
					{/if}

				</div>
       </form>
			
	
       <form method="post" action="{$WEB_ROOT}/cart.php?a=add&pid={$pid}&domainselect=1" id="frmProductDomainSelections">

                <div id="DomainSearchResults" class="w-hidden">

                    <div class="domain__search__results__wrapper" id="searchDomainInfo">
					
                        <p id="primaryLookupSearching" class="domain-lookup-loader domain-lookup-primary-loader domain-searching domain-checker-result-headline">
                            <i class="fas fa-spinner fa-spin"></i>
                            <span class="domain-lookup-register-loader">{lang key='orderForm.checkingAvailability'}...</span>
                            <span class="domain-lookup-transfer-loader">{lang key='orderForm.verifyingTransferEligibility'}...</span>
                            <span class="domain-lookup-other-loader">{lang key='orderForm.verifyingDomain'}...</span>
                        </p>
						
                        <div id="primaryLookupResult" class="domain-lookup-result domain-lookup-primary-results w-hidden">
						
                            <div class="domain__lookup__result__box domain-unavailable domain-checker-unavailable headline">
							{lang key='orderForm.domainIsUnavailable'}
							</div>
                            
							<div class="domain__lookup__result__box domain-available domain-checker-available headline">
							<strong></strong> {$LANG.domainavailable2}
							</div>
							
							
                            <div class="btn btn-primary domain-contact-support headline">{$LANG.domainContactUs}</div>
							
                            <div class="domain__lookup__result__box transfer-eligible">
                                <p class="domain-checker-available headline">{lang key='orderForm.transferEligible'}</p>
                                <p>{lang key='orderForm.transferUnlockBeforeContinuing'}</p>
                            </div>
							
                            <div class="domain__lookup__result__box transfer-not-eligible">
                                <p class="domain-checker-unavailable headline">{lang key='orderForm.transferNotEligible'}</p>
                                <p>{lang key='orderForm.transferNotRegistered'}</p>
                                <p>{lang key='orderForm.trasnferRecentlyRegistered'}</p>
                                <p>{lang key='orderForm.transferAlternativelyRegister'}</p>
                            </div>
							
                            <div class="domain__lookup__result__box domain-invalid">
							    <i class="domain__lookup__result__icon fas fa-times"></i>
                                <p class="domain-checker-unavailable headline">{lang key='orderForm.domainInvalid'}</p>
                                <p>
                                    {lang key='orderForm.domainLetterOrNumber'}<span class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span><br />
                                    {lang key='orderForm.domainInvalidCheckEntry'}
                                </p>
                            </div>
							
							<div class="domain-price domain__search__results__wrapper__price">
                                <span class="register-price-label">{lang key='orderForm.domainPriceRegisterLabel'}</span>
                                <span class="transfer-price-label w-hidden">{lang key='orderForm.domainPriceTransferLabel'}</span>
                                <span class="price"></span>
                            </div>
							
							
                            <div id="idnLanguageSelector" class="margin-10 idn-language-selector idn-language w-hidden">
                               <h6 class="text-left coodiv-text-9 font-weight-300 mt-5">{lang key='cart.idnLanguageDescription'}</h6>   
								<div class="form-group custom__select__wrapper">
									<select name="idnlanguage" class="form-control select__dropdown__menu__search">
										<option value="">{lang key='cart.idnLanguage'}</option>
										{foreach $idnLanguages as $idnLanguageKey => $idnLanguage}
											<option value="{$idnLanguageKey}">{lang key='idnLanguage.'|cat:$idnLanguageKey}</option>
										{/foreach}
									</select>
									<div class="field-error-msg">
										{lang key='cart.selectIdnLanguageForRegister'}
									</div>
								</div>	
                            </div>
							
							
                            
							
                            <p class="domain-error domain-checker-unavailable headline "></p>
                            <input type="hidden" id="resultDomainOption" name="domainoption" />
                            <input type="hidden" id="resultDomain" name="domains[]" />
                            <input type="hidden" id="resultDomainPricingTerm" />
                        </div>
                    </div>

                    {if $registerdomainenabled}
                        {if $spotlightTlds}
                            <div id="spotlightTlds" class="spotlight__tlds__domains__configure__product__wrapper clearfix w-hidden">
								<h6 class="coodiv-text-7 font-weight-300 section__title mb-4">{lang key='featuredProduct'}</h6>
                                <div class="spotlight__tlds__domains__configure__product__container row justify-content-start">
                                    {foreach $spotlightTlds as $key => $data}
                                        <div class="spotlight__tlds__domains__configure__product__item product__{$spotlightTlds|count}__in__row col">
                                            <div id="spotlight{$data.tldNoDots}" class="spotlight__tlds__domain__item">
                                                {if $data.group}
                                                    <div class="spotlight__tld__badge spotlight-tld-{$data.group}">{$data.groupDisplayName}</div>
                                                {/if}
													<div class="spotlight__tld__data"><span class="dot">.</span>{$data.tldNoDots}</div>
                                                <span class="domain-lookup-loader domain-lookup-spotlight-loader">
                                                    <i class="fas fa-spinner fa-spin"></i>
                                                </span>
                                                <div class="domain-lookup-result">
                                                    <button type="button" class="unavailable__domain__lookup__btn unavailable w-hidden" disabled="disabled">
                                                        {lang key='domainunavailable'}
                                                    </button>
                                                    <button type="button" class="unavailable__domain__lookup__btn invalid w-hidden" disabled="disabled">
                                                        {lang key='domainunavailable'}
                                                    </button>
                                                    <span class="available price w-hidden">{$data.register}</span>
                                                    <button type="button" class="btn-add-to-cart product-domain w-hidden" data-whois="0" data-domain="">
                                                        <span class="to-add">{lang key='orderForm.add'}</span>
                                                        <span class="loading"><i class="fas fa-spinner fa-spin"></i></span>
                                                        <span class="added">{lang key='domaincheckeradded'}</span>
                                                        <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                                    </button>
													
                                                    <button type="button" class="btn btn-primary domain-contact-support w-hidden">
                                                        {lang key='domainChecker.contactSupport'}
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    {/foreach}
                                </div>
                            </div>
                        {/if}

                        <div class="suggested-domains suggested__domains__table position-relative w-hidden">
							<h6 class="coodiv-text-7 font-weight-300 section__title mb-4">{lang key='orderForm.suggestedDomains'}</h6>
							
                            <div id="suggestionsLoader" class="card-body panel-body domain-lookup-loader domain-lookup-suggestions-loader">
                                <i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.generatingSuggestions'}
                            </div>
							
                            <div id="domainSuggestions" class="domain-lookup-result list-group w-hidden">
                                <div class="domain-suggestion list-group-item w-hidden">
                                    <span class="domain"></span><span class="extension"></span>
									<span class="price"></span>
                                    <div class="actions">
                                        <button type="button" class="btn-add-to-cart product-domain" data-whois="1" data-domain="">
                                            <span class="to-add">{$LANG.addtocart}</span>
                                            <span class="loading"><i class="fas fa-spinner fa-spin"></i></span>
                                            <span class="added">{lang key='domaincheckeradded'}</span>
                                            <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                        </button>
                                        <button type="button" class="btn btn-primary domain-contact-support w-hidden">{lang key='domainChecker.contactSupport'}</button>
                                        
                                        <span class="promo w-hidden"></span>
                                    </div>
                                </div>
                            </div>
							
							 <div class="more-suggestions w-hidden">
                                <a id="moreSuggestions" href="#" onclick="loadMoreSuggestions();return false;">{lang key='domainsmoresuggestions'}</a>
                                <span id="noMoreSuggestions" class="no-more small w-hidden">{lang key='domaincheckernomoresuggestions'}</span>
                            </div>
                            
                        </div>
                    {/if}
                </div>

                <div class="buttom__cart__submit__area d-none">
					<div class="buttom__cart__submit__area__container d-flex align-items-center justify-content-between">
						<div class="">
						<div class="sticky__content d-flex align-items-center">
							<div class="coodiv-text-8 font-weight-bold buttom__cart__submit__area__domains__number" id="cartItemCount">{$cartitemcount}</div>
							<span class="coodiv-text-8 font-weight-bold">{$LANG.orderproduct} <small class="font-weight-300 coodiv-text-11">{$LANG.recommendations.title.addedTo}</small></span>
						</div>
						</div>
						<div class="d-flex align-items-center">
						<a class="viewcart-btn coodiv-text-11 font-weight-bold mr-9" href="#">{$LANG.viewcart}</a>
						<button id="btnDomainContinue" type="submit" class="btn btn-primary btn-lg w-hidden" disabled="disabled">
						    <span class="continue__btn__text">{$LANG.continue}</span>
						    <span class="choosedomain__btn__text">{$LANG.domaincheckerchoosedomain}</span>
						</button>
						</div>
					</div>
                </div>
				
            </form>
			
			
        </div>
    </div>
</div>

{include file="orderforms/standard_cart/recommendations-modal.tpl"}
