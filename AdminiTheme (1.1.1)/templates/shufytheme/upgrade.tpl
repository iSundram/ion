{if $overdueinvoice}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key='upgradeerroroverdueinvoice'}"}
{elseif $existingupgradeinvoice}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key='upgradeexistingupgradeinvoice'}"}
{elseif $upgradenotavailable}
	{include file="$template/includes/alert.tpl" type="warning" msg="{lang key='upgradeNotPossible'}" textcenter=true}
{/if}

        

        {if $overdueinvoice}
            <div class="d-flex align-items-center justify-content-start gap-5">
                <a href="clientarea.php?action=productdetails&id={$id}" class="btn btn-default btn-sm">{lang key='clientareabacklink'}</a>
            </div>
        {elseif $existingupgradeinvoice}
            <div class="d-flex align-items-center justify-content-start gap-5">
                <a href="clientarea.php?action=productdetails&id={$id}" class="btn btn-default btn-sm">{lang key='clientareabacklink'}</a>
                <a href="submitticket.php" class="btn btn-default btn-sm">{lang key='submitticketdescription'}</a>
            </div>
        {elseif $upgradenotavailable}
            <div class="d-flex align-items-center justify-content-start gap-5">
                <a href="clientarea.php?action=productdetails&id={$id}" class="btn btn-default btn-sm">{lang key='clientareabacklink'}</a>
                <a href="submitticket.php" class="btn btn-default btn-sm">{lang key='submitticketdescription'}</a>
            </div>
        {else}
		
            {if $type eq "package"}
			<div class="card">
				<div class="card__header">
					<h6 class="coodiv-text-11 mb-0">{lang key='upgradechoosepackage'}</h6>
				</div>
				
				<div class="card__body">
					<div class="row justify-content-start">
						{foreach $upgradepackages as $upgradepackage}
							<div class="col-lg-4 col-md-6 col-12 mb-8">
								<div class="pricing__plans__standard rounded-8 pt-10 pb-8 px-9 white-bg h-100 d-flex flex-column mx-3">
									<div class="pricing-plans-special-header">
										<h5 class="coodiv-text-10 font-weight-bold">{$upgradepackage.groupname} - {$upgradepackage.name}</h5>
									</div>		
									<div class="buttom-pricing-element">
										
										
										 <form method="post" action="{$smarty.server.PHP_SELF}">
											<input type="hidden" name="step" value="2">
											<input type="hidden" name="type" value="{$type}">
											<input type="hidden" name="id" value="{$id}">
											<input type="hidden" name="pid" value="{$upgradepackage.pid}">
											<div class="form-group">
												{if $upgradepackage.pricing.type eq "free"}
													
													
													<div class="d-flex align-items-start mt-2 mb-2">
														<span class="coodiv-text-6 font-weight-bold main-text-color mr-4">
															{lang key='orderfree'}
														</span>
													</div>
													<input type="hidden" name="billingcycle" value="free">
													{elseif $upgradepackage.pricing.type eq "onetime"}
														{$upgradepackage.pricing.onetime} {lang key='orderpaymenttermonetime'}
														<input type="hidden" name="billingcycle" value="onetime">
													{elseif $upgradepackage.pricing.type eq "recurring"}
														<div class="primary__dropdown inputdomainselect select__dropdown__menu__search__wrapper">
															<select name="billingcycle" class="select__dropdown__menu__search">
																{if $upgradepackage.pricing.monthly}<option value="monthly">{$upgradepackage.pricing.monthly}</option>{/if}
																{if $upgradepackage.pricing.quarterly}<option value="quarterly">{$upgradepackage.pricing.quarterly}</option>{/if}
																{if $upgradepackage.pricing.semiannually}<option value="semiannually">{$upgradepackage.pricing.semiannually}</option>{/if}
																{if $upgradepackage.pricing.annually}<option value="annually">{$upgradepackage.pricing.annually}</option>{/if}
																{if $upgradepackage.pricing.biennially}<option value="biennially">{$upgradepackage.pricing.biennially}</option>{/if}
																{if $upgradepackage.pricing.triennially}<option value="triennially">{$upgradepackage.pricing.triennially}</option>{/if}
															</select>
														</div>
													{/if}
											</div>
											<button type="submit" class="btn btn-primary btn-block" id="btnUpgradeDowngradeChooseProduct">
												{lang key='upgradedowngradechooseproduct'}
											</button>
										</form>
										<ul class="pricing__plans__special__body -description mb-0 coodiv-text-11">
											{$upgradepackage.description}
										</ul>
									</div>
								</div>
							</div>
						{/foreach}
						
					</div>
				
				
				</div>
			</div>
            {elseif $type eq "configoptions"}
			<div class="card">
				<div class="card__header">
					<h6 class="coodiv-text-10 mb-0">{lang key='upgradechooseconfigoptions'}</h6>
				</div>
				

                <form method="post" action="{$smarty.server.PHP_SELF}">
                    <input type="hidden" name="step" value="2" />
                    <input type="hidden" name="type" value="{$type}" />
                    <input type="hidden" name="id" value="{$id}" />
					<div class="card__body">
					{if $errormessage}
						{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
					{/if}
					
					
					<div class="row justify-content-start">
						{foreach $configoptions as $configoption}
							<div class="col-lg-3 col-md-4 col-6 mb-6">
								<div class="upgrade__configoptions border rounded-10 text-center">
									<div class="upgrade__configoptions__header">
										<h6 class="coodiv-text-10">{$configoption.optionname} <small class="d-block">{lang key='upgradecurrentconfig'}</small></h6>
										<h6 class="coodiv-text-11">
										{if $configoption.optiontype eq 1 || $configoption.optiontype eq 2}
											{$configoption.selectedname}
										{elseif $configoption.optiontype eq 3}
											{if $configoption.selectedqty}{lang key='yes'}{else}{lang key='no'}{/if}
										{elseif $configoption.optiontype eq 4}
											{$configoption.selectedqty} x {$configoption.options.0.name}
										{/if}
										</h6>
									</div>
									
									<div class="upgrade__configoptions__body">
										<h6 class="coodiv-text-11">{lang key='upgradenewconfig'}</h6>
										 <div class="form-group">
											{if $configoption.optiontype eq 1 || $configoption.optiontype eq 2}
												<div class="inputdomainselect select__dropdown__menu__search__wrapper">
													<select name="configoption[{$configoption.id}]" class="select__dropdown__menu__search">
														{foreach $configoption.options as $option}
															{if $option.selected}<option value="{$option.id}" selected>{lang key='upgradenochange'}</option>{else}<option value="{$option.id}">{$option.nameonly} {$option.price}{/if}</option>
														{/foreach}
													</select>
												</div>		
											{elseif $configoption.optiontype eq 3}
												<input type="checkbox" name="configoption[{$configoption.id}]" value="1"{if $configoption.selectedqty} checked{/if}> {$configoption.options.0.name}
											{elseif $configoption.optiontype eq 4}
												<div class="form-inline">
													<input type="text" class="form-control" name="configoption[{$configoption.id}]" value="{$configoption.selectedqty}" size="5"><span class="pl-1"> x {$configoption.options.0.name}</span>
												</div>
											{/if}
										</div>
									</div>
									
									
								</div>
							
							</div>
						{/foreach}
					</div>
					</div>

                    <div class="card__footer d-flex align-items-center justify-content-end">
                        <button type="submit" class="btn btn-sm btn-primary">{lang key='continue'}</button>
                    </div>

                </form>
			</div>
            {/if}
        {/if}
