{if file_exists("templates/$template/modules/servers/cpanel/overwrites/overview.tpl")}
    {include file="{$template}/modules/servers/cpanel/overwrites/overview.tpl"}  
{else}
    <script src="modules/servers/cpanel/js/client.js"></script>
	
	<div class="product-details mb-3">
		<div class="row">
			<div class="col-md-6 col-12 mb-md-0 mb-7">
			   <div class="product-icon-box-wrapper">
					<span class="product-status status-{$rawstatus|strtolower}">{$status}</span>
					{if $showcancelbutton || $packagesupgrade}
					<div class="product-options dropdown coodiv__default__dropdown">
						<button class="tuggle__btn btn btn-sm" type="button" id="product-options-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-ellipsis-h"></i>
						</button>
						<div class="dropdown-menu" aria-labelledby="product-options-dropdown" >	
							{if $packagesupgrade}<a class="dropdown-item" href="upgrade.php?type=package&amp;id={$id}">{lang key='upgrade'}</a>{/if}
							{if $showcancelbutton}<a class="dropdown-item" href="clientarea.php?action=cancel&amp;id={$id}">{if $pendingcancellation}{lang key='cancellationrequested'}{else}{lang key='clientareacancelrequestbutton'}{/if}</a>{/if}
						</div>
					</div>
					{/if}
					<div class="product-content">
						<div class="product-box-icon">
							<i class="fad fa-box"></i>
						</div>
						<h2 class="product-name">{$groupname}<small>{$product}</small></h2>
					</div>    
					{if $domain}  
						<a class="product-footer" href="http://{$domain}">{$domain}</a>
					{/if}
				</div>


			</div>
			<div class="col-md-6 col-12 text-center">
				<div class="shadow__card h-100 d-flex align-items-center justify-content-center flex-column pb-md-6 pb-10">
					{if $bwpercent|substr:0:-1 > 75}
						{if $packagesupgrade}
							<div class="usage__stats__upgrade__btns__wrapper">
								<a href="upgrade.php?type=package&id={$serviceid}" class="btn btn-sm btn-danger">
									 {lang key='usageUpgradeNow'}
								</a>
							</div>
						{/if}
					{elseif $diskpercent|substr:0:-1 > 75}
						{if $packagesupgrade}
							<div class="usage__stats__upgrade__btns__wrapper">
								<a href="upgrade.php?type=package&id={$serviceid}" class="btn btn-sm btn-danger">
									{lang key='usageUpgradeNow'}
								</a>
							</div>
						{/if}
					{/if}
					<div class="card__body w-100">
						<div class="row">
                            <div class="col-6" id="diskUsage">
                                <div class="usage-stats d-flex align-items-center justify-content-center flex-column gap-10">
                                    <span>{lang key='diskUsage'}</span>
                                    <div class="knob-dial">
                                    <input type="text" value="{$diskpercent|substr:0:-1}" class="usage-dial" data-bgColor="#e6e8ec" data-fgColor="#23d4eb" data-angleOffset="-125" data-angleArc="250" data-min="0" data-max="{if substr($diskpercent, 0, -1) > 100}{$diskpercent|substr:0:-1}{else}100{/if}" data-readOnly="true" data-width="104" data-thickness=.3 data-height="80" />        
                                    </div>
                                    <span>{$diskusage} M / {$disklimit} M</span>
                                </div>
                            </div>
                            <div class="col-6" id="bandwidthUsage">
                                <div class="usage-stats d-flex align-items-center justify-content-center flex-column gap-10">
                                    <span>{lang key='bandwidthUsage'}</span>
                                    <input type="text" value="{$bwpercent|substr:0:-1}" class="usage-dial" data-bgColor="#e6e8ec" data-fgColor="#23d4eb" data-angleOffset="-125" data-angleArc="250" data-min="0" data-max="{if substr($bwpercent, 0, -1) > 100}{$bwpercent|substr:0:-1}{else}100{/if}" data-readOnly="true" data-width="104" data-thickness=.3 data-height="80" />
                                    <span>{$bwusage} M / {$bwlimit} M</span>
                                </div>
                            </div>
                        </div>
                        <script src="{$BASE_PATH_JS}/jquery.knob.js"></script>
                        <script type="text/javascript">
                            jQuery(function() {
                                jQuery(".usage-dial").knob({
                                    'change': function (v) { console.log(v); },
                                    draw: function () {
                                        if ($(this.i).val() > 0){
                                            $(this.i).val(this.cv + '%');
                                        }
                                    
                                    }
                                });
                            });
                        </script>
					</div>
					<div class="overview__counter__product__footer">
						{if $bwpercent|substr:0:-1 > 75}
							<div class="text-danger text-center">
								 {if $bwpercent|substr:0:-1 > 100}
									{lang key='usageStatsBwOverLimit'}
								{else}
									{lang key='usageStatsBwLimitNear'}
								{/if}
							</div>
						{elseif $diskpercent|substr:0:-1 > 75}
							<div class="text-danger text-center">
								{if $diskpercent|substr:0:-1 > 100}
									{lang key='usageStatsDiskOverLimit'}
								{else}
									{lang key='usageStatsDiskLimitNear'}
								{/if}
							</div>
						{else}
							<div class="text-center">
								{lang key='usageLastUpdated'} {$lastupdate}
							</div>
						{/if}
					</div>
					
					
				</div>
			</div>
		</div>
	</div>
	
	

    {* Quick Shortcuts *}
    {if $systemStatus == 'Active'}
        {if count($wpInstances) || $allowWpClientInstall}
            <div class="section pt-8">
				<div class="tab__header mb-4 d-flex align-items-center tab__header__with__icon wp__icon">
					<i class="fab fa-wordpress-simple"></i>
					<div class="text">
					<h3 class="coodiv-text-8 mb-0">{lang key='wptk.installWordPress'}</h3>
					<p class="coodiv-text-11 font-weight-400">{lang key='store.addon.wptk.pleskTagline'}</p>
					</div>
				</div>
                <div class="shadow__card" id="cPanelWordPress" data-service-id="{$serviceId}" data-wp-domain="{$wpDomain}">
                    <div class="card__body" {if !count($wpInstances)}style="display: none" {/if}>
                        <div class="row{if !$allowWpClientInstall} no-margin{/if}" id="wordpressInstanceRow" >
                            <div class="col-md-4">
                                <select class="form-control" id="wordPressInstances">
                                    {foreach $wpInstances as $wpInstance}
                                        <option value="{$wpInstance.instanceUrl}">
                                            {$wpInstance.blogTitle}
                                            {if $wpInstance.path} ({$wpInstance.path}){/if}
                                        </option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-outline btn-block" id="btnGoToWordPressHome">
                                    <i class="ls ls-dashboard"></i>
                                    {lang key='wptk.goToWebsite'}
                                </button>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-outline btn-block" id="btnGoToWordPressAdmin">
                                    <i class="ls ls-sign-in"></i>
                                    {lang key='wptk.goToAdmin'}
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card__body">        
                        <div class="row" {if !$allowWpClientInstall}style="display: none"{/if}>
                            <div class="col-md-12 mb-4">
                                <h5 class="coodiv-text-11 mb-0">{lang key='wptk.createNew'}</h5>
                                <p class="coodiv-text-12 font-weight-400 text-gray" id="newWordPressFullUrlPreview">https://{$wpDomain}/</p>
                            </div>
                            <div class="col-md-12" id="wordPressInstallResultRow" style="display: none">
                                <div class="alert alert-success" style="display: none">
                                    {lang key='wptk.installationSuccess'}
                                </div>
                                <div class="alert alert-danger" style="display: none">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="wpNewBlogTitle" placeholder="New Blog Title" />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="wpNewPath" placeholder="Path (optional)" />
                            </div>
                            <div class="col-md-4">
                                <input type="password" class="form-control" id="wpAdminPass" placeholder="Admin Password" />
                            </div>
                        </div>
                    </div>
					<div class="card__footer d-flex align-items-center justify-content-end">
						<button class="btn btn-primary btn-sm d-flex align-items-center gap-5" id="btnInstallWordpress">
							<i class="fal fa-plus"></i>
							{lang key='wptk.installWordPressShort'}
						</button>
					</div>
                </div>
            </div>
        {/if}
        <div class="section pt-8">
			<div class="tab__header mb-4 d-flex align-items-center tab__header__with__icon">
				<i class="fal fa-link"></i>
				<div class="text">
				<h3 class="coodiv-text-8 mb-0">{lang key='quickShortcuts'}</h3>
				<p class="coodiv-text-11 font-weight-400">{lang key='quicknav'} {lang key='shortcuts'}</p>
				</div>
			</div>
            <div class="shadow__card">
                <div class="card__body" id="cPanelQuickShortcutsPanel">
                        <div class="row cpanel-feature-row">
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelEmailAccounts">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Email_Accounts" target="_blank">
                                    <i class="fad fa-inbox"></i>
                                    {$LANG.cPanel.emailAccounts}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelForwarders">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Email_Forwarders" target="_blank">
                                    <i class="fad fa-arrow-alt-to-right"></i>
                                    {$LANG.cPanel.forwarders}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelAutoResponders">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Email_AutoResponders" target="_blank">
                                    <i class="fad fa-wand-magic"></i>
                                    {$LANG.cPanel.autoresponders}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelFileManager">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=FileManager_Home" target="_blank">
                                   <i class="fad fa-folder-open"></i>
                                    {$LANG.fileManager}
                                </a>
                            </div>
                        </div>
                        <div class="row cpanel-feature-row">
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelBackup">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Backups_Home" target="_blank">
                                    <i class="fad fa-calendar-alt"></i>
                                    {$LANG.cPanel.backup}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelSubdomains">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Domains_SubDomains" target="_blank">
                                    <i class="fad fa-globe"></i>
                                    {$LANG.cPanel.subdomains}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelAddonDomains">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Domains_AddonDomains" target="_blank">
                                    <i class="fad fa-plus-circle"></i>
                                    {$LANG.cPanel.addonDomains}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelCronJobs">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Cron_Home" target="_blank">
                                    <i class="fad fa-clock"></i>
                                    {$LANG.cPanel.cronJobs}
                                </a>
                            </div>
                        </div>
                        <div class="row cpanel-feature-row">
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelMySQLDatabases">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Database_MySQL" target="_blank">
                                    <i class="fad fa-database"></i>
                                    {$LANG.mysqlDatabases}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelPhpMyAdmin">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Database_phpMyAdmin" target="_blank">
                                    <i class="fad fa-user-cog"></i>
                                    {$LANG.cPanel.phpMyAdmin}
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 mb-5" id="cPanelAwstats">
                                <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;dosinglesignon=1&amp;app=Stats_AWStats" target="_blank">
                                    <i class="fad fa-chart-line"></i>
                                    {$LANG.cPanel.awstats}
                                </a>
                            </div>
                            {if $hasWPTDeluxe}
                                <div class="col-sm-3 col-xs-6 mb-5" id="cPanelWptk">
                                    <a class="btn btn-default btn-sm d-flex align-items-center gap-5" href="clientarea.php?action=productdetails&amp;id={$serviceid}&amp;addonId={$wptkDeluxeAddonId}&amp;doaddonsignon=1" target="_blank" class="d-block mb-3">
                                        <i class="fad fa-tools"></i>
                                        {$LANG.cPanel.wptk}
                                    </a>
                                </div>
                            {/if}
                        </div>
                </div>
            </div>
        </div>    
         <div class="section pt-8">
			<div class="tab__header mb-4 d-flex align-items-center tab__header__with__icon">
				<i class="fal fa-at"></i>
				<div class="text">
				<h3 class="coodiv-text-8 mb-0">{$LANG.clientareaemails}</h3>
				<p class="coodiv-text-11 font-weight-400">{$LANG.cPanel.createEmailAccount}</p>
				</div>
			</div>
            <div class="shadow__card">
                <div class="card__body" id="cPanelQuickEmailPanel">
					{include file="$template/includes/alert.tpl" type="success" msg=$LANG.cPanel.emailAccountCreateSuccess hide=true idname="emailCreateSuccess" additionalClasses="email-create-feedback"}
					{include file="$template/includes/alert.tpl" type="danger" msg=$LANG.cPanel.emailAccountCreateFailed|cat:' <span class="no__icon d-block" id="emailCreateFailedErrorMsg"></span>' hide=true idname="emailCreateFailed" additionalClasses="email-create-feedback"}
					<form id="frmCreateEmailAccount" onsubmit="doEmailCreate();return false">
						<input type="hidden" name="id" value="{$serviceid}" />
						<input type="hidden" name="email_quota" value="250" />
						<div class="row row-sm">
							<div class="form-group col-sm-6 m-b-0x">
								<label class="col-form-label">{$LANG.contactemail}</label>
								<div class="input-group">
									<input type="text" name="email_prefix" class="form-control" placeholder="{$LANG.cPanel.usernamePlaceholder}">
									<span class="input-group-addon">@{$domain}</span>
								</div>
							</div>
							<div class="form-group col-sm-6 m-b-0x">
								<label class="col-form-label">{$LANG.clientareapassword}</label>
								<div class="input-group">
									<input type="password" name="email_pw" class="form-control" placeholder="{$LANG.cPanel.passwordPlaceholder}">
									<div class="input-group-append input-group-btn">
										<button type="submit" class="btn btn-primary btn-sm d-flex align-items-center gap-5"><i class="fal fa-plus"></i> {$LANG.cPanel.create}</button>
									</div>
								</div>
							</div>
						</div>
					</form>
                </div>
            </div>    
        </div>
    {else}
        <div class="alert alert-warning text-center d-block" role="alert" id="cPanelSuspendReasonPanel">
            {if $suspendreason}
                <strong>{$suspendreason}</strong><br />
            {/if}
            {$LANG.cPanel.packageNotActive} {$status}.<br />
            {if $systemStatus eq "Pending"}
                {$LANG.cPanel.statusPendingNotice}
            {elseif $systemStatus eq "Suspended"}
                {$LANG.cPanel.statusSuspendedNotice}
            {/if}
        </div>
    {/if}
    {if $availableAddonProducts}
        <div class="section pt-8">
			<div class="tab__header mb-4 d-flex align-items-center tab__header__with__icon">
				<i class="fal fa-paperclip"></i>
				<div class="text">
				<h3 class="coodiv-text-8 mb-0">{lang key='addonsExtras'}</h3>
				<p class="coodiv-text-11 font-weight-400">{$LANG.cartproductdesc}</p>
				</div>
			</div>
            <div class="shadow__card">
                <div class="card__body" id="cPanelExtrasPurchasePanel">
					<form method="post" action="cart.php?a=add">
						<input type="hidden" name="serviceid" value="{$serviceid}" />
						<div class="row align-items-center">
							<div class="col">
							<select name="aid" class="form-control">
								{foreach $availableAddonProducts as $addonId => $addonName}
									<option value="{$addonId}">{$addonName}</option>
								{/foreach}
							</select>
							</div>
							<div class="col-auto">
								<button type="submit" class="btn btn-primary btn-sm">
									{lang key='purchaseActivate'}
								</button>
							</div>
						</div>
					</form>
                </div>
            </div>
        </div>    
    {/if}
    <div class="row justify-content-start">
				<div class="col-12">
					<div class="order-domain-select-wrapper coodiv-taboverview-tab-wrapper">
						<div class="order-domain-select">
							<div class="order-domain-select-header">
								<ul class="nav store-domain-tabs">
									<li class="nav-item">
										<a href="#billingInfo" data-toggle="tab" class="nav-link active">{lang key='billingOverview'}</a>
									</li>
									<li class="nav-item">
										<a href="#domainInfo" data-toggle="tab" class="nav-link" aria-expanded="true">{$LANG.clientareahostingdomain}</a>
									</li>
									{if $metricStats}
									<li class="nav-item">
										<a href="#tab-metrics" data-toggle="tab" aria-expanded="true" class="nav-link">{$LANG.metrics.title}</a>
									</li>
									{/if}
									{if $customfields}
									<li class="nav-item">
										<a href="#customFields" data-toggle="tab" aria-expanded="true" class="nav-link">{$LANG.additionalInfo}</a>
									</li>
									{/if}
									{if $configurableoptions}
									<li class="nav-item">
										<a href="#confiOptions" data-toggle="tab" aria-expanded="false" class="nav-link">{$LANG.orderconfigpackage}</a>
									</li>
									{/if}
								</ul>
							</div>
							<div class="order-domain-select-body">
								<div class="tab-content bg-white store-domain-tab-content">
									<div class="tab-pane fade show active text-center" role="tabpanel" id="billingInfo">
										<div class="row">				
											{if $firstpaymentamount neq $recurringamount}
											<div class="col-sm-6 col-md-3 text-right mb-4">
												<div class="d-block coodiv-text-12 text-gray font-weight-400">
													{$LANG.firstpaymentamount}
												</div>
												<div class="font-weight-bold">
													{$firstpaymentamount}
												</div>
											</div>
											{/if}
											<div class="col-sm-6 col-md-3 text-right mb-4">
												<div class="d-block coodiv-text-12 text-gray font-weight-400">
													{$LANG.clientareahostingregdate}
												</div>
												<div class="font-weight-bold">
													{$regdate}
												</div>
											</div>
											{if $billingcycle != $LANG.orderpaymenttermonetime && $billingcycle != $LANG.orderfree}
												<div class="col-sm-6 col-md-3 text-right mb-4">
													<div class="d-block coodiv-text-12 text-gray font-weight-400">
														{$LANG.recurringamount}
													</div>
													<div class="font-weight-bold">
														{$recurringamount}
													</div>
												</div>
											{/if}
											<div class="col-sm-6 col-md-3 text-right mb-4">
												<div class="d-block coodiv-text-12 text-gray font-weight-400">
													{$LANG.clientareahostingnextduedate}
												</div>
												<div class="font-weight-bold">
													{$nextduedate}
												</div>
											</div>
											<div class="col-sm-6 col-md-3 text-right mb-4">
												<div class="d-block coodiv-text-12 text-gray font-weight-400">
													{$LANG.orderbillingcycle}
												</div>
												<div class="font-weight-bold">
													{$billingcycle}
												</div>
											</div>
											<div class="col-sm-6 col-md-3 text-right mb-4">
												<div class="d-block coodiv-text-12 text-gray font-weight-400">
													{$LANG.orderpaymentmethod}
												</div>
												<div class="font-weight-bold">
													{$paymentmethod}
												</div>
											</div>
										</div>			
									</div>
									<div class="tab-pane fade text-center" role="tabpanel" id="domainInfo">
										<div class="cpanel-actions-container">
											<h6 class="text-center coodiv-text-9">{$domain}</h6>
											<div class="cpanel-actions-btn d-flex align-items-center gap-5 justify-content-center">
												<a href="http://{$domain}" class="btn btn-sm btn-primary" target="_blank">{$LANG.visitwebsite}</a>
												{if $domainId}
													<a href="clientarea.php?action=domaindetails&id={$domainId}" class="btn btn-sm btn-primary" target="_blank">{$LANG.managedomain}</a>
												{/if}
												<input type="button" onclick="popupWindow('whois.php?domain={$domain}','whois',650,420);return false;" value="{$LANG.whoisinfo}" class="btn btn-sm btn-primary" />
											</div>
										</div>
									</div>
									{if $metricStats}
									<div class="tab-pane fade text-center" role="tabpanel" id="tab-metrics">
										<div id="cPanelMetricStatsPanel">
											{include file="$template/clientareaproductusagebilling.tpl"}
										</div>
									</div>    
									{/if}
									{if $customfields}
									<div class="tab-pane fade text-center" role="tabpanel" id="customFields">
										<ul class="list-info list-info-bordered">
											{foreach from=$customfields item=field}
												<li>
													<span class="list-info-title">{$field.name}</span>
													<span class="list-info-text">
														{if empty($field.value)}
															{$LANG.blankCustomField}
														{else}
															{$field.value}
														{/if}
													</span>
												</li>
											{/foreach}
										</ul>
									</div>
									{/if}
									{if $configurableoptions}
									<div class="tab-pane fade text-center" role="tabpanel" id="confiOptions">
										<ul class="list-info list-info-bordered">
											{foreach from=$configurableoptions item=configoption}
												<li>
													<span class="list-info-title">{$configoption.optionname}</span>
													<span class="list-info-text">{if $configoption.optiontype eq 3}{if $configoption.selectedqty}{$LANG.yes}{else}{$LANG.no}{/if}{elseif $configoption.optiontype eq 4}{$configoption.selectedqty} x {$configoption.selectedoption}{else}{$configoption.selectedoption}{/if}</span>
												</li>
											{/foreach}
										</ul>
									</div>
									{/if}
								</div>
							</div>
                       </div>
				</div>
		</div>
	</div>
{/if}    