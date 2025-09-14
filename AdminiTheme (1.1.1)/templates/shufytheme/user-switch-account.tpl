{include file="$template/includes/flashmessage.tpl"}
<div class="card">
	<div class="card__header">
		{lang key="switchAccount.choose"}
	</div>
	<div class="card__body">
		{if $accounts->count() == 0}	
			<div class="py-7 no__data__error__box with__icon d-flex flex-column justify-content-center align-items-center">
				<div class="message__image">
					{include file="$template/assets/svg/core/empty-folder.tpl"}         
				</div>
				<h6 class="coodiv-text-9 font-weight-500">{lang key="switchAccount.noneFound"}</h6>
				<p class="coodiv-text-11 font-weight-400">{lang key="switchAccount.createInstructions"}</p>
				<div class="d-flex align-items-center mt-6">
					<a href="{routePath('cart-index')}" class="btn btn-primary btn-sm">
						{lang key="shopNow"}
					</a>
				</div>
			</div>
		{else}	
			<div class="select__accounts__list">
				{foreach $accounts as $account}
					<a href="#" class="row justify-content-start align-items-center user__list__item {if $account->status == 'Closed'}disabled{/if}" data-id="{$account->id}">
						<div class="col-md-5 col-12 d-flex align-items-center gap-10">
							<span class="user__list__item__avatar">
								<img src="https://www.gravatar.com/avatar/{$account->email|md5}" />
							</span>
							<span class="user__list__item__info">
								<span class="user__list__item__name coodiv-text-10">{$account->displayName}</span>
								<span class="user__list__item__email coodiv-text-12 font-weight-400 d-block text-gray">{$account->email}</span>
							</span>
						</div>
						<div class="col-md-5 col-12 user__list__item__date">
							{if $account->authedUserIsOwner() && $account->status != 'Closed'}
								<span class="label label-info">{lang key="clientOwner"}</span>
							{/if}
							{if $account->status == 'Closed'}
								<span class="label label-danger">{$account->status}</span>
							{/if}
							{if $account->status == 'Active'}
								<span class="label label-active">{$account->status}</span>
							{/if}
						</div>
						<div class="col-md-2 col-12 d-flex justify-content-end">
							<span class="btn btn-primary btn-sm {if $account->status == 'Closed'}disabled{/if}">{$LANG.navSwitchAccount}</span>
						</div>
					</a>
				{/foreach}
			</div>
		{/if}
	</div>
</div>


<form method="post" action="{routePath('user-accounts')}">
    <input type="hidden" name="id" value="" id="inputSwitchAcctId">
</form>

<script>
    $(document).ready(function() {
        $('.select-account a').click(function(e) {
            e.preventDefault();
            $('#inputSwitchAcctId').val($(this).data('id'))
                .parent('form').submit();
        });
    });
</script>
