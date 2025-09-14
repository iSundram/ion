{if $errorMessageHtml}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errorMessageHtml}
{/if}

<script>
    var stateNotRequired = true;
    jQuery(document).ready(function() {
        WHMCS.form.register();
    });
</script>
<script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>

<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">
				{lang key='clientareachoosecontact'}
			</h6>
		</div>
	</div>
	<div class="card__body">
		<form role="form" method="post" action="{routePath('account-contacts')}">
			<div class="row align-items-center">
				<div class="col-md-6">
					<select name="contactid" id="inputContactId" onchange="submit()" class="form-control custom-select">
						{foreach $contacts as $contact}
							<option value="{$contact.id}">{$contact.name} - {$contact.email}</option>
						{/foreach}
						<option value="new" selected="selected">{lang key='clientareanavaddcontact'}</option>
					</select>
				</div>
				<div class="col-md-2">
					<button type="submit" class="btn btn-default btn-block btn-sm mt-2 mt-md-0">{lang key='go'}</button>
				</div>
			</div>
		</form>
	</div>
</div>
<form class="page__account__contacts__new__form" role="form" method="post" action="{routePath('account-contacts-new')}">
	<div class="card">
		<div class="card__header d-flex align-items-center justify-content-between">
			<div class="text">
				<h6 class="coodiv-text-11 mb-0">
					{lang key='clientareanavaddcontact'}
				</h6>
			</div>
		</div>
		<div class="card__body">
            <div class="row">
                <div class="col-md-6">

                    <div class="form-group">
                        <label for="inputFirstName" class="col-form-label">{lang key='clientareafirstname'}</label>
                        <input type="text" name="firstname" id="inputFirstName" value="{$formdata.firstname}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputLastName" class="col-form-label">{lang key='clientarealastname'}</label>
                        <input type="text" name="lastname" id="inputLastName" value="{$formdata.lastname}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputCompanyName" class="col-form-label">{lang key='clientareacompanyname'}</label>
                        <input type="text" name="companyname" id="inputCompanyName" value="{$formdata.companyname}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputEmail" class="col-form-label">{lang key='clientareaemail'}</label>
                        <input type="email" name="email" id="inputEmail" value="{$formdata.email}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputPhone" class="col-form-label">{lang key='clientareaphonenumber'}</label>
                        <input type="tel" name="phonenumber" id="inputPhone" value="{$formdata.phonenumber}" class="form-control" />
                    </div>

                    {if $showTaxIdField}
                        <div class="form-group">
                            <label for="inputTaxId" class="col-form-label">{lang key=$taxIdLabel}</label>
                            <input type="text" name="tax_id" id="inputTaxId" class="form-control" value="{$formdata.tax_id}" />
                        </div>
                    {/if}

                </div>
                <div class="col-md-6 col-12 float-right">

                    <div class="form-group">
                        <label for="inputAddress1" class="col-form-label">{lang key='clientareaaddress1'}</label>
                        <input type="text" name="address1" id="inputAddress1" value="{$formdata.address1}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputAddress2" class="col-form-label">{lang key='clientareaaddress2'}</label>
                        <input type="text" name="address2" id="inputAddress2" value="{$formdata.address2}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputCity" class="col-form-label">{lang key='clientareacity'}</label>
                        <input type="text" name="city" id="inputCity" value="{$formdata.city}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputState" class="col-form-label">{lang key='clientareastate'}</label>
                        <input type="text" name="state" id="inputState" value="{$formdata.state}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="inputPostcode" class="col-form-label">{lang key='clientareapostcode'}</label>
                        <input type="text" name="postcode" id="inputPostcode" value="{$formdata.postcode}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label class="col-form-label" for="country">{lang key='clientareacountry'}</label>
                        {$countriesdropdown}
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="card">
		<div class="card__header d-flex align-items-center justify-content-between">
			<div class="text">
				<h6 class="coodiv-text-11 mb-0">
					{lang key='clientareacontactsemails'}
				</h6>
			</div>
		</div>
        <div class="card__body">
            <div class="controls">
				 {foreach $formdata.emailPreferences as $emailType => $value}
                    <div class="form-group mb-1">
						<label for="email_preferences[{$emailType}]" class="coodiv-check-input d-flex">
							<input type="hidden" name="email_preferences[{$emailType}]" value="0">
							<input type="checkbox" class="coodiv-check-input-click" name="email_preferences[{$emailType}]" id="{$emailType}emails" value="1"{if $value} checked="checked"{/if} />
							<span class="checkbox mr-2"></span>
							<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">{lang key="clientareacontactsemails"|cat:$emailType}</p>
						</label>
					</div>
                {/foreach}
            </div>
        </div>
    </div>
	<div class="form-group form__btn__submit__group">	
		<input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
		<input class="btn btn-primary" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
    </div>

</form>
