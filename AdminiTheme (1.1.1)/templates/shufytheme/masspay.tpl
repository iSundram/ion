<form method="post" action="clientarea.php?action=masspay">
    <input type="hidden" name="geninvoice" value="true" />
    <div class="row justify-content-start">
	<div class="col-md-8 col-12 mb-md-0 mb-7">
	<div class="card">
		<div class="card__header">
			<h3 class="coodiv-text-8 mb-0">{lang key="masspaytitle"}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key="masspaydescription"}</p>
		</div>
        <div class="card__body">
            <table class="table">
                <thead>
                    <tr>
                        <th>{lang key='invoicesdescription'}</th>
                        <th>{lang key='invoicesamount'}</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $invoiceitems as $invid => $invoiceitem}
                        <tr>
                            <td colspan="2" class="bg-default">
                                <strong>{lang key='invoicenumber'} {if $invoiceitem.0.invoicenum}{$invoiceitem.0.invoicenum}{else}{$invid}{/if}</strong>
                                <input type="hidden" name="invoiceids[]" value="{$invid}" />
                            </td>
                        </tr>
                        {foreach from=$invoiceitem item=item}
                            <tr class="masspay-invoice-detail">
                                <td>{$item.description}</td>
                                <td>{$item.amount}</td>
                            </tr>
                        {/foreach}
                    {foreachelse}
                        <tr>
                            <td colspan="6" align="center">{lang key='norecordsfound'}</td>
                        </tr>
                    {/foreach}
                    <tr class="masspay-total">
                        <td class="text-right">{lang key='invoicessubtotal'}:</td>
                        <td>{$subtotal}</td>
                    </tr>
                    {if $tax}
                        <tr class="masspay-total">
                            <td class="text-right">{$taxrate1}% {$taxname1}:</td>
                            <td>{$tax}</td>
                        </tr>
                    {/if}
                    {if $tax2}
                        <tr class="masspay-total">
                            <td class="text-right">{$taxrate2}% {$taxname2}:</td>
                            <td>{$tax2}</td>
                        </tr>
                    {/if}
                    {if $credit}
                        <tr class="masspay-total">
                            <td class="text-right">{lang key='invoicescredit'}:</td>
                            <td>{$credit}</td>
                        </tr>
                    {/if}
                    {if $partialpayments}
                        <tr class="masspay-total">
                            <td class="text-right">{lang key='invoicespartialpayments'}:</td>
                            <td>{$partialpayments}</td>
                        </tr>
                    {/if}
                    <tr class="masspay-total">
                        <td class="text-right">{lang key='invoicestotaldue'}:</td>
                        <td>{$total}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>

	<div class="col-md-4 col-12">
		<div class="card bg-default">
			<div class="card__header">
				<h3 class="coodiv-text-8 mb-0">{lang key='masspaymentselectgateway'}</h3>
			</div>
			<div class="card__body">
				<fieldset>
					<div class="col-md-12">
						<div class="form-group">
							<label for="paymentmethod" class="col-form-label">{lang key='orderpaymentmethod'}:</label><br/>
							<select name="paymentmethod" id="paymentmethod" class="form-control custom-select">
								{foreach $gateways as $gateway}
									<option value="{$gateway.sysname}">{$gateway.name}</option>
								{/foreach}
							</select>
						</div>
					</div>
				</fieldset>
			</div>
			<div class="card__footer d-flex alig-items-center justify-content-end">
				<button type="submit" class="btn btn-primary btn-block" id="btnMassPayMakePayment">
					{lang key='masspaymakepayment'}
				</button>
			</div>
		</div>
	</div>
	</div>

</form>
