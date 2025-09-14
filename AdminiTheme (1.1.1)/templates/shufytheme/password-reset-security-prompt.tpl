<div class="mb-4">
	<h6 class="coodiv-text-6 font-weight-bold mb-0">{lang key='pwreset'}</h6>
	<p class="coodiv-text-10 font-weight-400">{lang key='pwresetsecurityquestionrequired'}</p>
</div>	
{if $errorMessage}
    <p class="alert alert-danger text-center">
        {$errorMessage}
    </p>
{/if}
<form method="post" action="{routePath('password-reset-security-verify')}"  class="form-stacked">
	<div class="form-group">
		<label for="inputEmail" class="form-control-label">{$securityQuestion}</label>
		<div class="input-group">
			<input type="text" name="answer" class="form-control" id="inputAnswer" autofocus>
		</div>
	</div>
    <div class="form-group text-center">
        <button type="submit" class="btn btn-primary d-block w-100">{lang key='pwresetsubmit'}</button>
    </div>
</form>
