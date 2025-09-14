{if $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm)}
    <div class="coodiv__captcha__wrapper">
        {if $templatefile == 'homepage'}
            <div class="domainchecker-homepage-captcha">
        {/if}

        {if $captcha == "recaptcha"}
            <div id="google-recaptcha-domainchecker" class="form-group recaptcha-container mx-auto"></div>
        {elseif !in_array($captcha, ['invisible', 'recaptcha'])}
		<div class="default__shadow__panel">
			<div class="default__shadow__panel__body text-center">
				<h6 class="field__title coodiv-text-7 font-weight-300">{lang key="captchatitle"}</h6> 
				<p class="coodiv-text-12 font-weight-300">{lang key="captchaverify"}</p>            
				<div id="default-captcha-domainchecker" class="{if $filename == 'domainchecker'}input-group input-group-box {/if} pb-3">
					<div class="captcha__image__wrapper mb-4">
						<img id="inputCaptchaImage" data-src="{$systemurl}includes/verifyimage.php" src="{$systemurl}includes/verifyimage.php" align="middle" />
					</div>

					<div class="captcha__input__wrapper d-flex">
						<input id="inputCaptcha" type="text" name="code" maxlength="6" class="form-control {if $filename == 'register'}float-left{/if}" data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}"/>
					</div>
				</div>
			</div>
		</div>
        {/if}

        {if $templatefile == 'homepage'}
            </div>
        {/if}
    </div>
{/if}
