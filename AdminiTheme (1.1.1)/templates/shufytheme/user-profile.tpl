{include file="$template/includes/flashmessage.tpl"}

<div class="card">
	<div class="card__header">
		<h6 class="coodiv-text-11 mb-0">{lang key='userProfile.profile'}</h6>
	</div>
	<form class="page__user__profile__form" method="post" action="{routePath('user-profile-save')}">
		<div class="card__body">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="inputFirstName" class="col-form-label">
							{lang key='clientareafirstname'}
						</label>
						<input
							type="text"
							name="firstname"
							id="inputFirstName"
							value="{$user->firstName}"
							class="form-control"
							{if in_array('firstname', $uneditableFields)}disabled="disabled"{/if}
						>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label for="inputLastName" class="col-form-label">
							{lang key='clientarealastname'}
						</label>
						<input
							type="text"
							name="lastname"
							id="inputLastName"
							value="{$user->lastName}"
							class="form-control"
							{if in_array('lastname', $uneditableFields)}disabled="disabled"{/if}
						>
					</div>
				</div>
			</div>
		</div>
		<div class="card__footer d-flex align-items-center justify-content-end gap-10">
			<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" />
			<input class="btn btn-sm btn-primary" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
		</div>
	</form>
 </div>


<div class="card">
	<div class="card__header">
		<h6 class="coodiv-text-11 mb-0">{lang key='userProfile.changeEmail'}</h6>
		{if $user->needsToCompleteEmailVerification()}
			<span class="label label-default">{lang key='userProfile.notVerified'}</span>
		{elseif $user->emailVerified()}
			<span class="label label-success">{lang key='userProfile.verified'}</span>
		{/if}
	</div>
	<form class="page__user__profile__form" method="post" action="{routePath('user-profile-email-save')}">
		<div class="card__body">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="inputEmail" class="col-form-label">
							{lang key='clientareaemail'}
						</label>
						<input
							type="email"
							name="email"
							id="inputEmail"
							value="{$user->email}"
							class="form-control"
							{if in_array('email', $uneditableFields)}disabled="disabled"{/if}
						>
					</div>
				</div>
			</div>
		</div>
		<div class="card__footer d-flex align-items-center justify-content-end gap-10">
			<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" />
			<input class="btn btn-sm btn-primary" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
		</div>
	</form>
</div>
