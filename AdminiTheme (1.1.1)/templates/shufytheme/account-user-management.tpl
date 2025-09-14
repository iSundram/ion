{include file="$template/includes/flashmessage.tpl"}

<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
		<h6 class="coodiv-text-11 mb-0">{lang key="navUserManagement"}</h6>
		<p class="coodiv-text-12 text-gray">{lang key="userManagement.usersFound" count=$users->count()}</p>
		</div>
		<a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modalInviteUser">{lang key="userManagement.inviteNewUser"}</a>
	</div>
	<div class="card__body py-0">
		<div class="user__management__table__wrapper__holder">
		{foreach $users as $user}
		<div class="row align-items-center justify-content-start user__management__table__wrapper">
			<div class="col-md-6 col-10 order-1">
				<div class="user__management__table__user__informations">
					<div class="user__management__table__user__avatar">
						<img src="https://www.gravatar.com/avatar/{$user->email|md5}" alt="image">
					</div>
					<div class="user__management__table__user__text">
						<div class="user__management__table__user__text__header">
						<h6 class="coodiv-text-9 font-weight-bold mb-0">{$user->first_name} {$user->last_name}</h6>
						{if $user->pivot->owner}
							<span class="label label-info mb-0 ml-2">{lang key="clientOwner"}</span>
						{/if}
						{if $user->hasTwoFactorAuthEnabled()}
							<i class="fas fa-shield active" data-toggle="tooltip" data-placement="right" title="{lang key='twoFactor.enabled'}"></i>
						{else}
							<i class="fas fa-shield disactive" data-toggle="tooltip" data-placement="right" title="{lang key='twoFactor.disabled'}"></i>
						{/if}
						</div>
						<p class="coodiv-text-12 font-weight-400 mb-0 mt-n1 text-gray">{$user->email}</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-12 order-md-2 order-12 d-md-flex d-none">
				<div class="user__management__table__user__last-login">
					<h6 class="coodiv-text-12 font-weight-500 mb-0">{lang key="userManagement.lastLogin"}:</h6>
					<p class="coodiv-text-12 font-weight-400 mb-0 mt-n1 text-gray">
						{if $user->pivot->hasLastLogin()}
							{$user->pivot->getLastLogin()->diffForHumans()}
						{else}
							{lang key='never'}
						{/if}
					</p>
				</div>
			</div> 
			<div class="col-md-2 col-2 d-flex justify-content-end align-items-center order-md-12 order-2">
				<div class="dropdown coodiv__default__dropdown">
					<button class="btn btn-sm btn-light" type="button" id="clientareamorelinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-ellipsis-h"></i>
					</button>
					<div class="dropdown-menu" aria-labelledby="clientareamorelinks" style="">
						<a class="dropdown-item btn-manage-permissions {if $user->pivot->owner}disabled{/if}" href="{routePath('account-users-permissions', $user->id)}">{lang key="userManagement.managePermissions"}</a>
						<a class="dropdown-item btn-remove-user {if $user->pivot->owner}disabled{/if}" href="#" data-id="{$user->id}">{lang key="userManagement.removeAccess"}</a>
					</div>
				</div>
			</div>
		</div>
		{/foreach}
		{if $invites->count() > 0}
		{foreach $invites as $invite}
		<div class="row align-items-center justify-content-start user__management__table__wrapper pending__table">
			<div class="col-md-6 col-12">
				<div class="user__management__table__user__informations">
					<div class="user__management__table__user__avatar">
						<img src="https://www.gravatar.com/avatar/{$invite->email|md5}" alt="image">
					</div>
					
					<div class="user__management__table__user__text">
						<div class="user__management__table__user__text__header">
						<h6 class="coodiv-text-9 font-weight-bold mb-0">{$invite->email}</h6>
						</div>
						<p class="coodiv-text-12 font-weight-400 mb-0 mt-n1 text-gray">{lang key="userManagement.pendingInvites"}</p>
					</div>
				</div>
			</div>
			<div class="col-md-2 col-12">
				<div class="user__management__table__user__last-login">
					<h6 class="coodiv-text-12 font-weight-500 mb-0">{lang key="userManagement.inviteSent"}:</h6>
					<p class="coodiv-text-12 font-weight-400 mb-0 mt-n1 text-gray">{$invite->created_at->diffForHumans()}</p>
				</div>
			</div>
			<div class="col-md-4 col-12 d-flex justify-content-end align-items-center">
				<form method="post" action="{routePath('account-users-invite-resend')}">
					<input type="hidden" name="inviteid" value="{$invite->id}">
					<div class="btn-group">
					<button type="button" class="btn btn-default btn-sm btn-cancel-invite" data-id="{$invite->id}">
						{lang key="userManagement.cancelInvite"}
					</button>
					<button type="submit" class="btn btn-primary btn-sm">
						{lang key="userManagement.resendInvite"}
					</button>
					</div>
				</form>
			</div>
		 </div>
		 {/foreach}
		 {/if}
		 </div>
	</div>
</div>
<p class="text-gray m-0 coodiv-text-12 font-weight-400">* {lang key="userManagement.accountOwnerPermissionsInfo"}</p>


<div class="modal fade" id="modalInviteUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
			 <form method="post" action="{routePath('account-users-invite')}">
				<div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">{lang key="userManagement.inviteNewUser"}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
				<div class="modal-body">
				<p class="coodiv-text-12 font-weight-500">{lang key="userManagement.inviteNewUserDescription"}</p>
				<div class="form-group">
					<input type="email" name="inviteemail" placeholder="name@example.com" class="form-control" value="{$formdata.inviteemail}">
				</div>
				
				<div class="d-block">
					<label class="form-check form-check-inline coodiv-check-input coodiv-radio-input-cercle d-flex">
						<input type="radio" class="form-check-input coodiv-check-input-click" name="permissions" value="all" checked="checked">
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">{lang key="userManagement.allPermissions"}</p>
					</label>
					<label class="form-check form-check-inline coodiv-check-input coodiv-radio-input-cercle d-flex">
						<input type="radio" class="form-check-input coodiv-check-input-click" name="permissions" value="choose">
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">{lang key="userManagement.choosePermissions"}</p>
					</label>
				</div>
				
				<div class="well mb-3 w-hidden mt-5" id="invitePermissions">
					{foreach $permissions as $permission}
						<div class="form-group mb-1">
							<label for="perms[{$permission.key}]" class="coodiv-check-input d-flex">
								<input type="checkbox" class="coodiv-check-input-click" name="perms[{$permission.key}]" value="1"/>
								<span class="checkbox mr-2"></span>
								<p class="coodiv-text-12 font-weight-400 mb-0 pl-3"><strong>{$permission.title}</Strong> {$permission.description}</p>
							</label>
						</div>
					{/foreach}
				</div>
				
				</div>
				<div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{lang key='paymentMethods.close'}</button>
                    <button type="submit" class="btn btn-primary">{lang key="userManagement.sendInvite"}</button>
                </div>
			</form>
        </div>
    </div>
</div>


<div class="card d-none">
    <div class="card-body">
        <h3 class="card-title">{lang key="userManagement.inviteNewUser"}</h3>

        <p>{lang key="userManagement.inviteNewUserDescription"}</p>

        <form method="post" action="{routePath('account-users-invite')}">
            <div class="form-group">
                <input type="email" name="inviteemail" placeholder="name@example.com" class="form-control" value="{$formdata.inviteemail}">
            </div>
            <div class="form-group">
                <label class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" name="permissions" value="all" checked="checked">
                    {lang key="userManagement.allPermissions"}
                </label>
                <label class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" name="permissions" value="choose">
                    {lang key="userManagement.choosePermissions"}
                </label>
            </div>
            <div class="well mb-3 w-hidden" id="invitePermissions">
                {foreach $permissions as $permission}
                    <label class="form-check form-check-inline">
                        <input type="checkbox" class="form-check-input" name="perms[{$permission.key}]" value="1">
                        {$permission.title}
                        <span class="d-none d-md-inline">-</span>
                        <br class="d-md-none">
                        <span class="text-muted">{$permission.description}</span>
                    </label>
                    <br>
                {/foreach}
            </div>
            <button type="submit" class="btn btn-primary">
                {lang key="userManagement.sendInvite"}
            </button>
        </form>

    </div>
</div>

<form method="post" action="{routePath('user-accounts')}">
    <input type="hidden" name="id" value="" id="inputSwitchAcctId">
</form>

<form method="post" action="{routePath('account-users-remove')}">
    <input type="hidden" name="userid" id="inputRemoveUserId">
    <div class="modal fade" id="modalRemoveUser">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header card-header bg-primary text-light">
                    <h4 class="modal-title">
                        {lang key="userManagement.removeAccess"}
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <p>{lang key="userManagement.removeAccessSure"}</p>
                    <p>{lang key="userManagement.removeAccessInfo"}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key="cancel"}
                    </button>
                    <button type="submit" class="btn btn-primary" id="btnRemoveUserConfirm">
                        {lang key="confirm"}
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

<form method="post" action="{routePath('account-users-invite-cancel')}">
    <input type="hidden" name="inviteid" id="inputCancelInviteId">
    <div class="modal fade" id="modalCancelInvite">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header card-header bg-primary text-light">
                    <h4 class="modal-title">
                        {lang key="userManagement.cancelInvite"}
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <p>{lang key="userManagement.cancelInviteSure"}</p>
                    <p>{lang key="userManagement.cancelInviteInfo"}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key="cancel"}
                    </button>
                    <button type="submit" class="btn btn-primary" id="btnCancelInviteConfirm">
                        {lang key="confirm"}
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    jQuery(document).ready(function() {
        jQuery('input:radio[name=permissions]').change(function () {
            if (this.value === 'choose') {
                jQuery('#invitePermissions').slideDown();
            } else {
                jQuery('#invitePermissions').slideUp();
            }
        });
        jQuery('.btn-manage-permissions').click(function(e) {
            if (jQuery(this).attr('disabled')) {
                e.preventDefault();
            }
        });
        jQuery('.btn-remove-user').click(function(e) {
            e.preventDefault();
            if (jQuery(this).attr('disabled')) {
                return;
            }
            jQuery('#inputRemoveUserId').val(jQuery(this).data('id'));
            jQuery('#modalRemoveUser').modal('show');
        });
        jQuery('.btn-cancel-invite').click(function(e) {
            e.preventDefault();
            jQuery('#inputCancelInviteId').val(jQuery(this).data('id'));
            jQuery('#modalCancelInvite').modal('show');
        });
    });
</script>
