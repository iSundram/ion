<div class="checkout__informations__wrapper">

	<form method="post" action="{$smarty.server.PHP_SELF}?a=checkout" name="orderfrm" id="frmCheckout">
	<input type="hidden" name="submit" value="true" />
	<input type="hidden" name="custtype" id="inputCustType" value="{$custtype}" />
	
	<div class="already__registered__wrapper default__shadow__panel" id="alreadyRegisteredAccordion">
	
	  <div class="already__registered__card">
		<div class="already__registered__card__header" id="logincard">
			<button class="already__registered__card__title d-flex align-items-center" type="button" data-toggle="collapse" data-target="#already__registered__wrapper__login" aria-expanded="true" aria-controls="already__registered__wrapper__login">
			  <span class="cursor"></span><span class="coodiv-text-11 font-weight-600">{if $loggedin}{lang key='switchAccount.title'}{else}{$LANG.orderForm.existingCustomerLogin}{/if}</span>
			</button>
		</div>
		<div id="already__registered__wrapper__login" class="collapse show" aria-labelledby="logincard" data-parent="#alreadyRegisteredAccordion">
		  <div class="already__registered__card__body">
			  {if $loggedin}
				<div id="containerExistingAccountSelect" class="row account-select-container">
					{foreach $accounts as $account}
						<div class="col-sm-{if $accounts->count() == 1}12{else}6{/if}">
							<div class="account{if $selectedAccountId == $account->id} active{/if}">
								<label class="radio-inline" for="account{$account->id}">
									<input id="account{$account->id}" class="account-select{if $account->isClosed || $account->noPermission || $inExpressCheckout} disabled{/if}" type="radio" name="account_id" value="{$account->id}"{if $account->isClosed || $account->noPermission || $inExpressCheckout} disabled="disabled"{/if}{if $selectedAccountId == $account->id} checked="checked"{/if}>
									<span class="address">
										<strong>
											{if $account->company}{$account->company}{else}{$account->fullName}{/if}
										</strong>
										{if $account->isClosed || $account->noPermission}
											<span class="label label-default">
												{if $account->isClosed}
													{lang key='closed'}
												{else}
													{lang key='noPermission'}
												{/if}
											</span>
										{elseif $account->currencyCode}
											<span class="label label-info">
												{$account->currencyCode}
											</span>
										{/if}
										<br>
										<span class="small">
											{$account->address1}{if $account->address2}, {$account->address2}{/if}<br>
											{if $account->city}{$account->city},{/if}
											{if $account->state} {$account->state},{/if}
											{if $account->postcode} {$account->postcode},{/if}
											{$account->countryName}
										</span>
									</span>
								</label>
							</div>
						</div>
					{/foreach}
					<div class="col-sm-12">
						<div class="account border-bottom{if !$selectedAccountId || !is_numeric($selectedAccountId)} active{/if}">
							<label class="radio-inline">
								<input class="account-select" type="radio" name="account_id" value="new"{if !$selectedAccountId || !is_numeric($selectedAccountId)} checked="checked"{/if}{if $inExpressCheckout} disabled="disabled" class="disabled"{/if}>
								{lang key='orderForm.createAccount'}
							</label>
						</div>
					</div>
				</div>
			{else}
				<div id="containerExistingUserSignin">
					<div class="alert alert-danger w-hidden" id="existingLoginMessage"></div>
					<div class="row align-items-center">
						<div class="col-sm-5 pr-0">
							<div class="form-group mb-0">
								<input type="text" name="loginemail" id="inputLoginEmail" class="field form-control" placeholder="{$LANG.orderForm.emailAddress}" value="{$loginemail}">
							</div>
						</div>
						<div class="col-sm-5 pr-0">
							<div class="form-group mb-0">
								<input type="password" name="loginpassword" id="inputLoginPassword" class="field form-control" placeholder="{$LANG.clientareapassword}">
							</div>
						</div>
						<div class="col-sm-2">
							<button type="button" id="btnExistingLogin" class="btn btn-primary btn-small w-100 d-block">
								<span id="existingLoginButton">{lang key='login'}</span>
								<span id="existingLoginPleaseWait" class="w-hidden">{lang key='pleasewait'}</span>
							</button>
						</div>
					</div>
					{include file="orderforms/standard_cart/linkedaccounts.tpl" linkContext="checkout-existing"}
				</div>
			{/if}
		  
		  </div>
		</div>
	  </div>
	  
	  {if $custtype === 'existing' || (is_numeric($selectedAccountId) && $selectedAccountId > 0) || ($loggedin && $accounts->count() > 0 && $selectedAccountId !== 'new')}
	  
	  {else}
	  <div class="already__registered__card">
		<div class="already__registered__card__header" id="registercard">
			<button class="already__registered__card__title d-flex align-items-center collapsed" type="button" data-toggle="collapse" data-target="#already__registered__wrapper__register" aria-expanded="false" aria-controls="already__registered__wrapper__register">
			  <span class="cursor"></span><span class="coodiv-text-11 font-weight-600">{$LANG.orderForm.createAccount}</span>
			</button>
		</div>
		
		<div id="already__registered__wrapper__register" class="collapse" aria-labelledby="registercard" data-parent="#alreadyRegisteredAccordion">
		  <div class="already__registered__card__body">
		  <div id="containerNewUserSignup">

			<div {if $loggedin}class="w-hidden"{/if}>
				{include file="orderforms/standard_cart/linkedaccounts.tpl" linkContext="checkout-new"}
			</div>

			<h6 class="d-flex coodiv-text-9 font-weight-600 mb-5">{$LANG.orderForm.personalInformation}</h6>
			

			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.firstName}</span>
						<input type="text" name="firstname" id="inputFirstName" class="field form-control" value="{$clientsdetails.firstname}" autofocus>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.lastName}</span>
						<input type="text" name="lastname" id="inputLastName" class="field form-control" value="{$clientsdetails.lastname}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.emailAddress}</span>
						<input type="email" name="email" id="inputEmail" class="field form-control" value="{$clientsdetails.email}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.phoneNumber}</span>
						<input type="tel" name="phonenumber" id="inputPhone" class="field form-control" value="{$clientsdetails.phonenumber}">
					</div>
				</div>
			</div>
			<h6 class="d-flex coodiv-text-9 font-weight-600 mb-5">{$LANG.orderForm.billingAddress}</h6>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})</span>
						<input type="text" name="companyname" id="inputCompanyName" class="field form-control" value="{$clientsdetails.companyname}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.streetAddress}</span>
						<input type="text" name="address1" id="inputAddress1" class="field form-control" value="{$clientsdetails.address1}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.streetAddress2}</span>
						<input type="text" name="address2" id="inputAddress2" class="field form-control" value="{$clientsdetails.address2}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.city}</span>
						<input type="text" name="city" id="inputCity" class="field form-control" value="{$clientsdetails.city}">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.state}</span>
						<input type="text" name="state" id="inputState" class="field form-control" value="{$clientsdetails.state}">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.postcode}</span>
						<input type="text" name="postcode" id="inputPostcode" class="field form-control" value="{$clientsdetails.postcode}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareacountry}</span>
						<select name="country" id="inputCountry" class="field form-control">
							{foreach $countries as $countrycode => $countrylabel}
								<option value="{$countrycode}"{if (!$country && $countrycode == $defaultcountry) || $countrycode eq $country} selected{/if}>
									{$countrylabel}
								</option>
							{/foreach}
						</select>
					</div>
				</div>
				{if $showTaxIdField}
					<div class="col-sm-12">
						<div class="form-group">
							<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$taxLabel} ({$LANG.orderForm.optional})</span>
							<input type="text" name="tax_id" id="inputTaxId" class="field form-control" value="{$clientsdetails.tax_id}">
						</div>
					</div>
				{/if}
			</div>
			
			{if $customfields}
				<h6 class="d-flex coodiv-text-9 font-weight-600 mb-5">{$LANG.orderadditionalrequiredinfo}</h6>
				<div class="field-container">
					<div class="row">
						{foreach $customfields as $customfield}
							<div class="col-sm-6">
								<div class="form-group">
									<span for="customfield{$customfield.id}" class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$customfield.name} {$customfield.required}</span>
									{$customfield.input}
									{if $customfield.description}
										<span class="field-help-text">
											{$customfield.description}
										</span>
									{/if}
								</div>
							</div>
						{/foreach}
					</div>
				</div>
			{/if}
			
			
			<div id="containerNewUserSecurity">
				<h6 class="d-flex coodiv-text-9 font-weight-600 mb-5">{$LANG.orderForm.accountSecurity}</h6>
				<div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} w-hidden{/if}">
					<div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareapassword}</span>
							<input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field form-control" {if $remote_auth_prelinked} value="{$password}"{/if}>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareaconfirmpassword}</span>
							<input type="password" name="password2" id="inputNewPassword2" class="field form-control" {if $remote_auth_prelinked} value="{$password}"{/if}>
						</div>
					</div>
					<div class="col-sm-6">
						<button type="button" class="btn btn-primary-outline-light btn-with-icon btn-small generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
							<svg class="options__icons icon__lock">
								<use xlink:href="#icon-lock"></use>
							</svg>
							{$LANG.generatePassword.btnLabel}
						</button>
					</div>
					<div class="col-sm-6">
						<div class="password-strength-meter">
							<div class="progress">
								<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
								</div>
							</div>
							<p class="text-center small text-muted" id="passwordStrengthTextLabel">{$LANG.pwstrength}: {$LANG.pwstrengthenter}</p>
						</div>
					</div>
				</div>
				{if $securityquestions}
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareasecurityquestion}</span>
								<select name="securityqid" id="inputSecurityQId" class="field form-control">
									<option value=""></option>
									{foreach $securityquestions as $question}
										<option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
											{$question.question}
										</option>
									{/foreach}
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareasecurityanswer}</span>
								<input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control">
							</div>
						</div>
					</div>
				{/if}
			</div>
		</div>
		</div>
		</div>
	</div>
	{/if}	  
	</div>

	{if $domainsinorder}
		<div class="field-container mt-10">
			<div class="row justify-content-start mb-5">
				<div class="col-md-10 col-12">
					<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.domainregistrantinfo}</h6> 
				</div>
			</div>
			<div class="default__shadow__panel">
				<div class="default__shadow__panel__body">
				
					<p class="coodiv-text-11 font-weight-400 mb-5">{$LANG.orderForm.domainAlternativeContact}</p>
					
					<div class="form-group">
						<select name="contact" id="inputDomainContact" class="field form-control">
							<option value="">{$LANG.usedefaultcontact}</option>
							{foreach $domaincontacts as $domcontact}
								<option value="{$domcontact.id}"{if $contact == $domcontact.id} selected{/if}>
									{$domcontact.name}
								</option>
							{/foreach}
							<option value="addingnew"{if $contact == "addingnew"} selected{/if}>
								{$LANG.clientareanavaddcontact}...
							</option>
						</select>
					</div>
					<div {if $contact neq "addingnew"}class="w-hidden"{/if}>
					
						<div class="row" id="domainRegistrantInputFields">
							<div class="col-sm-6">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.firstName}</span>
									<input type="text" name="domaincontactfirstname" id="inputDCFirstName" class="field form-control" value="{$domaincontact.firstname}">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.lastName}</span>
									<input type="text" name="domaincontactlastname" id="inputDCLastName" class="field form-control" value="{$domaincontact.lastname}">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.emailAddress}</span>
									<input type="email" name="domaincontactemail" id="inputDCEmail" class="field form-control" value="{$domaincontact.email}">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.phoneNumber}</span>
									<input type="tel" name="domaincontactphonenumber" id="inputDCPhone" class="field form-control" value="{$domaincontact.phonenumber}">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})</span>
									<input type="text" name="domaincontactcompanyname" id="inputDCCompanyName" class="field form-control" value="{$domaincontact.companyname}">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.streetAddress}</span>
									<input type="text" name="domaincontactaddress1" id="inputDCAddress1" class="field form-control" value="{$domaincontact.address1}">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.streetAddress2}</span>
									<input type="text" name="domaincontactaddress2" id="inputDCAddress2" class="field form-control" value="{$domaincontact.address2}">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.city}</span>
									<input type="text" name="domaincontactcity" id="inputDCCity" class="field form-control" value="{$domaincontact.city}">
								</div>
							</div>
							<div class="col-sm-5">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.state}</span>
									<input type="text" name="domaincontactstate" id="inputDCState" class="field form-control" value="{$domaincontact.state}">
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.postcode}</span>
									<input type="text" name="domaincontactpostcode" id="inputDCPostcode" class="field form-control" placeholder="{$LANG.orderForm.postcode}" value="{$domaincontact.postcode}">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.postcode}</span>
									<select name="domaincontactcountry" id="inputDCCountry" class="field form-control">
										{foreach $countries as $countrycode => $countrylabel}
											<option value="{$countrycode}"{if (!$domaincontact.country && $countrycode == $defaultcountry) || $countrycode eq $domaincontact.country} selected{/if}>
												{$countrylabel}
											</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.postcode}</span>
									<input type="text" name="domaincontacttax_id" id="inputDCTaxId" class="field form-control" placeholder="{$taxLabel} ({$LANG.orderForm.optional})" value="{$domaincontact.tax_id}">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{/if}
		
		<div id="applyCreditContainer" class="default__shadow__panel {if !$canUseCreditOnCheckout} w-hidden{/if}" data-apply-credit="{$applyCredit}">
			<div class="default__shadow__panel__body">
				<div class="row justify-content-start mb-5">
					<div class="col-md-10 col-12">
						<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.statscreditbalance}</h6> 
						<p class="coodiv-text-12 font-weight-300">{lang key='cart.availableCreditBalance' amount=$creditBalance}</p>
					</div>
				</div>

				<label class="radio mb-3">
					<input id="useCreditOnCheckout" type="radio" name="applycredit" value="1"{if $applyCredit} checked{/if}>
					<span id="spanFullCredit"{if !($creditBalance->toNumeric() >= $total->toNumeric())} class="w-hidden"{/if}>
						{lang key='cart.applyCreditAmountNoFurtherPayment' amount=$total}
					</span>
					<span id="spanUseCredit"{if $creditBalance->toNumeric() >= $total->toNumeric()} class="w-hidden"{/if}>
						{lang key='cart.applyCreditAmount' amount=$creditBalance}
					</span>
				</label>
				<label class="radio">
					<input id="skipCreditOnCheckout" type="radio" name="applycredit" value="0"{if !$applyCredit} checked{/if}>
					{lang key='cart.applyCreditSkip' amount=$creditBalance}
				</label>
			</div>
		</div>


		{if !$inExpressCheckout}
			<div id="paymentGatewaysContainer" class="form-group field-container">
				<div class="row justify-content-start mb-5">
					<div class="col-md-10 col-12">
						<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.orderpaymentmethod}</h6> 
						<p class="coodiv-text-12 font-weight-300">{$LANG.orderForm.preferredPaymentMethod}</p>
					</div>
				</div>
				<div class="checkout__payment__gateway__radios__wrapper default__shadow__panel">
					{foreach $gateways as $gateway}
						<label class="checkout__payment__gateway__radios panel__check__cart__group__label d-flex align-items-center justify-content-start position-relative">
							<div class="cercle__input__radio input">
							<input type="radio" name="paymentmethod" value="{$gateway.sysname}" data-payment-type="{$gateway.payment_type}" data-show-local="{$gateway.show_local_cards}" data-remote-inputs="{$gateway.uses_remote_inputs}" class="payment-methods {if $gateway.type eq "CC"} is-credit-card{/if}" {if $selectedgateway eq $gateway.sysname} checked{/if}/>
							<span class="payment__gateway__name coodiv-text-11 font-weight-600">{$gateway.name}</span>								

							{assign var=gatewayIcon value=$gateway.sysname|lower|replace:" ":"-"}
							<span class="payment__gateway__icon" data-gateway-icon-name="{$gatewayIcon}">
								{if file_exists("templates/$template/assets/gateways/$gatewayIcon.tpl")}
									{include file="$template/assets/gateways/$gatewayIcon.tpl"}
								{/if}
							</span>
							
							</div>
						</label>
					{/foreach}
				</div>
			</div>
			<div class="alert alert-danger text-center gateway-errors w-hidden"></div>
			
			<div id="paymentGatewayInput"></div>

			<div {if $selectedgatewaytype neq "CC"}class="w-hidden"{/if} id="creditCardInputFields">
				<div class="row justify-content-start mb-5">
					<div class="col-md-10 col-12">
						<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.orderForm.paymentDetails}</h6> 
					</div>
				</div>
				
				<div class="default__shadow__panel">
					<div class="default__shadow__panel__body">
						{if $client}
							<div id="existingCardsContainer" class="existing-cc-grid existing__payment__card__wrapper">
								{include file="orderforms/$carttpl/includes/existing-paymethods.tpl"}
							</div>
						{/if}
						
						<div class="row cvv-input" id="existingCardInfo">
							<div class="col-lg-3 col-sm-4">
								<div class="form-group">
									<div class="d-flex align-items-center pl-1 pb-2">
									<span class="coodiv-text-12 font-weight-400">{$LANG.creditcardcvvnumber}</span>
									<button type="button" class="btn__what__is__this" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
										<i class="fas fa-question-circle"></i>
									</button>
									</div>
									<input type="tel" name="cccvv" id="inputCardCVV2" class="field form-control" placeholder="{$LANG.creditcardcvvnumbershort}" autocomplete="cc-cvc">
									<span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
								</div>
							</div>
						</div>

						<ul class="mb-6">
							<li>
								<label class="radio-inline">
									<input type="radio" name="ccinfo" value="new" id="new" {if !$client || $client->payMethods->count() === 0} checked="checked"{/if} />
									&nbsp;
									{lang key='creditcardenternewcard'}
								</label>
							</li>
						</ul>
						

						<div class="row" id="newCardInfo">
							<div id="cardNumberContainer" class="col-sm-6 new-card-container">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.orderForm.cardNumber}</span>
									<input type="tel" name="ccnumber" id="inputCardNumber" class="field form-control cc-number-field" placeholder="1234 1234 1234 1234" autocomplete="cc-number" data-message-unsupported="{lang key='paymentMethodsManage.unsupportedCardType'}" data-message-invalid="{lang key='paymentMethodsManage.cardNumberNotValid'}" data-supported-cards="{$supportedCardTypes}" />
									<span class="field-error-msg"></span>
								</div>
							</div>
							<div class="col-sm-3 new-card-container">
								<div class="form-group">
									<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.clientareadomainexpirydate}</span>
									<input type="tel" name="ccexpirydate" id="inputCardExpiry" class="field form-control" placeholder="MM / YY{if $showccissuestart} ({$LANG.creditcardcardexpires}){/if}" autocomplete="cc-exp">
									<span class="field-error-msg">{lang key="paymentMethodsManage.expiryDateNotValid"}</span>
								</div>
							</div>
							<div class="col-sm-3" id="cvv-field-container">
								<div class="form-group">
									<div class="d-flex align-items-center pl-1 pb-2">
									<span class="coodiv-text-12 font-weight-400">{$LANG.creditcardcvvnumber}</span>
									<button type="button" class="btn__what__is__this" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
										<i class="fas fa-question-circle"></i>
									</button>
									</div>
									<input type="tel" name="cccvv" id="inputCardCVV" class="field form-control" placeholder="{$LANG.creditcardcvvnumbershort}" autocomplete="cc-cvc">
									<span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
								</div>
							</div>
							{if $showccissuestart}
								<div class="col-sm-3 col-sm-offset-6 new-card-container offset-sm-6">
									<div class="form-group">
										<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.creditcardcardstart}</span>
										<input type="tel" name="ccstartdate" id="inputCardStart" class="field form-control" placeholder="MM / YY" autocomplete="cc-exp">
									</div>
								</div>
								<div class="col-sm-3 new-card-container">
									<div class="form-group">
										<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.creditcardcardissuenum}</span>
										<input type="tel" name="ccissuenum" id="inputCardIssue" class="field form-control">
									</div>
								</div>
							{/if}
						</div>
						
						<div id="newCardSaveSettings">
							<div class="row form-group new-card-container">
								<div id="inputDescriptionContainer" class="col-md-6">
									<div class="form-group">
										<span class="d-block coodiv-text-12 font-weight-400 pl-1 pb-2">{$LANG.paymentMethods.descriptionInput} {$LANG.paymentMethodsManage.optional}</span>
										<input type="text" class="field form-control" id="inputDescription" name="ccdescription" autocomplete="off" value="" />
									</div>
								</div>
								{if $allowClientsToRemoveCards}
									<div id="inputNoStoreContainer" class="col-md-6" style="line-height: 32px;">
										<input type="hidden" name="nostore" value="1">
										<input type="checkbox" class="toggle-switch-success no-icheck" data-size="mini" checked="checked" name="nostore" id="inputNoStore" value="0" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
										<label for="inputNoStore" class="checkbox-inline no-padding">
											&nbsp;&nbsp;
											{$LANG.creditCardStore}
										</label>
									</div>
								{/if}
							</div>
						</div>
						
					</div>
				</div>
			</div>
			{else}
			{if $expressCheckoutOutput}
				{$expressCheckoutOutput}
			{else}
				<p align="center">
					{lang key='paymentPreApproved' gateway=$expressCheckoutGateway}
				</p>
			{/if}
		{/if}

		
		<div class="field-container mt-8">
			<div class="row justify-content-start mb-5">
				<div class="col-md-10 col-12">
					<h6 class="field__title coodiv-text-7 font-weight-300 mb-0">{$LANG.ordertos}</h6> 
				</div>
			</div>
			<div class="default__shadow__panel">
				<div class="default__shadow__panel__body">
				
				{if $accepttos}
				<p>
					<label class="checkbox-inline one__lign__checkbox">
						<input type="checkbox" name="accepttos" id="accepttos" />
						{$LANG.ordertosagreement}  <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
					</label>
				</p>
				{/if}
				
				{if $shownotesfield}
					<div class="shownotesfield mt-5">
						<div class="row justify-content-between align-items-center mb-3">
							<div class="col-auto">
								<h6 class="field__title coodiv-text-11 font-weight-500 mb-0">{$LANG.orderForm.additionalNotes}</h6> 
							</div>
							<div class="col-auto">
								<h6 class="coodiv-text-12 sub-color font-weight-300 mb-0">(optional)</h6> 
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group mb-2">
									<input name="notes" class="field form-control" value="{$orderNotes}" />
								</div>
								<p class="coodiv-text-12 sub-color font-weight-300">{$LANG.ordernotesdescription}</p>
							</div>
						</div>
					</div>
				{/if}
				</div>
			</div>
		</div>
		
		<div class="row justify-content-start">
			{if $showMarketingEmailOptIn}
				<div class="col-md-6 col-12">
					<div class="marketing-email-optin default__shadow__panel">
						<div class="default__shadow__panel__body text-center">
						<h6 class="field__title coodiv-text-7 font-weight-300">{lang key='emailMarketing.joinOurMailingList'}</h6> 
						<p class="coodiv-text-12 font-weight-300">{$marketingEmailOptInMessage}</p>
						<label class="switch__box__on__off" for="marketingoptin">
						<span class="switch__box__on__off__title">{lang key='emailMarketing.joinOurMailingList'}</span>
						<input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
						</label>
						</div>
					</div>
				</div>
			{/if}
			{if $captcha}
				<div class="col-md-6 col-12">
					{include file="$template/includes/captcha.tpl"}
				</div>
			{/if}
		</div>
	</form>
	{if $servedOverSsl}
		<div class="alert alert-warning custom-alert-text " id="overdueInvoicesPanel" role="alert">
		  <h6 class="alert-title coodiv-text-10 mb-1">{$LANG.store.ssl.shared.secureTransactions}</h6>
		  <p>{$LANG.ordersecure} (<strong>{$ipaddress}</strong>) {$LANG.ordersecure2}</p>
		</div>
	{/if}
</div>



