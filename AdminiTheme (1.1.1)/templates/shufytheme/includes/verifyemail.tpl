{if $showEmailVerificationBanner}
	<div class="alert alert-warning alert-dismissible fade show custom-alert-text email-verification mb-0" id="overdueInvoicesPanel" role="alert">
	  <h6 class="alert-title coodiv-text-10 mb-1">{lang key='clientregisterverify'}</h6>
	  <p>{lang key='verifyEmailAddress'}</p>		  
	  <div class="alert__options">
		  <button id="btnResendVerificationEmail" class="btn btn-sm btn-light btn-block btn-resend-verify-email btn-action" data-email-sent="{lang key='emailSent'}" data-error-msg="{lang key='error'}" data-uri="{routePath('user-email-verification-resend')}">
			<span class="loader w-hidden"><i class="fa fa-spinner fa-spin"></i></span>
			{lang key='resendEmail'}
		  </button>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fal fa-times"></i></button>
	  </div>
	</div>
{/if}


