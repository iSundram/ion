{if $sent}
	{include file="$template/includes/alert.tpl" type="success" msg="{lang key='contactsent'}" textcenter=true}
{/if}
{if $errormessage}
	{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}
<div class="row justify-content-center">
	<div class="col-md-8 col-12">
		<div class="card mb-4">
			<div class="card__header">
				<h3 class="coodiv-text-8 mb-0">{lang key='contactus'}</h3>
				<p class="coodiv-text-11 font-weight-400">{lang key='readyforquestions'}</p>
			</div>
			{if !$sent}
				<form method="post" action="contact.php" role="form">
					<div class="card__body">
					<input type="hidden" name="action" value="send" />
						<div class="form-group">
							<label for="inputName" class="col-form-label">{lang key='supportticketsclientname'}</label>
							<input type="text" name="name" value="{$name}" class="form-control" id="inputName" />
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-form-label">{lang key='supportticketsclientemail'}</label>
							<input type="email" name="email" value="{$email}" class="form-control" id="inputEmail" />
						</div>
						<div class="form-group">
							<label for="inputSubject" class="col-form-label">{lang key='supportticketsticketsubject'}</label>
							<input type="text" name="subject" value="{$subject}" class="form-control" id="inputSubject" />
						</div>
						<div class="form-group">
							<label for="inputMessage" class="col-form-label">{lang key='contactmessage'}</label>
							<textarea name="message" rows="7" class="form-control" id="inputMessage">{$message}</textarea>
						</div>
						{if $captcha}
							<div class="text-center margin-bottom">
								{include file="$template/includes/captcha.tpl"}
							</div>
						{/if}
					</div>
					<div class="card__footer d-flex align-items-center justify-content-end">
						<button type="submit" class="btn btn-sm btn-primary{$captcha->getButtonClass($captchaForm)}">{lang key='contactsend'}</button>
					</div>
				</form>
			{/if}
		</div>
	</div>
</div>
