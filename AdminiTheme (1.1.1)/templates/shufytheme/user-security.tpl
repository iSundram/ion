{include file="$template/includes/flashmessage.tpl"}


{if $linkableProviders}
    <div class="card">
		<div class="card__header">
			<h6 class="coodiv-text-11 mb-0">{lang key='remoteAuthn.titleLinkedAccounts'}</h6>
		</div>
        <div class="card__body">
            {include file="$template/includes/linkedaccounts.tpl" linkContext="clientsecurity" }
            <br />
            {include file="$template/includes/linkedaccounts.tpl" linkContext="linktable" }
            <br />
        </div>
    </div>
{/if}

{if $securityQuestions->count() > 0}
<div class="card">
	<div class="card__header">
		<h6 class="coodiv-text-11 mb-0">{lang key='clientareanavsecurityquestions'}</h6>
	</div>
	<form method="post" action="{routePath('user-security-question')}">
		<div class="card-body">
		{if $user->hasSecurityQuestion()}
			<div class="form-group">
				<label for="inputCurrentAns" class="col-form-label">{$user->getSecurityQuestion()}</label>
				<input type="password" name="currentsecurityqans" id="inputCurrentAns" class="form-control" autocomplete="off" />
			</div>
		{/if}

		<div class="form-group">
			<label for="inputSecurityQid" class="col-form-label">{lang key='clientareasecurityquestion'}</label>
			<select name="securityqid" id="inputSecurityQid" class="form-control custom-select">
				{foreach $securityQuestions as $question}
					<option value="{$question->id}">
						{$question->question}
					</option>
				{/foreach}
			</select>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputSecurityAns1" class="col-form-label">{lang key='clientareasecurityanswer'}</label>
					<input type="password" name="securityqans" id="inputSecurityAns1" class="form-control" autocomplete="off" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputSecurityAns2" class="col-form-label">{lang key='clientareasecurityconfanswer'}</label>
					<input type="password" name="securityqans2" id="inputSecurityAns2" class="form-control" autocomplete="off" />
				</div>
			</div>
		</div>
		</div>
		<div class="card__footer d-flex align-items-center justify-content-end gap-10">
			<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" />
			<input class="btn btn-sm btn-primary" type="submit" name="submit" value="{lang key='clientareasavechanges'}" />
		</div>
	</form>
</div>
{/if}

{if $twoFactorAuthAvailable}
{if $twoFactorAuthRequired}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key="clientAreaSecurityTwoFactorAuthRequired"}"}
{else}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key="clientAreaSecurityTwoFactorAuthRecommendation"}"}
{/if}
<div class="card">
	<div class="card__header">
		<h6 class="coodiv-text-11 mb-0">{lang key='twofactorauth'}</h6>
	</div>
	<div class="card-body">
		<p class="coodiv-text-11 font-weight-400 twofa-config-link disable{if !$twoFactorAuthEnabled} w-hidden{/if}">
			{lang key='twofacurrently'} <strong>{lang key='enabled'|strtolower}</strong>
		</p>
		<p class="coodiv-text-11 font-weight-400 twofa-config-link enable{if $twoFactorAuthEnabled} w-hidden{/if}">
			{lang key='twofacurrently'} <strong>{lang key='disabled'|strtolower}</strong>
		</p>
	</div>
	<div class="card__footer d-flex align-items-center justify-content-start gap-10 border-top-0">
		<a href="{routePath('account-security-two-factor-disable')}" class="btn btn-sm btn-danger open-modal twofa-config-link disable{if !$twoFactorAuthEnabled} d-none{/if}" data-modal-title="{lang key='twofadisable'}" data-modal-class="twofa-setup" data-btn-submit-label="{lang key='twofadisable'}" data-btn-submit-color="danger" data-btn-submit-id="btnDisable2FA">
			{lang key='twofadisableclickhere'}
		</a>
		<a href="{routePath('account-security-two-factor-enable')}" class="btn btn-sm btn-success open-modal twofa-config-link enable{if $twoFactorAuthEnabled} d-none{/if}" data-modal-title="{lang key='twofaenable'}" data-modal-class="twofa-setup" data-btn-submit-id="btnEnable2FA">
			{lang key='twofaenableclickhere'}
		</a>
	</div>
</div>
{/if}
