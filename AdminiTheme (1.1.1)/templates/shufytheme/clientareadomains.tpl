{if $warnings}
    {include file="$template/includes/alert.tpl" type="warning" msg=$warnings textcenter=true}
{/if}
<div class="row justify-content-start">
	<div class="{if $coodivsettings.domainmarketconnect=='activated' || $coodivsettings.id != '1'}{if $CoodivMarketConnectServices}col-md-8{/if}{/if} col-12">
		<div class="tab-content">
			<div class="tab-pane fade show active" id="tabOverview">
				{include file="$template/includes/tablelist.tpl" tableName="DomainsList" noSortColumns="0, 1" startOrderCol="2" filterColumn="5"}
				<script>
					jQuery(document).ready(function () {
						var table = jQuery('#tableDomainsList').show().DataTable();

						{if $orderby == 'domain'}
							table.order(2, '{$sort}');
						{elseif $orderby == 'regdate' || $orderby == 'registrationdate'}
							table.order(3, '{$sort}');
						{elseif $orderby == 'nextduedate'}
							table.order(4, '{$sort}');
						{elseif $orderby == 'autorenew'}
							table.order(5, '{$sort}');
						{elseif $orderby == 'status'}
							table.order(6, '{$sort}');
						{/if}
						table.draw();
						setTimeout(() => {
							jQuery('.table-container').removeClass('loading');
							jQuery('#tableLoading').addClass('d-none');
							jQuery('#tableLoading').hide();
						}, "1000");
					});
				</script>
				<form id="domainForm" method="post" action="clientarea.php?action=bulkdomain">
					<input id="bulkaction" name="update" type="hidden" />
					<div class="table-container loading clearfix">
						<div class="clientareadomain__btn__goroup">
							<div class="btn-group btn-group-sm" role="group">
								<button type="button" class="btn btn-default setBulkAction" id="nameservers">
									{lang key='domainmanagens'}
								</button>
								<button type="button" class="btn btn-default setBulkAction" id="contactinfo">
									{lang key='domaincontactinfoedit'}
								</button>
								{if $allowrenew}
									<button type="button" class="btn btn-default setBulkAction" id="renewDomains">
										{lang key='domainmassrenew'}
									</button>
								{/if}
								<div class="btn-group btn-group-sm" role="group">
									<button id="btnGroupDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  {lang key="more"}...
									</button>
									<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									  <a class="dropdown-item setBulkAction" href="#" id="autorenew">
									{lang key='domainautorenewstatus'}</a>
									  <a class="dropdown-item setBulkAction" href="#" id="reglock">
									{lang key='domainreglockstatus'}</a>
									</div>
								  </div>
							</div>
						</div>
						<table id="tableDomainsList" class="table table-list w-hidden">
							<thead>
								<tr>
									<th class="btn__table__collapse__mobile__wrapper__th sorting_disabled">&nbsp;</th>
									<th width="0" class="sorting_disabled cell__checkbox"></th>
									<th class="next__cell__checkbox">{lang key='orderdomain'}</th>
									<th>{lang key='clientareahostingnextduedate'}</th>
									<th>{$LANG.domainsautorenew}</th>
									<th>{lang key='domainstatus'}</th>
									<th>{lang key='actions'}</th>
								</tr>
							</thead>
							<tbody>
							{foreach $domains as $domain}
								<tr onclick="clickableSafeRedirect(event, 'clientarea.php?action=domaindetails&amp;id={$domain.id}', false)">
									<td class="btn__table__collapse__mobile__wrapper__td">
										<span>{$domain.id}</span>
										<button type="button" class="btn__table__collapse__mobile"></button>
									</td>
									<td class="cell__checkbox">
										<div class="form-group m-0">
											<label for="domids[]" class="coodiv-check-input d-flex p-0">
												<input type="checkbox" name="domids[]" class="coodiv-check-input-click domids stopEventBubble" value="{$domain.id}" />
												<span class="checkbox mr-2"></span>
											</label>
										</div>
									</td>
									<td class="next__cell__checkbox" data-sort="{$domain.domain}">
										<span class="mobile__title d-md-none d-flex">{lang key='orderdomain'}</span>
										<div class="d-flex align-items-center">
											<span class="ssl-info d-none d-md-block" data-element-id="{$domain.id}" data-type="domain" data-domain="{$domain.domain}">
												{if $domain.sslStatus}
													<img id="sslStatus{$domain.id}" src="{$domain.sslStatus->getImagePath()}" data-toggle="tooltip" title="{$domain.sslStatus->getTooltipContent()}" width="12px" data-maintemplate="{$template}" class="ssl-status {$domain.sslStatus->getClass()}"/>
												{elseif !$domain.isActive}
													<img id="sslStatus{$service.id}" src="{$BASE_PATH_IMG}/ssl/ssl-inactive-domain.png" data-toggle="tooltip" title="{lang key='sslState.sslInactiveDomain'}" data-maintemplate="{$template}" width="12px" class="ssl-status"/>
												{/if}
											</span>
											<a href="http://{$domain.domain}" target="_blank" class="ml-lg-3 coodiv-text-11 font-weight-500">{$domain.domain}</a>
										</div>
									</td>
									<td>
										<span class="mobile__title d-md-none d-flex">{lang key='clientareahostingnextduedate'}</span>
										<span><span class="w-hidden">{$domain.normalisedNextDueDate}</span>{$domain.normalisedNextDueDate}</td></span>
									<td>
										<span class="mobile__title d-md-none d-flex">{lang key='orderproduct'}</span>
										{if $domain.autorenew}
										<a href="clientarea.php?action=domaindetails&id={$domain.id}#tabAutorenew" class="d-block switch not__clickable__switch switch--lg switch--text">
											<span class="switch__container active"><span class="switch__text">on</span><span class="switch__handle"></span></span>
										</a>
										{else}
										<a href="clientarea.php?action=domaindetails&id={$domain.id}#tabAutorenew" class="d-block switch not__clickable__switch switch--lg switch--text">
											<span class="switch__container not-active"><span class="switch__text">off</span><span class="switch__handle"></span></span>
										</a>
										{/if}								
									</td>
									<td>
										<span class="mobile__title d-md-none d-flex">{$LANG.domainsautorenew}</span>
										<span class="label status status-{$domain.statusClass}">{$domain.statustext}</span>
										<span class="w-hidden">
											{* {if $domain.next30}<span>{$LANG.domainsExpiringInTheNext30Days}</span><br />{/if}
											{if $domain.next90}<span>{$LANG.domainsExpiringInTheNext90Days}</span><br />{/if}
											{if $domain.next180}<span>{$LANG.domainsExpiringInTheNext180Days}</span><br />{/if}
											{if $domain.after180}<span>{$LANG.domainsExpiringInMoreThan180Days}</span>{/if} *}
											{if $domain.expiringSoon}<span>{lang key="domainsExpiringSoon"}</span>{/if}
										</span>
									</td>
									<td width="44px" class="table__cell__action">
										<span class="mobile__title d-md-none d-flex">{lang key='actions'}</span>
										<div class="dropdown coodiv__default__dropdown dropdon__to__top">
											<button class="btn btn-sm btn-light" type="button" id="dropdown-{$service.id}-menu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<i class="fas fa-ellipsis-h"></i>
											</button>
											<div class="dropdown-menu" aria-labelledby="dropdown-{$service.id}-menu">								
												<a class="dropdown-item" href="clientarea.php?action=domaindetails&amp;id={$domain.id}">{$LANG.clientareaviewdetails}</a>
												{if $service.rawstatus == "active" && ($service.downloads || $service.addons || $service.packagesupgrade)}
													{if $service.downloads}<a class="dropdown-item" href="clientarea.php?action=productdetails&id={$service.id}#tabDownloads">{$LANG.downloadstitle}</a>{/if}
													{if $service.addons}<a class="dropdown-item" href="clientarea.php?action=productdetails&id={$service.id}#tabAddons">{$LANG.clientareahostingaddons}</a>{/if}
													{if $service.packagesupgrade}<a class="dropdown-item" href="upgrade.php?type=package&id={$service.id}">{$LANG.upgradedowngradepackage}</a>{/if}
													{*{if $service.showcancelbutton}<a class="dropdown-item" href="clientarea.php?action=cancel&id={$service.id}">{$LANG.clientareacancelrequestbutton}</a>{/if}*}
												{/if}  
												
													<a class="dropdown-item" href="clientarea.php?action=domaindetails&id={$domain.id}">{$LANG.managedomain}</a>                            
												{if $domain.status eq 'Active'}
													<a class="dropdown-item" href="clientarea.php?action=domaindetails&id={$domain.id}#tabNameservers">{$LANG.domainmanagens}</a>
													<a class="dropdown-item" href="clientarea.php?action=domaincontacts&domainid={$domain.id}">{$LANG.domaincontactinfoedit}</a>
													<a class="dropdown-item" href="clientarea.php?action=domaindetails&id={$domain.id}#tabAutorenew">{$LANG.domainautorenewstatus}</a>
												{/if}
												{if $allowrenew}
													{if $domain.canDomainBeManaged}
														<a class="dropdown-item" href="{routePath('domain-renewal', $domain.domain)}">{lang key='domainsrenew'}</a>
													{else}
													   <a class="dropdown-item disabled" href="#" onclick="return false;" disabled>{lang key='domainsrenew'}</a>
													{/if}
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
				</form>
			</div>
		</div>
	</div>
	{if $coodivsettings.domainmarketconnect=='activated' || $coodivsettings.id != '1'}
		{if $CoodivMarketConnectServices}
			<div class="col-md-4 col-12">
				{include file="$template/includes/theme-core/slider.tpl" }
			</div>
		{/if}
	{/if}
</div>
