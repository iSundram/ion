<script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script>
    window.langPasswordStrength = "{lang key='pwstrength'}";
    window.langPasswordWeak = "{lang key='pwstrengthweak'}";
    window.langPasswordModerate = "{lang key='pwstrengthmoderate'}";
    window.langPasswordStrong = "{lang key='pwstrengthstrong'}";
    jQuery(document).ready(function() {
        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
    });
</script>
<div class="row justify-content-start">
	<div class="col-md-6 col-12">
		{include file="$template/includes/flashmessage.tpl"}
		<div class="card">
			<div class="card__header">
				<h6 class="coodiv-text-11 mb-0">{lang key='sidebars.viewAccount.changePassword'}</h6>
			</div>
			<form class="using-password-strength page__user__password__form" method="post" action="{routePath('user-password')}" role="form">
				<div class="card__body">
					<input type="hidden" name="submit" value="true" />
					<div class="form-group">
						<label for="inputExistingPassword" class="col-form-label">{lang key='existingpassword'}</label>
						<input type="password" class="form-control" name="existingpw" id="inputExistingPassword" autocomplete="off" />
					</div>
					<div id="newPassword1" class="form-group has-feedback">
						<label for="password" class="form-control-label d-flex align-items-center justify-content-between">{lang key='clientareapassword'}  <span class="small" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</span></label>
						<div class="input-control position-relative">
							<input type="password" name="newpw" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
							{include file="$template/includes/pwstrength.tpl"}
							<button title="{lang key='generatePassword.btnLabel'}" type="button" class="generate-pswrd-button generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
								<i class="fal fa-lock"></i>
							</button>
							<div class="paswrd__stenth__bar progress">
								<div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar"></div>
							</div>
						</div>
					</div>
					<div id="newPassword2" class="form-group has-feedback">
						<label for="inputNewPassword2" class="col-form-label">{lang key='confirmnewpassword'}</label>
						<input type="password" class="form-control" name="confirmpw" id="inputNewPassword2" autocomplete="off" />
						<div class="input__pass__msg" id="inputNewPassword2Msg"></div>
					</div>
				</div>
				<div class="card__footer d-flex align-items-center justify-content-end gap-10">
					<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" />
					<input class="btn btn-sm btn-primary" type="submit" value="{lang key='clientareasavechanges'}" />
				</div>
			</form>
		</div>
	</div>
</div>