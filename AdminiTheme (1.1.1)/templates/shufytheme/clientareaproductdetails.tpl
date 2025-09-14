{if $modulecustombuttonresult}
    {if $modulecustombuttonresult == "success"}
        {include file="$template/includes/alert.tpl" type="success" msg="{lang key='moduleactionsuccess'}" textcenter=true idname="alertModuleCustomButtonSuccess"}
    {else}
        {include file="$template/includes/alert.tpl" type="error" msg="{lang key='moduleactionfailed'}"|cat:' ':$modulecustombuttonresult textcenter=true idname="alertModuleCustomButtonFailed"}
    {/if}
{/if}
{if $pendingcancellation}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='cancellationrequestedexplanation'}" textcenter=true idname="alertPendingCancellation"}
{/if}
{if $unpaidInvoice}
	<div class="alert alert-{if $unpaidInvoiceOverdue}danger{else}warning{/if} alert-dismissible fade show custom-alert-text network-issue-alert" id="alert{if $unpaidInvoiceOverdue}Overdue{else}Unpaid{/if}Invoice" role="alert">
	  <h6 class="alert-title coodiv-text-10 mb-1">{$unpaidInvoiceMessage}</h6>
	  <p>{$LANG.overdueinvoicesdesc|replace:"%s":""|replace:";%s":""}</p>		  
	  <div class="alert__options">
		  <a href="viewinvoice.php?id={$unpaidInvoice}" class="btn btn-sm btn-{if $unpaidInvoiceOverdue}danger{else}warning{/if} btn-block btn-action">
			{lang key='payInvoice'}
		  </a>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fal fa-times"></i></button>
	  </div>
	</div>
{/if}
<div class="row justify-content-start">
<div class="{if $coodivsettings.servicemarketconnect=='activated' || $coodivsettings.id != '1'}col-md-8{/if} col-12">
<div class="primary-content">
<div class="tab-content margin-bottom">
	<div class="tab-pane fade show active coodiv-taboverview" role="tabpanel" id="tabOverview">
		{if $tplOverviewTabOutput}
			<div class="coodiv-taboverview-module">
				{$tplOverviewTabOutput}
			</div>
		{else}
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
					<div class="product-info">
						<ul class="list-info">
							<li>
								<span class="list-info-title">{$LANG.clientareahostingregdate}</span>
								<span class="list-info-text">{$regdate}</span>
							</li>
							{if $firstpaymentamount neq $recurringamount}
								<li>
									<span class="list-info-title">{$LANG.firstpaymentamount}</span>
									<span class="list-info-text">{$firstpaymentamount}</span>
								</li>
							{/if}
							{if $billingcycle != $LANG.orderpaymenttermonetime && $billingcycle != $LANG.orderfree}
								<li>
									<span class="list-info-title">{$LANG.recurringamount}</span>
									<span class="list-info-text">{$recurringamount}</span>
								</li>
							{/if}
							{if $quantitySupported && $quantity > 1}
								<li>
									<span class="list-info-title">{lang key='quantity'}</span>
									<span class="list-info-text">{$quantity}</span>
								</li>  
							{/if}
							<li>
								<span class="list-info-title">{$LANG.orderbillingcycle}</span>
								<span class="list-info-text">{$billingcycle}</span>
							</li>
							<li>
								<span class="list-info-title">{$LANG.clientareahostingnextduedate}</span>
								<span class="list-info-text">{$nextduedate}</span>
							</li>
							<li>
								<span class="list-info-title">{$LANG.orderpaymentmethod}</span>
								<span class="list-info-text"> {$paymentmethod}</span>
							</li>
							{if $suspendreason}
								<li>
									<span class="list-info-title">{$LANG.suspendreason}</span>
									<span class="list-info-text">{$suspendreason}</span>
								</li>
							{/if}
						</ul>
					</div>
				</div>
			</div>
		</div>

		{if $domain || $moduleclientarea || $configurableoptions || $customfields || $lastupdate}
		<div class="row justify-content-start">
				<div class="col-12">
					<div class="order-domain-select-wrapper coodiv-taboverview-tab-wrapper">
						<div class="order-domain-select">
							<div class="order-domain-select-header">
								<ul class="nav store-domain-tabs">
									{if $domain}
										<li class="nav-item">
											<a href="#domain" data-toggle="tab" class="nav-link active"><i class="fas fa-globe fa-fw"></i> {if $type eq "server"}{lang key='sslserverinfo'}{elseif ($type eq "hostingaccount" || $type eq "reselleraccount") && $serverdata}{lang key='hostingInfo'}{else}{lang key='clientareahostingdomain'}{/if}</a>
										</li>
									{elseif $moduleclientarea}
										<li class="nav-item">
											<a href="#manage" data-toggle="tab" class="nav-link active"><i class="fas fa-globe fa-fw"></i> {lang key='manage'}</a>
										</li>
									{/if}
									{if $configurableoptions}
										<li class="nav-item">
											<a href="#configoptions" data-toggle="tab" class="nav-link{if !$domain && !$moduleclientarea} active{/if}"><i class="fas fa-cubes fa-fw"></i> {lang key='orderconfigpackage'}</a>
										</li>
									{/if}
									{if $metricStats}
										<li class="nav-item">
											<a href="#metrics" data-toggle="tab" class="nav-link{if !$domain && !$moduleclientarea && !$configurableoptions} active{/if}"><i class="fas fa-chart-line fa-fw"></i> {lang key='metrics.title'}</a>
										</li>
									{/if}
									{if $customfields}
										<li class="nav-item">
											<a href="#additionalinfo" data-toggle="tab" class="nav-link{if !$domain && !$moduleclientarea && !$metricStats && !$configurableoptions} active{/if}"><i class="fas fa-info fa-fw"></i> {lang key='additionalInfo'}</a>
										</li>
									{/if}
									{if $lastupdate}
										<li class="nav-item">
											<a href="#resourceusage" data-toggle="tab" class="nav-link{if !$domain && !$moduleclientarea && !$configurableoptions && !$customfields} active{/if}"><i class="fas fa-inbox fa-fw"></i> {lang key='resourceUsage'}</a>
										</li>
									{/if}
								</ul>
							</div>
					
							<div class="order-domain-select-body">
								<div class="tab-content bg-white store-domain-tab-content">
					
								{if $domain}
									<div class="tab-pane fade show active text-center" role="tabpanel" id="domain">
										{if $type eq "server"}
											<div class="row">
												<div class="col-sm-5 text-right">
													<strong>{lang key='serverhostname'}</strong>
												</div>
												<div class="col-sm-7 text-left">
													{$domain}
												</div>
											</div>
											{if $dedicatedip}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='primaryIP'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$dedicatedip}
													</div>
												</div>
											{/if}
											{if $assignedips}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='assignedIPs'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$assignedips|nl2br}
													</div>
												</div>
											{/if}
											{if $ns1 || $ns2}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='domainnameservers'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$ns1}<br />{$ns2}
													</div>
												</div>
											{/if}
										{else}
											{if $domain}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='orderdomain'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$domain}
													</div>
												</div>
											{/if}
											{if $username}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='serverusername'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$username}
													</div>
												</div>
											{/if}
											{if $serverdata}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='servername'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$serverdata.hostname}
													</div>
												</div>
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='domainregisternsip'}</strong>
													</div>
													<div class="col-sm-7 text-left">
														{$serverdata.ipaddress}
													</div>
												</div>
												{if $serverdata.nameserver1 || $serverdata.nameserver2 || $serverdata.nameserver3 || $serverdata.nameserver4 || $serverdata.nameserver5}
													<div class="row">
														<div class="col-sm-5 text-right">
															<strong>{lang key='domainnameservers'}</strong>
														</div>
														<div class="col-sm-7 text-left">
															{if $serverdata.nameserver1}{$serverdata.nameserver1} ({$serverdata.nameserver1ip})<br />{/if}
															{if $serverdata.nameserver2}{$serverdata.nameserver2} ({$serverdata.nameserver2ip})<br />{/if}
															{if $serverdata.nameserver3}{$serverdata.nameserver3} ({$serverdata.nameserver3ip})<br />{/if}
															{if $serverdata.nameserver4}{$serverdata.nameserver4} ({$serverdata.nameserver4ip})<br />{/if}
															{if $serverdata.nameserver5}{$serverdata.nameserver5} ({$serverdata.nameserver5ip})<br />{/if}
														</div>
													</div>
												{/if}
											{/if}
											{if $domain && $sslStatus}
												<div class="row">
													<div class="col-sm-5 text-right">
														<strong>{lang key='sslState.sslStatus'}</strong>
													</div>
													<div class="col-sm-7 text-left{if $sslStatus->isInactive()} ssl-inactive{/if}">
														<img src="{$sslStatus->getImagePath()}" width="12" data-type="service" data-domain="{$domain}" data-showlabel="1" class="{$sslStatus->getClass()}"/>
														<span id="statusDisplayLabel">
															{if !$sslStatus->needsResync()}
																{$sslStatus->getStatusDisplayLabel()}
															{else}
																{lang key='loading'}
															{/if}
														</span>
													</div>
												</div>
												{if $sslStatus->isActive() || $sslStatus->needsResync()}
													<div class="row">
														<div class="col-sm-5 text-right">
															<strong>{lang key='sslState.startDate'}</strong>
														</div>
														<div class="col-sm-7 text-left" id="ssl-startdate">
															{if !$sslStatus->needsResync() || $sslStatus->startDate}
																{$sslStatus->startDate->toClientDateFormat()}
															{else}
																{lang key='loading'}
															{/if}
														</div>
													</div>
													<div class="row">
														<div class="col-sm-5 text-right">
															<strong>{lang key='sslState.expiryDate'}</strong>
														</div>
														<div class="col-sm-7 text-left" id="ssl-expirydate">
															{if !$sslStatus->needsResync() || $sslStatus->expiryDate}
																{$sslStatus->expiryDate->toClientDateFormat()}
															{else}
																{lang key='loading'}
															{/if}
														</div>
													</div>
													<div class="row">
														<div class="col-sm-5 text-right">
															<strong>{lang key='sslState.issuerName'}</strong>
														</div>
														<div class="col-sm-7 text-left" id="ssl-issuer">
															{if !$sslStatus->needsResync() || $sslStatus->issuerName}
																{$sslStatus->issuerName}
															{else}
																{lang key='loading'}
															{/if}
														</div>
													</div>
												{/if}
											{/if}
											<br>
											<div class="d-flex align-items-center justify-content-end gap-10">
												<a href="http://{$domain}" class="btn btn-sm btn-default" target="_blank">{lang key='visitwebsite'}</a>
												{if $domainId}
													<a href="clientarea.php?action=domaindetails&id={$domainId}" class="btn btn-sm btn-primary" target="_blank">{lang key='managedomain'}</a>
												{/if}
											</div>
										{/if}
										{if $moduleclientarea}
											<div class="text-center module-client-area">
												{$moduleclientarea}
											</div>
										{/if}
									</div>
									{if $sslStatus}
										<div class="tab-pane fade text-center" role="tabpanel" id="ssl-info">
											{if $sslStatus->isActive()}
												<div class="alert alert-success" role="alert">
													{lang key='sslActive' expiry=$sslStatus->expiryDate->toClientDateFormat()}
												</div>
											{else}
												<div class="alert alert-warning ssl-required" role="alert">
													{lang key='sslInactive'}
												</div>
											{/if}
										</div>
									{/if}
								{elseif $moduleclientarea}
									<div class="tab-pane fade{if !$domain} show active{/if} text-center" role="tabpanel" id="manage">
										{if $moduleclientarea}
											<div class="text-center module-client-area">
												{$moduleclientarea}
											</div>
										{/if}
									</div>
								{/if}
								{if $configurableoptions}
									<div class="tab-pane fade{if !$domain && !$moduleclientarea} show active{/if} text-center" role="tabpanel" id="configoptions">
										{foreach from=$configurableoptions item=configoption}
											<div class="row">
												<div class="col-sm-5">
													<strong>{$configoption.optionname}</strong>
												</div>
												<div class="col-sm-7 text-left">
													{if $configoption.optiontype eq 3}{if $configoption.selectedqty}{lang key='yes'}{else}{lang key='no'}{/if}{elseif $configoption.optiontype eq 4}{$configoption.selectedqty} x {$configoption.selectedoption}{else}{$configoption.selectedoption}{/if}
												</div>
											</div>
										{/foreach}
									</div>
								{/if}
								{if $metricStats}
									<div class="tab-pane fade{if !$domain && !$moduleclientarea && !$configurableoptions} show active{/if}" role="tabpanel" id="metrics">
										{include file="$template/clientareaproductusagebilling.tpl"}
									</div>
								{/if}
								{if $customfields}
									<div class="tab-pane fade{if !$domain && !$moduleclientarea && !$configurableoptions && !$metricStats} show active{/if} text-center" role="tabpanel" id="additionalinfo">
										{foreach from=$customfields item=field}
											<div class="row">
												<div class="col-sm-5">
													<strong>{$field.name}</strong>
												</div>
												<div class="col-sm-7 text-left">
													{$field.value}
												</div>
											</div>
										{/foreach}
									</div>
								{/if}
								{if $lastupdate}
									<div class="tab-pane fade text-center" role="tabpanel" id="resourceusage">
										<div class="row">
											<div class="col-sm-10 offset-sm-1">
												<div class="row">
													<div class="col-sm-6">
														<h4>{lang key='diskSpace'}</h4>
														<input type="text" value="{$diskpercent|substr:0:-1}" class="dial-usage" data-width="100" data-height="100" data-min="0" data-readOnly="true" />
														<p>{$diskusage}MB / {$disklimit}MB</p>
													</div>
													<div class="col-sm-6">
														<h4>{lang key='bandwidth'}</h4>
														<input type="text" value="{$bwpercent|substr:0:-1}" class="dial-usage" data-width="100" data-height="100" data-min="0" data-readOnly="true" />
														<p>{$bwusage}MB / {$bwlimit}MB</p>
													</div>
												</div>
											</div>
										</div>
										<p class="text-muted mb-0">{lang key='clientarealastupdated'}: {$lastupdate}</p>
										<script src="{$BASE_PATH_JS}/jquery.knob.js"></script>
										<script>
											jQuery(function() {
												jQuery(".dial-usage").knob({
													'format': function(v) {
														alert(v);
													}
												});
											});
										</script>
									</div>

								{/if}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{/if}
		{/if}
	</div>
	
	
    <div class="tab-pane fade" role="tabpanel" id="tabDownloads">

        <h3>{lang key='downloadstitle'}</h3>

        {include file="$template/includes/alert.tpl" type="info" msg="{lang key="clientAreaProductDownloadsAvailable"}" textcenter=true}

        <div class="row">
            {foreach from=$downloads item=download}
                <div class="col-10 offset-1">
                    <h4>{$download.title}</h4>
                    <p>
                        {$download.description}
                    </p>
                    <p>
                        <a href="{$download.link}" class="btn btn-default"><i class="fas fa-download"></i> {lang key='downloadname'}</a>
                    </p>
                </div>
            {/foreach}
        </div>

    </div>
    <div class="tab-pane fade" id="tabAddons">

		<div class="tab__header mb-8">
			<h3 class="coodiv-text-8 mb-0">{lang key='clientareahostingaddons'}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key='orderaddondescription'}</p>
		</div>

        <div class="row">
            {foreach from=$addons item=addon}
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="productdetails-addons-box">
                        <div class="productdetails-addons-box-header">
                            <div class="productdetails-addons-box-name">
							<h6 class="coodiv-text-10 mb-0">{$addon.name}</h6>
							<span class="label status-{$addon.rawstatus|strtolower}">{$addon.status}</span></div>
                        </div>
                        <div class="productdetails-addons-box-body">
							<ul class="list-info">
								<li>
									<span class="list-info-title">{lang key='registered'}</span>
									<span class="list-info-text">{$addon.regdate}</span>
								</li>
								<li>
									<span class="list-info-title">{lang key='clientareahostingnextduedate'}</span>
									<span class="list-info-text">{$addon.nextduedate}</span>
								</li>
								<li>
									<span class="list-info-title">{lang key='pricing'}</span>
									<span class="list-info-text">{$addon.pricing}</span>
								</li>
							</ul>
                        </div>
						{if $addon.managementActions}
                        <div class="productdetails-addons-box-footer">
                            {$addon.managementActions|replace:"btn btn-default":"btn btn-sm btn-default"}
                        </div>
						{/if}
                    </div>
                </div>
            {/foreach}
        </div>

    </div>
    <div class="tab-pane fade" id="tabChangepw">
		<script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
		<script>
			window.langPasswordStrength = "{lang key='pwstrength'}";
			window.langPasswordWeak = "{lang key='pwstrengthweak'}";
			window.langPasswordModerate = "{lang key='pwstrengthmoderate'}";
			window.langPasswordStrong = "{lang key='pwstrengthstrong'}";
			jQuery(document).ready(function() {
				jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
			});
		</script>
		<div class="card">
		<div class="card__header mb-8">
			<h3 class="coodiv-text-8 mb-0">{lang key='serverchangepassword'}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key='clientarealeaveblank'}</p>
		</div>
		{if $modulechangepwresult}
			{if $modulechangepwresult == "success"}
				{include file="$template/includes/alert.tpl" type="success" msg=$modulechangepasswordmessage textcenter=true}
			{elseif $modulechangepwresult == "error"}
				{include file="$template/includes/alert.tpl" type="error" msg=$modulechangepasswordmessage|strip_tags textcenter=true}
			{/if}
		{/if}
		<form class="using-password-strength" method="post" action="{$smarty.server.PHP_SELF}?action=productdetails#tabChangepw" role="form">
			<input type="hidden" name="id" value="{$id}" />
			<input type="hidden" name="modulechangepassword" value="true" />
			<div class="card__body">
			<div id="newPassword1" class="form-group has-feedback">
				<label for="password" class="form-control-label d-flex align-items-center justify-content-between">{lang key='clientareapassword'}  <span class="small" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</span></label>
				<div class="input-control position-relative">
					<input type="password" name="newpw" id="inputNewPassword1" data-targetfields="inputNewPassword1,inputNewPassword2" class="form-control" autocomplete="off">
					{include file="$template/includes/pwstrength.tpl"}
					<button title="{lang key='generatePassword.btnLabel'}" type="button" class="generate-pswrd-button generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
						<i class="fal fa-lock"></i>
					</button>
					<div class="paswrd__stenth__bar progress">
						<div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar"></div>
					</div>
				</div>
			</div>
			<div id="newPassword2" class="form-group has-feedback">
				<label for="inputNewPassword2" class="col-form-label">{lang key='confirmnewpassword'}</label>
				<input type="password" class="form-control" name="confirmpw" id="inputNewPassword2" autocomplete="off" />
				<div class="input__pass__msg" id="inputNewPassword2Msg"></div>
			</div>
			</div>
			<div class="card__footer d-flex justify-content-end row">
				<div class="col-auto gap-10 d-flex align-items-center">
					<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" />
					<input class="btn btn-sm btn-primary" type="submit" value="{lang key='clientareasavechanges'}" />
				</div>
			</div>
		</form>
		</div>
    </div>
</div>
</div>
</div>
{if $coodivsettings.servicemarketconnect=='activated' || $coodivsettings.id != '1'}
	<div class="col-md-4 col-12">
		{include file="$template/includes/theme-core/slider.tpl" }
	</div>
{/if}
</div>
