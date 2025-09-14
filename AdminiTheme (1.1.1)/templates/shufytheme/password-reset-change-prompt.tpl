<div class="mb-4">
	<h6 class="coodiv-text-6 font-weight-bold mb-0">{lang key='pwreset'}</h6>
	<p class="coodiv-text-10 font-weight-400">{lang key='pwresetenternewpw'}</p>
</div>	
<form class="using-password-strength" method="POST" action="{routePath('password-reset-change-perform')}">
    <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />
	
    <div id="newPassword1" class="form-group has-feedback">
        <label class="control-label" for="inputNewPassword1">{lang key='newpassword'}</label>
        <input type="password" name="newpw" id="inputNewPassword1" class="form-control" autocomplete="off" />
    </div>

    <div id="newPassword2" class="form-group has-feedback">
        <label class="control-label" for="inputNewPassword2">{lang key='confirmnewpassword'}</label>
        <input type="password" name="confirmpw" id="inputNewPassword2" class="form-control" autocomplete="off" />
        <div id="inputNewPassword2Msg"></div>
    </div>

    <div class="form-group">
        <label class="control-label">{lang key='pwstrength'}</label>
        {include file="$template/includes/pwstrength.tpl"}
    </div>

    <div class="form-group">
        <div class="d-flex align-items-center gap-5 flex-column">
            <input class="btn btn-primary d-block w-100" type="submit" name="submit" value="{lang key='clientareasavechanges'}" />
            <input class="btn btn-default d-block w-100" type="reset" value="{lang key='cancel'}" />
        </div>
    </div>

</form>
