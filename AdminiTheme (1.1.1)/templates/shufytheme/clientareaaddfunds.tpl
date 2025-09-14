{if $addfundsdisabled}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='clientareaaddfundsdisabled'}" textcenter=true}
{elseif $notallowed}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='clientareaaddfundsnotallowed'}" textcenter=true}
{elseif $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage textcenter=true}
{/if}

{if !$addfundsdisabled}

    <div class="row justify-content-start">
        <div class="order-md-1 order-12 col-md-8 col-12">
            <div class="card">
				<div class="card__header">
					<h3 class="coodiv-text-8 mb-0">{lang key='addfunds'}</h3>
				</div>
				<form method="post" action="{$smarty.server.PHP_SELF}?action=addfunds">
                <div class="card__body">
					<fieldset>
						<div class="form-group">
							<label for="amount" class="col-form-label">{lang key='addfundsamount'}:</label>
							<input type="text" name="amount" id="amount"
								   value="{$amount}" class="form-control" required />
						</div>
						
						<div class="input-group-btn primary__dropdown select__dropdown__menu__search__wrapper position-relative">
							<label for="paymentmethod" class="col-form-label">{lang key='orderpaymentmethod'}:</label><br/>
							<select  name="paymentmethod" id="paymentmethod" class="form-control select__dropdown__menu__search">
								{foreach $gateways as $gateway}
									<option value="{$gateway.sysname}">{$gateway.name}</option>
								{/foreach}
							</select>
						</div>
					</fieldset>
					<p class="coodiv-text-11 font-weight-400">{lang key='addfundsnonrefundable'}</p>
                </div>
                <div class="card__footer d-flex align-items-center justify-content-end">
                    <button type="submit" class="btn btn-primary btn-sm">
						{lang key='addfunds'}
					</button>
                </div>
				</form>
            </div>
        </div>
		
		<div class="order-md-12 order-1 col-md-4 col-12 mb-md-0 mb-8">
			<div class="card">
				<div class="card__header d-flex align-items-center justify-content-between">
					<h3 class="coodiv-text-8 mb-0">{$LANG.affiliatesbalance}</h3>
					<p class="coodiv-text-11 font-weight-400">{$clientsstats.creditbalance}</p>
				</div>
				
				
				<div class="card__body d-flex flex-column align-items-start flex-wrap gap-8">
					<div class="w-100 d-flex align-items-center justify-content-between gap-5">
						<h6 class="coodiv-text-12 font-weight-bold mb-0">{lang key='addfundsminimum'}</h6> 
						<p class="coodiv-text-12 font-weight-400 mb-0">{$minimumamount}</p>
					</div>
					
					<div class="w-100 d-flex align-items-center justify-content-between gap-5">
						<h6 class="coodiv-text-12 font-weight-bold mb-0">{lang key='addfundsmaximum'}</h6> 
						<p class="coodiv-text-12 font-weight-400 mb-0">{$maximumamount}</p>
					</div>
					
					<div class="w-100 d-flex align-items-center justify-content-between gap-5">
						<h6 class="coodiv-text-12 font-weight-bold mb-0">{lang key='addfundsmaximumbalance'}</h6> 
						<p class="coodiv-text-12 font-weight-400 mb-0">{$maximumbalance}</p>
					</div>
				</div>
				

			</div>
		</div>
							
							
    </div>

{/if}
