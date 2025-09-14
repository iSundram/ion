<div class="mb-4">
	<h6 class="coodiv-text-6 font-weight-bold mb-0">{lang key='pwreset'}</h6>
	<p class="coodiv-text-10 font-weight-400">{lang key='pwresetemailneeded'}</p>
</div>									
{if $errorMessage}
    {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
{/if}
<form method="post" action="{routePath('password-reset-validate-email')}" role="form">
    <input type="hidden" name="action" value="reset" />
	<div class="form-group">
		<label for="inputEmail" class="form-control-label">{lang key='loginemail'}</label>
		<div class="input-group">
			<input type="email" class="form-control" name="email" id="inputEmail" placeholder="name@example.com" autofocus required>
		</div>
	</div>
    {if $captcha->isEnabled()}
        <div class="text-center margin-bottom">
            {include file="$template/includes/captcha.tpl"}
        </div>
    {/if}
    <div class="form-group text-center mb-0">
        <button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)} d-block w-100">
            {lang key='pwresetsubmit'}
        </button>
    </div>
</form>
