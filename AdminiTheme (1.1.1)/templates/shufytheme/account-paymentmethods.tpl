{if $createSuccess}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='paymentMethods.addedSuccess'}"}
{elseif $createFailed}
    {include file="$template/includes/alert.tpl" type="warning" msg="{lang key='paymentMethods.addFailed'}"}
{elseif $saveSuccess}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='paymentMethods.updateSuccess'}"}
{elseif $saveFailed}
    {include file="$template/includes/alert.tpl" type="warning" msg="{lang key='paymentMethods.saveFailed'}"}
{elseif $setDefaultResult === true}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='paymentMethods.defaultUpdateSuccess'}"}
{elseif $setDefaultResult === false}
    {include file="$template/includes/alert.tpl" type="warning" msg="{lang key='paymentMethods.defaultUpdateFailed'}"}
{elseif $deleteResult === true}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='paymentMethods.deleteSuccess'}"}
{elseif $deleteResult === false}
    {include file="$template/includes/alert.tpl" type="warning" msg="{lang key='paymentMethods.deleteFailed'}"}
{/if}

<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">{lang key='paymentMethods.title'}</h6>
			<p class="coodiv-text-12 text-gray">{lang key='paymentMethods.intro'}</p>
		</div>
		<div class="btns">
		{if $allowCreditCard}
			<a href="{routePath('account-paymentmethods-add')}" class="btn btn-primary btn-sm" data-role="add-new-credit-card">
				{lang key='paymentMethods.addNewCC'}
			</a>
		{/if}
		{if $allowBankDetails}
			<a href="{routePathWithQuery('account-paymentmethods-add', null, 'type=bankacct')}" class="btn btn-default btn-sm">
				{lang key='paymentMethods.addNewBank'}
			</a>
		{/if}
		</div>
	</div>
	<div class="card__body py-0">
		{if $client->payMethods->validateGateways()|@count != 0}
			<div class="payment__methods__table__wrapper__holder">
				{foreach $client->payMethods->validateGateways() as $payMethod}
					<div class="row justify-content-start payment__methods__table__wrapper align-items-center">
						<div class="col-md-4 col-10">
							<div class="field__wrapper payment__method__name">
								<div class="field__title coodiv-text-12 font-weight-400 text-gray">
									{lang key='paymentMethods.name'}
								</div>
								<div class="field__text mt-4 d-flex align-items-center">
									<div class="d-flex align-items-center">
									<div class="cc__item__icon">
									{if $payMethod->payment->getDisplayName()|strstr:"Visa"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/visa.svg" alt=""/>
									{elseif $payMethod->payment->getDisplayName()|strstr:"Jcb"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/jcb.svg" alt=""/>
									{elseif $payMethod->payment->getDisplayName()|strstr:"Mastercard" || $payMethod->payment->getDisplayName()|strstr:"MasterCard"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/mastercard.svg" alt=""/>
									{elseif $payMethod->payment->getDisplayName()|strstr:"Amex"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/american-express.svg" alt=""/>
									{elseif $payMethod->payment->getDisplayName()|strstr:"Discover"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/discover.svg" alt=""/>
									{elseif $payMethod->payment->getDisplayName()|strstr:"Diners"}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/credit-card.svg" alt=""/>
									{else}
										<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/credit-card.svg" alt=""/>
									{/if}
									</div>
									<h6 class="coodiv-text-10 mb-0 ml-3 font-weight-600">{$payMethod->payment->getDisplayName()}</h6>
									</div>
									<span class="status status-{$payMethod->getStatus()|lower} mb-0 ml-2">{$payMethod->getStatus()}</span>
									{if $payMethod->isDefaultPayMethod()}<span class="label label-info mb-0 ml-1">{lang key='paymentMethods.default'}</span>{/if}
								</div>
							</div>
						</div>
						<div class="col-md-6 col-12 d-md-flex d-none">
						
							<div class="field__wrapper payment__method__description">
								<div class="field__title coodiv-text-12 font-weight-400 text-gray">
									{lang key='paymentMethods.description'}
								</div>
								<div class="field__text mt-4">
									<h6 class="coodiv-text-12 mb-0 font-weight-400">
										{if $payMethod->description}
											{$payMethod->description}
										{else}
											-
										{/if}
									</h6>
								</div>
							</div>
						
						</div>	

						<div class="ml-md-auto col-md-auto col-2 payment__methods__table__actions d-flex align-items-center">
							<div class="field__text">
								<div class="dropdown coodiv__default__dropdown">
									<button class="btn btn-sm btn-light" type="button" id="clientareamorelinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fas fa-ellipsis-h"></i>
									</button>
									<div class="dropdown-menu" aria-labelledby="clientareamorelinks" style="">
										<a href="{routePath('account-paymentmethods-setdefault', $payMethod->id)}" class="dropdown-item {if $payMethod->isDefaultPayMethod() || $payMethod->isExpired()} disabled{/if}">
											{lang key='paymentMethods.setAsDefault'}
										</a>
										<a href="{routePath('account-paymentmethods-view', $payMethod->id)}" class="dropdown-item {if $payMethod->getType() == 'RemoteBankAccount'} disabled{/if}" data-role="edit-payment-method">
											{lang key='paymentMethods.edit'}
										</a>
										{if $allowDelete}
											<a href="{routePath('account-paymentmethods-delete', $payMethod->id)}" class="dropdown-item btn-delete">
												{lang key='paymentMethods.delete'}
											</a>
										{/if}
									</div>
								</div>
							</div>
						</div>
					</div>
				{/foreach}
			</div>
		{else}
			<div class="py-7 no__data__error__box with__icon d-flex flex-column justify-content-center align-items-center">
				<div class="message__image">
					{include file="$template/assets/svg/core/no-credit-card.tpl"}         
				</div>
				<h6 class="coodiv-text-9 font-weight-500">{lang key='paymentMethods.noPaymentMethodsCreated'}</h6>
				<div class="d-flex align-items-center mt-6">
				{if $allowCreditCard}
					<a href="{routePath('account-paymentmethods-add')}" class="btn btn-primary btn-sm" data-role="add-new-credit-card">
						{lang key='paymentMethods.addNewCC'}
					</a>
				{/if}
				{if $allowBankDetails}
					<a href="{routePathWithQuery('account-paymentmethods-add', null, 'type=bankacct')}" class="btn btn-default btn-sm">
						{lang key='paymentMethods.addNewBank'}
					</a>
				{/if}
				</div>
				
			</div>
		{/if}
	</div>
</div>



<form method="post" action="" id="frmDeletePaymentMethod">
<div class="modal fade" id="modalPaymentMethodDeleteConfirmation" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">{lang key='paymentMethods.areYouSure'}</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <p>{lang key='paymentMethods.deletePaymentMethodConfirm'}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{lang key='no'}</button>
        <button type="submit" class="btn btn-primary">{lang key='yes'}</button>
      </div>
    </div>
  </div>
</div>
</form>

<form method="post" action="" id="frmSetDefaultPaymentMethod"></form>

<script>
    jQuery(document).ready(function() {
        jQuery('.btn-set-default').click(function(e) {
            e.preventDefault();
            jQuery('#frmSetDefaultPaymentMethod')
                .attr('action', jQuery(this).attr('href'))
                .submit();
        });
        jQuery('.btn-delete').click(function(e) {
            e.preventDefault();
            jQuery('#frmDeletePaymentMethod')
                .attr('action', jQuery(this).attr('href'));
            jQuery('#modalPaymentMethodDeleteConfirmation').modal('show');
        });
    });
</script>
