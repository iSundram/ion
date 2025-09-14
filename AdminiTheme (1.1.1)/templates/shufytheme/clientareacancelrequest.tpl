<div class="tab__header mb-8">
	<h3 class="coodiv-text-8 mb-0">{lang key='clientareacancelrequestbutton'}</h3>
	<p class="coodiv-text-11 font-weight-400">{lang key='clientareacancelrequest'}</p>
</div>

{if $invalid}
{include file="$template/includes/alert.tpl" type="error" msg="{lang key='clientareacancelinvalid'}" textcenter=true}
	<p class="text-center">
		<a href="clientarea.php?action=productdetails&amp;id={$id}" class="btn btn-primary">{lang key='clientareabacklink'}</a>
	</p>
{elseif $requested}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='clientareacancelconfirmation'}" textcenter=true}

    <p class="text-center">
        <a href="clientarea.php?action=productdetails&amp;id={$id}" class="btn btn-primary">{lang key='clientareabacklink'}</a>
    </p>
{else}
    {if $error}
        {include file="$template/includes/alert.tpl" type="error" errorshtml="<li>{lang key='clientareacancelreasonrequired'}</li>"}
    {/if}
	
	<div class="shadow__card">
		<div class="card__header">
			<h6 class="coodiv-text-11 mb-0">{lang key='clientareacancelproduct'}</h6>
		</div>
		
		<form method="post" action="{$smarty.server.PHP_SELF}?action=cancel&amp;id={$id}" class="form-stacked">
			<div class="card__body">
				<h6 class="coodiv-text-11 font-weight-400 mb-0">{$groupname} - {$productname}</h6>
				<p class="coodiv-text-12">{if $domain} ({$domain}){/if}</p>
				<input type="hidden" name="sub" value="submit" />
				<fieldset class="mt-7">
					<div class="form-group">
						<label class="col-form-label" for="cancellationreason">{lang key='clientareacancelreason'}</label>
						<textarea name="cancellationreason" id="cancellationreason" class="form-control fullwidth" rows="6"></textarea>
					</div>
					
					<div class="form-group">
						<label class="col-form-label" for="type">{lang key='clientareacancellationtype'}</label>
						<select name="type" id="type" class="form-control">
							<option value="Immediate">{lang key='clientareacancellationimmediate'}</option>
							<option value="End of Billing Period">{lang key='clientareacancellationendofbillingperiod'}</option>
						</select>
					</div>

					{if $domainid}
						<div class="alert alert-warning custom-alert-text">
							<h6 class="coodiv-text-11">{lang key='cancelrequestdomain'}</h6>
							<p class="coodiv-text-12 font-weight-400">{"{lang key='cancelrequestdomaindesc'}"|sprintf2:$domainnextduedate:$domainprice:$domainregperiod}</p>
							<div class="form-group mb-1">
								<label for="canceldomain" class="coodiv-check-input d-flex pl-7 mt-4">
									<input type="checkbox" class="coodiv-check-input-click" name="canceldomain" id="canceldomain">
									<span class="checkbox mr-2"></span>
									<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">{lang key='cancelrequestdomainconfirm'}</p>
								</label>
							</div>
						</div>
					{/if}
				</fieldset>
			</div>
			<div class="card__footer d-flex align-items-center justify-content-end gap-10">
				<a href="clientarea.php?action=productdetails&id={$id}" class="btn btn-sm btn-default">{lang key='cancel'}</a>
				<button type="submit" class="btn btn-sm btn-danger">{lang key='clientareacancelrequestbutton'}</button>
			</div>
		</form>
	</div>
	




{/if}
