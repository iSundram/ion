{if $successful}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='changessavedsuccessfully'}" textcenter=true}
{/if}

{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

{if in_array('state', $optionalFields)}
    <script>
        var stateNotRequired = true;
    </script>
{/if}
<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<form class="page__clientareadetails__form" data-sticky-container method="post" action="?action=details" role="form">
    <div class="card">
		<div class="card__header">
			<h6 class="coodiv-text-11 mb-0">{lang key='orderForm.personalInformation'}</h6>
		</div>
        <div class="card__body">
            <div class="row justify-content-center">
                <div class="col-md-6 col-12">
                    <div class="form-group">
                        <label for="inputFirstName" class="col-form-label">{lang key='clientareafirstname'}</label>
                        <input type="text" name="firstname" id="inputFirstName" value="{$clientfirstname}"{if in_array('firstname', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
					 <div class="form-group">
                        <label for="inputEmail" class="col-form-label">{lang key='clientareaemail'}</label>
                        <input type="email" name="email" id="inputEmail" value="{$clientemail}"{if in_array('email', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
					 <div class="form-group">
                        <label for="inputLanguage" class="col-form-label">{lang key='clientarealanguage'}</label>
                        <select name="accountLanguage" id="inputAccountLanguage" class="form-control custom-select"
                            {if in_array('language', $uneditablefields)} disabled="disabled"{/if}>
                            <option value="">{lang key='default'}</option>
                            {foreach $languages as $language}
                                <option value="{$language}"{if $language eq $clientLanguage} selected="selected"{/if}
                                    >{$language|ucfirst}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
				<div class="col-md-6 col-12">
					<div class="form-group">
                        <label for="inputLastName" class="col-form-label">{lang key='clientarealastname'}</label>
                        <input type="text" name="lastname" id="inputLastName" value="{$clientlastname}"{if in_array('lastname', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
					<div class="form-group">
                        <label for="inputPhone" class="col-form-label">{lang key='clientareaphonenumber'}</label>
                        <input type="tel" name="phonenumber" id="inputPhone" value="{$clientphonenumber}"{if in_array('phonenumber',$uneditablefields)} disabled=""{/if} class="form-control" />
                    </div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="card">
		<div class="card__header">
			<h6 class="coodiv-text-11 mb-0">{lang key='billingAddress'}</h6>
		</div>
        <div class="card__body">
			<div class="row justify-content-center">
                <div class="col-md-6 col-12">
					<div class="form-group">
                        <label for="inputCompanyName" class="col-form-label">{lang key='clientareacompanyname'}</label>
                        <input type="text" name="companyname" id="inputCompanyName" value="{$clientcompanyname}"{if in_array('companyname', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <label for="inputAddress2" class="col-form-label">{lang key='clientareaaddress2'}</label>
                        <input type="text" name="address2" id="inputAddress2" value="{$clientaddress2}"{if in_array('address2', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <label for="inputState" class="col-form-label">{lang key='clientareastate'}</label>
                        <input type="text" name="state" id="inputState" value="{$clientstate}"{if in_array('state', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
					<div class="form-group">
                        <label for="inputPaymentMethod" class="col-form-label">{lang key='paymentmethod'}</label>
                        <select name="paymentmethod" id="inputPaymentMethod" class="form-control custom-select">
                            <option value="none">{lang key='paymentmethoddefault'}</option>
                            {foreach $paymentmethods as $method}
                            <option value="{$method.sysname}"{if $method.sysname eq $defaultpaymentmethod} selected="selected"{/if}>{$method.name}</option>
                            {/foreach}
                        </select>
                    </div>
					{if $showTaxIdField}
                        <div class="form-group">
                            <label for="inputTaxId" class="col-form-label">{lang key=$taxIdLabel}</label>
                            <input type="text" name="tax_id" id="inputTaxId" class="form-control" value="{$clientTaxId}"{if in_array('tax_id', $uneditablefields)} disabled="disabled"{/if} />
                        </div>
                    {/if}
                </div>
				<div class="col-md-6 col-12">
					<div class="form-group">
                        <label for="inputAddress1" class="col-form-label">{lang key='clientareaaddress1'}</label>
                        <input type="text" name="address1" id="inputAddress1" value="{$clientaddress1}"{if in_array('address1', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
                    </div>
					<div class="form-group">
                        <label class="col-form-label" for="country">{lang key='clientareacountry'}</label>
                        {$clientcountriesdropdown}
                    </div>
					
					<div class="row justify-content-center">
						<div class="col-md-6 col-12">
							<div class="form-group">
								<label for="inputCity" class="col-form-label">{lang key='clientareacity'}</label>
								<input type="text" name="city" id="inputCity" value="{$clientcity}"{if in_array('city', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="form-group">
								<label for="inputPostcode" class="col-form-label">{lang key='clientareapostcode'}</label>
								<input type="text" name="postcode" id="inputPostcode" value="{$clientpostcode}"{if in_array('postcode', $uneditablefields)} disabled="disabled"{/if} class="form-control" />
							</div>
						</div>
					</div>
					<div class="form-group">
                        <label for="inputBillingContact" class="col-form-label">{lang key='defaultbillingcontact'}</label>
                        <select name="billingcid" id="inputBillingContact" class="form-control custom-select">
                            <option value="0">{lang key='usedefaultcontact'}</option>
                            {foreach $contacts as $contact}
                            <option value="{$contact.id}"{if $contact.id eq $billingcid} selected="selected"{/if}>{$contact.name}</option>
                            {/foreach}
                        </select>
                    </div>
					{if $customfields}
                        {foreach $customfields as $customfield}
                            <div class="form-group">
                                <label class="col-form-label" for="customfield{$customfield.id}">{$customfield.name}</label>
                                <div class="control">
                                    {$customfield.input} {$customfield.description}
                                </div>
                            </div>
                        {/foreach}
                    {/if}
				</div>
			</div>
		</div>
	</div>

    {if $emailPreferencesEnabled}
        <div id="emailPreferences" class="card">
			<div class="card__header">
				<h6 class="coodiv-text-11 mb-0">{lang key='clientareacontactsemails'}</h6>
			</div>
            <div class="card__body">
                <div class="controls">
                    {foreach $emailPreferences as $emailType => $value}
						<div class="form-group mb-1">
							<label for="email_preferences[{$emailType}]" class="coodiv-check-input d-flex">
								<input type="hidden" name="email_preferences[{$emailType}]" value="0">
								<input type="checkbox" class="coodiv-check-input-click" name="email_preferences[{$emailType}]" id="{$emailType}Emails" value="1"{if $value} checked="checked"{/if} />
								<span class="checkbox mr-2"></span>
								<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">{lang key="emailPreferences."|cat:$emailType} {if !($value@last)}{/if}</p>
							</label>
						</div>
                    {/foreach}
                </div>
            </div>
        </div>
    {/if}

    {if $showMarketingEmailOptIn}
        <div class="card">
            <div class="card__body">
				<h6 class="coodiv-text-11 mb-0">{lang key='emailMarketing.joinOurMailingList'}</h6>
                <p class="coodiv-text-11 font-weight-500 mb-6">{$marketingEmailOptInMessage}</p>
                <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success form-check-input" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
            </div>
        </div>
    {/if}
	
	<div class="form-group form__btn__submit__group">
        <input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
		<input class="btn btn-primary" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
    </div>
    
</form>
