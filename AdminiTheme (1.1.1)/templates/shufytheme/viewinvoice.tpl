{include file="{$template}/header.tpl"}

<div class="view__invoice__page__wrapper">
    <div class="invoice-container">
        {if $invalidInvoiceIdRequested}
            {include file="$template/includes/panel.tpl" type="danger" headerTitle="{lang key='error'}" bodyContent="{lang key='invoiceserror'}" bodyTextCenter=true}
        {else}
			<div class="view__invoice__page__body">
				<div class="row justify-content-start">
					<div class="col-lg-9 col-md-7 col-12">
						<div class="view__invoice__page__main__content default__shadow__panel">
							<div class="view__invoice__page__main__conent__header default__shadow__panel__header">
								<div class="row justify-content-between">
									<div class="col-md-7 col-12">
										<div class="d-flex align-items-center">
											<h6 class="coodiv-text-8 font-weight-bold mb-0">{$pagetitle}</h6>
											<div class="invoice-status ml-3">
												{if $status eq "Draft"}
													<span class="draft badge badge-warning">{lang key='invoicesdraft'}</span>
												{elseif $status eq "Unpaid"}
													<span class="unpaid badge badge-danger">{lang key='invoicesunpaid'}</span>
												{elseif $status eq "Paid"}
													<span class="paid badge badge-success">{lang key='invoicespaid'}</span>
												{elseif $status eq "Refunded"}
													<span class="refunded badge badge-primary">{lang key='invoicesrefunded'}</span>
												{elseif $status eq "Cancelled"}
													<span class="cancelled badge badge-dark">{lang key='invoicescancelled'}</span>
												{elseif $status eq "Collections"}
													<span class="collections badge badge-info">{lang key='invoicescollections'}</span>
												{elseif $status eq "Payment Pending"}
													<span class="paid badge badge-warning">{lang key='invoicesPaymentPending'}</span>
												{/if}
											</div>
										</div>
									</div>
									<div class="col-md-5 col-12">
											<div class="view__invoice__text__wrapper">
												<span class="view__invoice__text d-flex align-items-center justify-content-between">{lang key='invoicesdatecreated'} <span>{$date}</span></span>
												{if $status eq "Unpaid" || $status eq "Draft"}
												<span class="view__invoice__text d-flex align-items-center justify-content-between">{lang key='invoicesdatedue'} <span>{$datedue}</span></span>
												{/if}
												{if $status eq "Unpaid" && $allowchangegateway}
												{else}
												<span class="view__invoice__text d-flex align-items-center justify-content-between">{lang key='paymentmethod'}<span>{$paymentmethod}{if $paymethoddisplayname} ({$paymethoddisplayname}){/if}</span></span>
												{/if}
											</div>
									</div>
								</div>
							</div>
							
							
							<div class="view__invoice__page__main__conent__body default__shadow__panel__body mb-6">
								 {if $paymentSuccessAwaitingNotification}
									{include file="$template/includes/panel.tpl" type="success" headerTitle="{lang key='success'}" bodyContent="{lang key='invoicePaymentSuccessAwaitingNotify'}" bodyTextCenter=true}
								{elseif $paymentSuccess}
									{include file="$template/includes/panel.tpl" type="success" headerTitle="{lang key='success'}" bodyContent="{lang key='invoicepaymentsuccessconfirmation'}" bodyTextCenter=true}
								{elseif $paymentInititated}
									{include file="$template/includes/panel.tpl" type="info" headerTitle="{lang key='success'}" bodyContent="{lang key='invoicePaymentInitiated'}" bodyTextCenter=true}
								{elseif $pendingReview}
									{include file="$template/includes/panel.tpl" type="info" headerTitle="{lang key='success'}" bodyContent="{lang key='invoicepaymentpendingreview'}" bodyTextCenter=true}
								{elseif $paymentFailed}
									{include file="$template/includes/panel.tpl" type="danger" headerTitle="{lang key='error'}" bodyContent="{lang key='invoicepaymentfailedconfirmation'}" bodyTextCenter=true}
								{elseif $offlineReview}
									{include file="$template/includes/panel.tpl" type="info" headerTitle="{lang key='success'}" bodyContent="{lang key='invoiceofflinepaid'}" bodyTextCenter=true}
								{/if}
								
								<div class="row justify-content-between">
									<div class="col-md-7 col-12">
									<h6 class="coodiv-text-10 font-weight-bold">{lang key='invoicespayto'}</h6>
									<address class="small-text">
										{$payto}
										{if $taxCode}<br />{$taxIdLabel}: {$taxCode}{/if}
									</address>
									</div>
									
									<div class="col-md-5 col-12">
										<h6 class="coodiv-text-10 font-weight-bold">{lang key='invoicesinvoicedto'}</h6>
										<address class="small-text">
											{if $clientsdetails.companyname}{$clientsdetails.companyname}<br />{/if}
											{$clientsdetails.firstname} {$clientsdetails.lastname}<br />
											{$clientsdetails.address1}, {$clientsdetails.address2}<br />
											{$clientsdetails.city}, {$clientsdetails.state}, {$clientsdetails.postcode}<br />
											{$clientsdetails.country}
											{if $clientsdetails.tax_id}
												<br />{$taxIdLabel}: {$clientsdetails.tax_id}
											{/if}
											{if $customfields}
											<br /><br />
											{foreach $customfields as $customfield}
											{$customfield.fieldname}: {$customfield.value}<br />
											{/foreach}
											{/if}
										</address>
									</div>
								</div>
							</div>
							
							<div class="view__invoice__page__main__content__tables">
								<h6 class="coodiv-text-10 font-weight-bold">{lang key='invoicelineitems'}</h6>
								<div class="table-responsive mb-8">
									<table class="table table-sm">
										<thead class="main__thead__table">
										<tr>
											<td>{lang key='invoicesdescription'}</td>
											<td width="20%" class="text-center">{lang key='invoicesamount'}</td>
										</tr>
										</thead>
										<tbody>
										{foreach $invoiceitems as $item}
											<tr>
												<td>{$item.description}{if $item.taxed eq "true"} *{/if}</td>
												<td class="text-center">{$item.amount}</td>
											</tr>
										{/foreach}
										<tr>
											<td class="total-row text-right"><strong>{lang key='invoicessubtotal'}</strong></td>
											<td class="total-row text-center">{$subtotal}</td>
										</tr>
										{if $taxname}
											<tr>
												<td class="total-row text-right"><strong>{$taxrate}% {$taxname}</strong></td>
												<td class="total-row text-center">{$tax}</td>
											</tr>
										{/if}
										{if $taxname2}
											<tr>
												<td class="total-row text-right"><strong>{$taxrate2}% {$taxname2}</strong></td>
												<td class="total-row text-center">{$tax2}</td>
											</tr>
										{/if}
										<tr>
											<td class="total-row text-right"><strong>{lang key='invoicescredit'}</strong></td>
											<td class="total-row text-center">{$credit}</td>
										</tr>
										<tr>
											<td class="total-pay-row text-right"><strong>{lang key='invoicestotal'}</strong></td>
											<td class="total-pay-row text-center">{$total}</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<h6 class="coodiv-text-10 font-weight-bold">{lang key='invoicestransactions'}</h6>
								<div class="table-responsive">
									<table class="table table-sm">
										<thead class="main-thead-table">
											<tr>
												<td>{lang key='invoicestransdate'}</td>
												<td>{lang key='invoicestransgateway'}</td>
												<td>{lang key='invoicestransid'}</td>
												<td>{lang key='invoicestransamount'}</td>
											</tr>
										</thead>
										<tbody>
											{foreach $transactions as $transaction}
												<tr>
													<td>{$transaction.date}</td>
													<td>{$transaction.gateway}</td>
													<td>{$transaction.transid}</td>
													<td>{$transaction.amount}</td>
												</tr>
											{foreachelse}
												<tr>
													<td colspan="4">{lang key='invoicestransnonefound'}</td>
												</tr>
											{/foreach}
											<tr>
												<td class="total-pay-row  text-right" colspan="3"><strong>{lang key='invoicesbalance'}</strong></td>
												<td class="total-pay-row  text-center">{$balance}</td>
											</tr>
										</tbody>
									</table>
								</div>
								
							{if $notes}
								{include file="$template/includes/panel.tpl" type="info" headerTitle="{lang key='invoicesnotes'}" bodyContent=$notes}
							{/if}
							{if $taxrate}
								<p class="coodiv-text-11">* {lang key='invoicestaxindicator'}</p>
							{/if}
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-5 col-12 view__invoice__page__sidebar__wrapper position-relative">
						<div class="view__invoice__page__sidebar__sticky d-print-none">
						{if $status eq "Unpaid" && $allowchangegateway}
							<div class="view__invoice__page__sidebar dark-mode-texts">
								<div class="view__invoice__page__sidebar__total">
									<p class="coodiv-text-11 mb-0">Total Due</p>
									<h6 class="coodiv-text-5">{$total}</h6>
								</div>
								<div class="view__invoice__page__sidebar__payment__method">
									<p class="coodiv-text-11 mb-4">{lang key='paymentmethod'}</p>
									<form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}" class="form-inline">
										{$tokenInput}
										<div class="select__dropdown__menu__search__wrapper position-relative col px-0">
											<select name="gateway" onchange="submit()" class="form-control select__dropdown__menu__search">
												{foreach $availableGateways as $gatewayModule => $gatewayName}
													<option value="{$gatewayModule}"{if $gatewayModule == $selectedGateway} selected="selected"{/if}>{$gatewayName}</option>
												{/foreach}
											</select>
										</div>
									</form>
									{if $status eq "Unpaid" || $status eq "Draft"}
										<div class="payment-btn-container d-print-none">
											{$paymentbutton}
										</div>
									{/if}
								</div>
							</div>
							
							{if $manualapplycredit}
								<div class="view__invoice__page__sidebar__add-credit">
									<h6 class="coodiv-text-9">{lang key='invoiceaddcreditapply'}</h6>
									<form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
										<input type="hidden" name="applycredit" value="true" />
										<p class="coodiv-text-12">{lang key='invoiceaddcreditdesc1'} <strong>{$totalcredit}</strong>. {lang key='invoiceaddcreditdesc2'}. {lang key='invoiceaddcreditamount'}:</p>
										<div class="input-group">
											<input type="text" name="creditamount" value="{$creditamount}" class="form-control" />
											<div class="input-group-append">
												<button type="submit" class="btn btn-success" id="btnInvoiceAddCreditApply">
													{lang key='invoiceaddcreditapply'}
												</button>
											</div>
										</div>
									</form>
								</div>
							{/if}
						{/if}
						<div class="view__invoice__page__sidebar__actions">
							<h6 class="coodiv-text-11">{lang key='actions'}</h6>
							<a href="dl.php?type=i&amp;id={$invoiceid}"><i class="fas fa-download"></i> {lang key='invoicesdownload'}</a>
						</div>
						</div>
					
					</div>	
				</div>
			</div>
        {/if}
    </div>
</div>
{include file="{$template}/footer.tpl"}
