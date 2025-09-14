{include file="$template/includes/tablelist.tpl" tableName="ServicesList" filterColumn="4" noSortColumns="0"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableServicesList').show().DataTable();

       {if $orderby == 'product'}
            table.order([1, '{$sort}'], [4, 'asc']);
        {elseif $orderby == 'amount' || $orderby == 'billingcycle'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'nextduedate'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'domainstatus'}
            table.order(4, '{$sort}');
        {/if}
		
        table.draw();
		
		setTimeout(() => {
			jQuery('.table-container').removeClass('loading');
			jQuery('#tableLoading').addClass('d-none');
			jQuery('#tableLoading').hide();
		}, "1000");
		
		
    });
</script>
<div class="row justify-content-start">
	<div class="{if $coodivsettings.servicemarketconnect=='activated' || $coodivsettings.id != '1'}{if $CoodivMarketConnectServices}col-md-8{/if}{/if} col-12">
		<div class="table-container loading clearfix">
			<table id="tableServicesList" class="table table-list w-hidden">
				<thead>
					<tr>
						<th class="btn__table__collapse__mobile__wrapper__th sorting_disabled" data-priority="1">&nbsp;</th>
						<th data-priority="2"><button type="button" class="btn__table__collapse__mobile"></button>{lang key='orderproduct'}</th>
						<th data-priority="3">{lang key='clientareaaddonpricing'}</th>
						<th data-priority="4">{lang key='clientareahostingnextduedate'}</th>
						<th data-priority="5">{lang key='clientareastatus'}</th>
						<th class="sorting_disabled" data-priority="6">{lang key='actions'}</th>
					</tr>
				</thead>
				<tbody>
					{foreach key=num item=service from=$services}
						<tr onclick="clickableSafeRedirect(event, 'clientarea.php?action=productdetails&amp;id={$service.id}', false)">
							<td class="btn__table__collapse__mobile__wrapper__td">
								<span>{$service.id}</span>
							</td>
							<td data-element-id="{$service.id}" data-type="service"{if $service.domain} data-domain="{$service.domain}"{/if}>
								<span class="mobile__title d-md-none d-flex">{lang key='orderproduct'}</span>
								<div class="table__collapse__mobile__wrapper__informations">
									<b>{$service.group}</b> - {$service.product}
									{if $service.domain}
										<div class="d-none d-md-flex align-items-center table__service__domain__wrapper">
											<div class="ssl-info" data-element-id="{$service.id}" data-type="service"{if $service.domain} data-domain="{$service.domain}"{/if}>
												{if $service.sslStatus}
													{assign var="awords" value="/"|explode:$service.sslStatus->getImagePath()} 
													{assign var="imageSSL" value=$awords|@end}
													<img id="sslStatus{$service.id}" src="{$service.sslStatus->getImagePath()}" data-toggle="tooltip" title="{$service.sslStatus->getTooltipContent()}" width="12px" class="ssl-status{$service.sslStatus->getClass()}"/>
												{elseif !$service.isActive}
													<img id="sslStatus{$service.id}" src="{$BASE_PATH_IMG}/ssl/ssl-inactive-domain.png" data-toggle="tooltip" title="{lang key='sslState.sslInactiveService'}" width="12px" class="ssl-status"/>
												{/if}
											</div>
											<a class="text-small ml-3" href="http://{$service.domain}" target="_blank">{$service.domain}</a>   
										</div>
									{/if} 	
								</div>
							</td>
							<td class="text-left">
								<span class="mobile__title d-md-none d-flex">{lang key='clientareaaddonpricing'}</span>
								<span class="d-flex align-items-center gap-5">{$service.amount} <small class="text-muted">{$service.billingcycle}</small></span>
							</td>
							<td class="text-left">
								<span class="mobile__title d-md-none d-flex">{lang key='clientareahostingnextduedate'}</span>
								<span><span class="w-hidden">{$service.normalisedNextDueDate}</span>{$service.nextduedate}</span>
							</td>
							
							
							
							<td class="text-left">
							<span class="mobile__title d-md-none d-flex">{lang key='clientareastatus'}</span>
							<span class="label status status-{$service.status|strtolower}">{$service.statustext}</span>
							</td>
							<td width="44px" class="table__cell__action">
								<span class="mobile__title d-md-none d-flex">{lang key='actions'}</span>
								<div class="dropdown coodiv__default__dropdown">
									<button class="btn btn-sm btn-light" type="button" id="dropdown-{$service.id}-menu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fas fa-ellipsis-h"></i>
									</button>
									<div class="dropdown-menu" aria-labelledby="dropdown-{$service.id}-menu">								
										<a class="dropdown-item" href="clientarea.php?action=productdetails&id={$service.id}">{$LANG.clientareaviewdetails}</a>
										{if $service.rawstatus == "active" && ($service.downloads || $service.addons || $service.packagesupgrade)}
											{if $service.downloads}<a class="dropdown-item" href="clientarea.php?action=productdetails&id={$service.id}#tabDownloads">{$LANG.downloadstitle}</a>{/if}
											{if $service.addons}<a class="dropdown-item" href="clientarea.php?action=productdetails&id={$service.id}#tabAddons">{$LANG.clientareahostingaddons}</a>{/if}
											{if $service.packagesupgrade}<a class="dropdown-item" href="upgrade.php?type=package&id={$service.id}">{$LANG.upgradedowngradepackage}</a>{/if}
											{*{if $service.showcancelbutton}<a class="dropdown-item" href="clientarea.php?action=cancel&id={$service.id}">{$LANG.clientareacancelrequestbutton}</a>{/if}*}
										{/if}  
									</div>
								</div>
							</td>
						</tr>
					{/foreach}
				</tbody>
			</table>
			<div class="data__loading__animation__wrapper default__loading__effect" id="tableLoading">
				 {include file="$template/includes/theme-core/loader.tpl"}  
				 <span class="section__loader__title">{$LANG.loading}</span>		 
			</div>
		</div>
	</div>
	{if $coodivsettings.servicemarketconnect=='activated' || $coodivsettings.id != '1'}
		{if $CoodivMarketConnectServices}
			<div class="col-md-4 col-12">
				{include file="$template/includes/theme-core/slider.tpl" }
			</div>
		{/if}
	{/if}
</div>
