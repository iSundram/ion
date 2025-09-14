{if $showSsoSetting}
	{include file="$template/includes/alert.tpl" type="success" msg="{lang key='sso.summary'}"}
	<div class="card">
		<div class="card__header">
			<h3 class="coodiv-text-10 mb-0">{lang key='sso.title'}</h3>
		</div>
        <div class="card__body">
            <form id="frmSingleSignOn">
                <input type="hidden" name="token" value="{$token}" />
                <input type="hidden" name="action" value="security" />
                <input type="hidden" name="toggle_sso" value="1" />
                <div class="p-2">
                    <input type="checkbox" name="allow_sso" class="toggle-switch-success" id="inputAllowSso"{if $isSsoEnabled} checked{/if}>
                    &nbsp;
                    <span id="ssoStatusTextEnabled"{if !$isSsoEnabled} style="display: none;"{/if}>
                        {lang key='sso.enabled'}
                    </span>
                    <span id="ssoStatusTextDisabled"{if $isSsoEnabled} style="display: none;"{/if}>
                        {lang key='sso.disabled'}
                    </span>
                </div>
            </form>

            <p class="coodiv-text-11">{lang key='sso.disablenotice'}</p>
        </div>
    </div>
{/if}
