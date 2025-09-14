{if $promoerror}
	{include file="$template/includes/alert.tpl" type="error" msg=$promoerror textcenter=true}
{/if}

{if $promorecurring}
	{include file="$template/includes/alert.tpl" type="info"
	msg="{lang key='recurringpromodesc'}"|sprintf2:$promorecurring textcenter=true}
{/if}

<div class="custom-alert-text alert alert-info text-center">
	<h6 class="coodiv-text-10">{lang key='upgradecurrentconfig'}:</h6>
	<p class="coodiv-text-11"><strong>{$groupname} - {$productname}</strong>{if $domain} ({$domain}){/if}</p>
</div>

{if $type eq "package"}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key='upgradeproductlogic'}"|cat:' ('|cat:$upgrade.daysuntilrenewal|cat:' '|cat:"{lang key='days'}"|cat:')' textcenter=true}
{/if}

<div class="row justify-content-start">
	<div class="col-md-6 col-12 mb-6 mb-md-0">
		<div class="card overflow-hidden mb-0">
			<div class="card__header d-flex align-items-center justify-content-between">
				<h6 class="coodiv-text-10 mb-0">{lang key='orderdesc'}</h6>
			</div>
			<div class="table-container">
				<div class="table-responsive dataTables_wrapper">
					<table class="table table-list">
						<thead>
							<tr class="table__ui__header">
								<th width="60%">{lang key='orderdesc'}</th>
								<th width="40%" class="text-center">{lang key='orderprice'}</th>
							</tr>
						</thead>
						
						 <tbody>
							{foreach $upgrades as $upgrade}
							{if $type eq "package"}
								<tr>
									<td><input type="hidden" name="pid" value="{$upgrade.newproductid}" /><input type="hidden" name="billingcycle" value="{$upgrade.newproductbillingcycle}" />{$upgrade.oldproductname} => {$upgrade.newproductname}</td>
									<td class="text-center pricing">{$upgrade.price}</td>
								</tr>
							{elseif $type eq "configoptions"}
								<tr>
									<td>{$upgrade.configname}: {$upgrade.originalvalue} => {$upgrade.newvalue}</td>
									<td class="text-center pricing">{$upgrade.price}</td>
								</tr>
							{/if}
							{/foreach}
							<tr class="masspay-total">
								<td class="">{lang key='ordersubtotal'}:</td>
								<td class="text-center pricing">{$subtotal}</td>
							</tr>
							{if $promodesc}
								<tr class="masspay-total">
									<td class="">{$promodesc}:</td>
									<td class="text-center pricing">{$discount}</td>
								</tr>
							{/if}
							{if $taxrate}
								<tr class="masspay-total">
									<td class="">{$taxname} @ {$taxrate}%:</td>
									<td class="text-center pricing">{$tax}</td>
								</tr>
							{/if}
							{if $taxrate2}
								<tr class="masspay-total">
									<td class="">{$taxname2} @ {$taxrate2}%:</td>
									<td class="text-center pricing">{$tax2}</td>
								</tr>
							{/if}
							<tr class="masspay-total">
								<td class="">{lang key='ordertotalduetoday'}:</td>
								<td class="text-center pricing">{$total}</td>
							</tr>
						</tbody>
						
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-6 col-12">
		<div class="card h-100">
			<div class="card__header">
				<h6 class="coodiv-text-10 mb-0">{lang key='affiliatesreferallink'}</h6>
			</div>
			<div class="card__body d-flex flex-column h-100">
			
				<form method="post" action="{$smarty.server.PHP_SELF}" role="form">
					<input type="hidden" name="step" value="2" />
					<input type="hidden" name="type" value="{$type}" />
					<input type="hidden" name="id" value="{$id}" />
					{if $type eq "package"}
						<input type="hidden" name="pid" value="{$upgrades.0.newproductid}" />
						<input type="hidden" name="billingcycle" value="{$upgrades.0.newproductbillingcycle}" />
					{/if}
					<h2 class="coodiv-text-11">{lang key='orderpromotioncode'}</h2>
					{foreach $configoptions as $cid => $value}
						<input type="hidden" name="configoption[{$cid}]" value="{$value}" />
					{/foreach}
					<div class="input-group">
						<input class="form-control" type="text" name="promocode" placeholder="{lang key='orderpromotioncode'}" width="40"
							   {if $promocode}value="{$promocode} - {$promodesc}" disabled="disabled"{/if}>
						{if $promocode}
							<div class="input-group-append">
								<button type="submit" name="removepromo" class="btn btn-danger btn-sm">
									{lang key='orderdontusepromo'}
								</button>
							</div>
						{else}
							<div class="input-group-append">
								<button type="submit" class="btn btn-success btn-sm">
									{lang key='orderpromovalidatebutton'}
								</button>
							</div>
						{/if}
					</div>
				</form>
				
				<form class="mt-5" id="paynowform" method="post" action="{$smarty.server.PHP_SELF}">
					<input type="hidden" name="step" value="3" />
					<input type="hidden" name="type" value="{$type}" />
					<input type="hidden" name="id" value="{$id}" />
					{if $type eq "package"}
						<input type="hidden" name="pid" value="{$upgrades.0.newproductid}" />
						<input type="hidden" name="billingcycle" value="{$upgrades.0.newproductbillingcycle}" />
					{/if}
					{foreach $configoptions as $cid => $value}
						<input type="hidden" name="configoption[{$cid}]" value="{$value}" />
					{/foreach}
					{if $promocode}<input type="hidden" name="promocode" value="{$promocode}">{/if}

					<h2 class="coodiv-text-11">{lang key='orderpaymentmethod'}</h2>
					<div class="form-group">
						<select name="paymentmethod" id="inputPaymentMethod" class="form-control custom-select">
							{if $allowgatewayselection}
								<option value="none">{lang key='paymentmethoddefault'}</option>
							{/if}
							{foreach $gateways as $gateway}
								<option value="{$gateway.sysname}"{if $gateway.sysname eq $selectedgateway} selected="selected"{/if}>{$gateway.name}</option>
							{/foreach}
						</select>
					</div>
				</form>
				
			</div>
			
			<div class="card__footer d-flex align-items-center justify-content-end mt-auto">
				<button type="submit" form="paynowform" class="btn btn-primary btn-sm" id="btnOrderContinue">{lang key='continue'}</button>
			</div>
		</div>
	</div>
</div>

