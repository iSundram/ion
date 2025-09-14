{if $registrarcustombuttonresult=="success"}
    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='moduleactionsuccess'}" textcenter=true}
{elseif $registrarcustombuttonresult}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='moduleactionfailed'}" textcenter=true}
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
<div class="tab-content margin-bottom">
    <div class="tab-pane fade show active" id="tabOverview">
	
		<div class="domain__overview__wrapper mb-10">
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-check-circle"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{$domain}</h6>
							<span class="product-status status-{$rawstatus|strtolower}">{$status}</span>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{$LANG.clientareahostingregdate}: </span>
								<span class="coodiv-text-12 font-weight-bold">{$registrationdate}</span>
							</div>
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{$LANG.recurringamount}: </span>
								<span class="coodiv-text-12 font-weight-bold">{$recurringamount} {lang key='every'} {$registrationperiod} {lang key='orderyears'}</span>
							</div>
							{if $suspendreason}
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{$LANG.suspendreason}: </span>
								<span class="coodiv-text-12 font-weight-bold {$suspendreason}">{$nextduedate}</span>
							</div>
							{/if}
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
							<a data-toggle="tooltip" data-placement="bottom" title="{$LANG.domainrenew}" class="item" href="{routePath('domain-renewal', $domain)}"><i class="fal fa-sync"></i> <span class="mobile__text">{$LANG.domainrenew}</span></a>
						</div>
					</div>
				</div>
			</div>
			
			{if $canDomainBeManaged and $renew}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-sync"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{$LANG.domainsautorenew}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{$LANG.domainautorenewstatus}: </span>
								{if $autorenew}
								<span class="coodiv-text-12 font-weight-bold">ON</span>
								{else}
								<span class="coodiv-text-12 font-weight-bold">OFF</span>
								{/if}
							</div>
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{$LANG.domaincurrentrenewaldate}: </span>
								<span class="coodiv-text-12 font-weight-bold">{$nextduedate}</span>
							</div>
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
							<form method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabOverview">
								<input type="hidden" name="id" value="{$domainid}">
								<input type="hidden" name="sub" value="autorenew" />
								{if $autorenew}
									<input type="hidden" name="autorenew" value="disable">
								{else}
									<input type="hidden" name="autorenew" value="enable">
								{/if}     
								<label class="switch switch--lg switch--text">
									<input class="switch__checkbox" type="checkbox" {if $autorenew}checked{/if} onchange="submit()">
									<span class="switch__container"><span class="switch__handle"></span></span>
								</label>    
							</form>			
						</div>
					</div>
				</div>
			</div>
			{/if}
			
			{if $canDomainBeManaged and $managementoptions.contacts}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-user-circle"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{$LANG.domaincontactinfo}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							
							<div class="item">
								<span class="coodiv-text-12 font-weight-400 text-muted">{$LANG.whoisContactWarning}</span>
							</div>
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
							<a data-toggle="tooltip" data-placement="bottom" title="{$LANG.orderForm.edit} {$LANG.domaincontactinfo}" class="item" href="{$WEB_ROOT}/clientarea.php?action=domaincontacts&domainid={$domainid}"><i class="fal fa-user"></i> <span class="mobile__text">{$LANG.orderForm.edit} {$LANG.domaincontactinfo}</span></a>			
						</div>
					</div>
				</div>
			</div>
			{/if}
			
			{if $canDomainBeManaged and $managementoptions.nameservers}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-globe"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{$LANG.domainnameservers}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							
							<div class="item">
								<span class="coodiv-text-12 font-weight-400 text-muted">{$LANG.domainnsexp}</span>
							</div>
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
							<a data-toggle="tooltip" data-placement="bottom" title="{$LANG.orderForm.edit} {$LANG.domainnameservers}" class="item" target="_blanc" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&id={$domainid}#tabNameservers"><i class="fal fa-globe"></i> <span class="mobile__text">Renew domain</span></a>			
						</div>
					</div>
				</div>
			</div>
			{/if}
			
			{if $canDomainBeManaged and $managementoptions.locking}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-lock"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{lang key='domainregistrarlock'}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							<div class="item">
								<span class="coodiv-text-11 font-weight-bold text-muted">{lang key='domainreglockstatus'}: </span>
								{if $lockstatus=="locked"}
								<span class="coodiv-text-12 font-weight-bold">ON</span>
								{else}
								<span class="coodiv-text-12 font-weight-bold">OFF</span>
								{/if}
							</div>
							<div class="item">
								<span class="coodiv-text-12 font-weight-400 text-muted">{lang key='domainlockingexp'}</span>
							</div>
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
						
							<form method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabReglock">
								<input type="hidden" name="id" value="{$domainid}">
								<input type="hidden" name="sub" value="savereglock" />
								{if $lockstatus=="locked"}
									<input type="hidden" name="savereglock" value="disable">
								{else}
									<input type="hidden" name="autorenew" value="enable">
								{/if}     
								<label class="switch switch--lg switch--text">
									<input class="switch__checkbox" type="checkbox" {if $lockstatus=="locked"}checked{/if} onchange="submit()">
									<span class="switch__container"><span class="switch__handle"></span></span>
								</label>    	
							</form>
						
						</div>
					</div>
				</div>
			</div>
			{/if}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-hand-holding-box"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{$LANG.cartaddons}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							
							<div class="item">
								<span class="coodiv-text-12 font-weight-400 text-muted">{$LANG.domainaddonsinfo}</span>
								<a href="#" class="coodiv-text-12 font-weight-400">{$LANG.orderavailableaddons}</a>
							</div>
						</div>
					</div>
					
					<div class="col-md-auto col-12 ml-md-auto">
						<div class="domain__overview__action__item">
							<a data-toggle="tooltip" data-placement="bottom" title="{$LANG.cartaddons}" class="item" target="_blanc" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&id={$domainid}#tabAddons"><i class="fal fa-box"></i> <span class="mobile__text">{$LANG.cartaddons}</span></a>			
						</div>
					</div>
				</div>
			</div>
			{if $sslStatus}
			<div class="domain__overview__item">
				<div class="row justify-content-start align-items-center">
					<div class="col-lg-auto col-12 mb-lg-0 mb-5">
						<div class="domain__overview__first__inner__item domain__overview__activation__status">
							<i class="icon fal fa-shield-check"></i>
							<h6 class="coodiv-text-9 font-weight-bold mb-0">{lang key='navManageSsl'}</h6>
						</div>
					</div>
					<div class="col-md-auto col-12">
						<div class="domain__overview__second__inner__item">
							<div class="item">
								<div class="ssl-options d-flex align-items-center">
									<img src="{$sslStatus->getImagePath()}" width="16" data-type="domain" data-domain="{$domain}" data-showlabel="1" class="{$sslStatus->getClass()} mr-3"/>
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
								<div class="item">
									<span class="coodiv-text-12 font-weight-400 text-muted">{lang key='sslState.startDate'}</span>
									<span id="ssl-startdate">
										{if !$sslStatus->needsResync() || $sslStatus->startDate}
											{$sslStatus->startDate->toClientDateFormat()}
										{else}
											{lang key='loading'}
										{/if}
									</span>
								</div>
							{/if}
							{if $sslStatus->isActive() || $sslStatus->needsResync()}
								<div class="item">
									<span class="coodiv-text-12 font-weight-400 text-muted">{lang key='sslState.issuerName'}</span>
									<span id="ssl-issuer">
										{if !$sslStatus->needsResync() || $sslStatus->issuerName}
											{$sslStatus->issuerName}
										{else}
											{lang key='loading'}
										{/if}
									</span>
								</div>
								<div class="item">
									<span class="coodiv-text-12 font-weight-400 text-muted">{lang key='sslState.expiryDate'}</span>
									<span id="ssl-expirydate">
										{if !$sslStatus->needsResync() || $sslStatus->expiryDate}
											{$sslStatus->expiryDate->toClientDateFormat()}
										{else}
											{lang key='loading'}
										{/if}
									</span>
								</div>
							{/if}
						</div>
					</div>
				</div>
			</div>
			{/if}
		</div>
		{if $registrarclientarea}
			<div class="moduleoutput">
				{$registrarclientarea|replace:'modulebutton':'btn'}
			</div>
		{/if}

		{foreach $hookOutput as $output}
			<div>
				{$output}
			</div>
		{/foreach}
    </div>
    <div class="tab-pane fade" id="tabAutorenew">
		<div class="tab__header mb-5">
			<h3 class="coodiv-text-8 mb-0">{lang key='domainsautorenew'}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key='domainrenewexp'}</p>
		</div>
		{if $changeAutoRenewStatusSuccessful}
			{include file="$template/includes/alert.tpl" type="success" msg="{lang key='changessavedsuccessfully'}" textcenter=true}
		{/if}
		<form method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabAutorenew">
			<input type="hidden" name="id" value="{$domainid}">
			<input type="hidden" name="sub" value="autorenew" />
			<div class="panel panel-switch">
				<div class="panel-body"> 
					{if $autorenew}
						<input type="hidden" name="autorenew" value="disable">
					{else}
						<input type="hidden" name="autorenew" value="enable">
					{/if}     
					<label class="switch switch--lg switch--text">
						<span class="switch-label">{$LANG.domainautorenewstatus}: </span>   
						<input class="switch__checkbox" type="checkbox" {if $autorenew}checked{/if} onchange="submit()">
						<span class="switch__container"><span class="switch__handle"></span></span>
					</label>    
				</div>
				
			</div>
		</form>
    </div>
    <div class="tab-pane fade" id="tabNameservers">
		{if $nameservererror}
			{include file="$template/includes/alert.tpl" type="error" msg=$nameservererror textcenter=true}
		{/if}
		{if $subaction eq "savens"}
			{if $updatesuccess}
				{include file="$template/includes/alert.tpl" type="success" msg="{lang key='changessavedsuccessfully'}" textcenter=true}
			{elseif $error}
				{include file="$template/includes/alert.tpl" type="error" msg=$error textcenter=true}
			{/if}
		{/if}
		<div class="shadow__card">
			<div class="card__header">
				<div class="tab__header">
					<h3 class="coodiv-text-8 mb-0">{lang key='domainnameservers'}</h3>
					<p class="coodiv-text-11 font-weight-400">{lang key='domainnsexp'}</p>
				</div>
			</div>
			<form role="form" method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabNameservers">
				<div class="card__body card-shadow-form">
				<input type="hidden" name="id" value="{$domainid}" />
				<input type="hidden" name="sub" value="savens" />			
				<div class="form-group mt-4">
					<label for="default" class="coodiv-check-input coodiv-radio-input-cercle d-flex">
						<input type="radio" class="coodiv-check-input-click" name="nschoice" value="default" onclick="disableFields('domnsinputs',true)" {if $defaultns} checked{/if} />
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">{lang key='nschoicedefault'}</p>
					</label>
					<label for="custom" class="coodiv-check-input coodiv-radio-input-cercle d-flex">
						<input type="radio" class="coodiv-check-input-click" name="nschoice" value="custom" onclick="disableFields('domnsinputs',false)" {if $defaultns} checked{/if} />
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">{lang key='nschoicecustom'}</p>
					</label>
				</div>
				<div class="card-shadow-form-body">
				{for $num=1 to 5}
					<div class="form-group">
						<label class="col-form-label" for="inputNs{$num}">{lang key='clientareanameserver'} {$num}</label>
						<input type="text" name="ns{$num}" class="form-control domnsinputs" id="inputNs{$num}" value="{$nameservers[$num].value}" />
					</div>
				{/for}
				</div>
				</div>
				<div class="card__footer d-flex justify-content-end">
					<button type="submit" class="btn btn-primary btn-sm">{lang key='changenameservers'}</button>
				</div>
			</form>
		</div>
    </div>
	
    <div class="tab-pane fade" id="tabReglock">
		
		{if $subaction eq "savereglock"}
			{if $updatesuccess}
				{include file="$template/includes/alert.tpl" type="success" msg="{lang key='changessavedsuccessfully'}" textcenter=true}
			{elseif $error}
				{include file="$template/includes/alert.tpl" type="error" msg=$error textcenter=true}
			{/if}
		{/if}
			
		<div class="tab__header mb-5">
			<h3 class="coodiv-text-8 mb-0">{lang key='domainregistrarlock'}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key='domainlockingexp'}</p>
		</div>
		
		<form method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabReglock">
		<input type="hidden" name="id" value="{$domainid}">
		<input type="hidden" name="sub" value="savereglock" />
			<div class="panel panel-switch">
				<div class="panel-body"> 
					{if $lockstatus=="locked"}
						<input type="hidden" name="savereglock" value="disable">
					{else}
						<input type="hidden" name="autorenew" value="enable">
					{/if}     
					<label class="switch switch--lg switch--text">
						<span class="switch-label">{lang key='domainreglockstatus'}: </span>   
						<input class="switch__checkbox" type="checkbox" {if $lockstatus=="locked"}checked{/if} onchange="submit()">
						<span class="switch__container"><span class="switch__handle"></span></span>
					</label>    
				</div>
				
			</div>
		</form>
    </div>
    <div class="tab-pane fade" id="tabRelease">

        <div class="card">
            <div class="card-body">

                <h3 class="card-title">{lang key='domainrelease'}</h3>

                {if $releaseDomainSuccessful}
                    {include file="$template/includes/alert.tpl" type="success" msg="{lang key='changessavedsuccessfully'}" textcenter="true"}
                {elseif !empty($error)}
                    {include file="$template/includes/alert.tpl" type="error" msg="$error" textcenter="true"}
                {/if}

                {include file="$template/includes/alert.tpl" type="info" msg="{lang key='domainreleasedescription'}"}

                <form role="form" method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#tabRelease">
                    <input type="hidden" name="sub" value="releasedomain">
                    <input type="hidden" name="id" value="{$domainid}">

                    <div class="form-group row">
                        <label for="inputReleaseTag" class="col-4 col-form-label">{lang key='domainreleasetag'}</label>
                        <div class="col-6 col-sm-5">
                            <input type="text" class="form-control" id="inputReleaseTag" name="transtag" />
                        </div>
                    </div>

                    <p class="text-center">
                        <button type="submit" class="btn btn-primary">
                            {lang key='domainrelease'}
                        </button>
                    </p>
                </form>

            </div>
        </div>

    </div>
    <div class="tab-pane fade" id="tabAddons">
	
		<div class="tab__header mb-5">
			<h3 class="coodiv-text-8 mb-0">{lang key='domainaddons'}</h3>
			<p class="coodiv-text-11 font-weight-400">{lang key='domainaddonsinfo'}</p>
		</div>

        <div class="row justify-content-start">
			{if $addons.idprotection}
				<div class="col-lg-4 col-md-6 col-12">
					<div class="domains-details-addons-box">
					<i class="fad fa-shield"></i>
					<h6 class="coodiv-text-9 font-weight-bold mb-0">{lang key='domainidprotection'}</h6>
					<p class="coodiv-text-11">{lang key='domainaddonsidprotectioninfo'}</p>
					<form class="mt-7" action="clientarea.php?action=domainaddons" method="post">
						<input type="hidden" name="id" value="{$domainid}"/>
						{if $addonstatus.idprotection}
							<input type="hidden" name="disable" value="idprotect"/>
							<button type="submit" class="btn btn-sm btn-default disable">
								{lang key='disable'}
							</button>
						{else}
							<input type="hidden" name="buy" value="idprotect"/>
							<button type="submit" class="btn btn-sm btn-success">
								{lang key='domainaddonsbuynow'} {$addonspricing.idprotection}
							</button>
						{/if}
					</form>
					</div>
				</div>
			{/if}

			{if $addons.dnsmanagement}
				<div class="col-lg-4 col-md-6 col-12">
					<div class="domains-details-addons-box">
						<i class="fad fa-cloud"></i>
						<h6 class="coodiv-text-9 font-weight-bold mb-0">{lang key='domainaddonsdnsmanagement'}</h6>
						<p class="coodiv-text-11">{lang key='domainaddonsdnsmanagementinfo'}</p>
						<form class="mt-7" action="clientarea.php?action=domainaddons" method="post">
							<input type="hidden" name="id" value="{$domainid}"/>
							{if $addonstatus.dnsmanagement}
								<input type="hidden" name="disable" value="dnsmanagement"/>
								<a class="btn btn-sm btn-success" href="clientarea.php?action=domaindns&domainid={$domainid}">{lang key='manage'}</a>
								<button type="submit" class="btn btn-sm btn-default disable">
									{lang key='disable'}
								</button>
							{else}
								<input type="hidden" name="buy" value="dnsmanagement"/>
								<button type="submit" class="btn btn-sm btn-success">
									{lang key='domainaddonsbuynow'} {$addonspricing.dnsmanagement}
								</button>
							{/if}
						</form>
					</div>
				</div>
			{/if}

			{if $addons.emailforwarding}
				<div class="col-lg-4 col-md-6 col-12">
					<div class="domains-details-addons-box">
						<i class="fad fa-envelope"></i>
						 <h6 class="coodiv-text-9 mb-0">{lang key='domainemailforwarding'}</h6>
						 <p class="coodiv-text-11 font-weight-400">{lang key='domainaddonsemailforwardinginfo'}</p>
						<form class="mt-7" action="clientarea.php?action=domainaddons" method="post">
							<input type="hidden" name="id" value="{$domainid}"/>
							{if $addonstatus.emailforwarding}
								<input type="hidden" name="disable" value="emailfwd"/>
								<a class="btn btn-sm btn-success" href="clientarea.php?action=domainemailforwarding&domainid={$domainid}">{lang key='manage'}</a>
								<button type="submit" class="btn btn-sm btn-default disable">
									{lang key='disable'}
								</button>
							{else}
								<input type="hidden" name="buy" value="emailfwd"/>
								<button type="submit" class="btn btn-sm btn-success">
									{lang key='domainaddonsbuynow'} {$addonspricing.emailforwarding}
								</button>
							{/if}
						</form>
					</div>
				</div>
			{/if}
		</div>
		
		
		
    </div>
</div>

