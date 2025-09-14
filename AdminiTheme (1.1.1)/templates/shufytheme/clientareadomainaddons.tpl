<form method="post" action="{$smarty.server.PHP_SELF}?action=domainaddons">
	<input type="hidden" name="{$action}" value="{$addon}">
	<input type="hidden" name="id" value="{$domainid}">
	<input type="hidden" name="confirm" value="1">
	<input type="hidden" name="token" value="{$token}">

	{if $action eq "buy"}
		<input type="hidden" name="buy" value="{$addon}">
		{if $addon eq "dnsmanagement"}
			<div class="card">
				<div class="card__body">
					<div class="tab__header">
						<h3 class="coodiv-text-8 mb-0">{lang key='domainaddonsdnsmanagement'} {lang key='clientareaaddonsfor'} <span class="badge badge-info">{$domain}</span></h3>
						<p class="coodiv-text-11 font-weight-400">{lang key='domainaddonsdnsmanagementinfo'}</p>
					</div>
				</div>
				<div class="card__footer d-flex align-items-center gap-10">
					<button type="submit" name="enable" class="btn btn-sm btn-success">
					{lang key='domainaddonsbuynow'} {$addonspricing.dnsmanagement}{lang key='domainaddonsperyear'}
					</button>
					<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
						{lang key='cancel'}
					</a>
				</div>
	        </div>
		{elseif $addon eq "emailfwd"}
			<div class="card">
				<div class="card__body">
					<div class="tab__header">
						<h3 class="coodiv-text-8 mb-0">{lang key='domainemailforwarding'} {lang key='clientareaaddonsfor'} <span class="badge badge-info">{$domain}</span></h3>
						<p class="coodiv-text-11 font-weight-400">{lang key='domainaddonsemailforwardinginfo'}</p>
					</div>
				</div>
				<div class="card__footer d-flex align-items-center gap-10">
					<button type="submit" name="enable" class="btn btn-sm btn-success">
					{lang key='domainaddonsbuynow'} {$addonspricing.emailforwarding}{lang key='domainaddonsperyear'}
					</button>
					<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
						{lang key='cancel'}
					</a>
				</div>
	        </div>
		{elseif $addon eq "idprotect"}
			<div class="card">
				<div class="card__body">
					<div class="tab__header">
						<h3 class="coodiv-text-8 mb-0">{lang key='domainidprotection'} {lang key='clientareaaddonsfor'} <span class="badge badge-info">{$domain}</span></h3>
						<p class="coodiv-text-11 font-weight-400">{lang key='domainaddonsidprotectioninfo'}</p>
					</div>
				</div>
				<div class="card__footer d-flex align-items-center gap-10">
					<button type="submit" name="enable" class="btn btn-sm btn-success">
					{lang key='domainaddonsbuynow'} {$addonspricing.idprotection}{lang key='domainaddonsperyear'}
					</button>
					<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
						{lang key='cancel'}
					</a>
				</div>
	        </div>
		{/if}
		
			
		{elseif $action eq "disable"}
			<input type="hidden" name="disable" value="{$addon}">
			<div class="card">
				<div class="card__body">
					<div class="tab__header">
						<h3 class="coodiv-text-8 mb-0">
						{lang key='disable'} 
						{if $addon eq "dnsmanagement"}
							{lang key='domainaddonsdnsmanagement'}
						{elseif $addon eq "emailfwd"}
							{lang key='domainemailforwarding'}
						{elseif $addon eq "idprotect"}
							{lang key='domainidprotection'}
						{/if} {lang key='clientareaaddonsfor'} 
						<span class="badge badge-info">{$domain}</span>
						</h3>
						<p class="coodiv-text-11 font-weight-400">
						{lang key='domainaddonscancelareyousure'}
						</p>
					</div>
				</div>

				{if $success}
					<div class="card__body">
						{include file="$template/includes/alert.tpl" type="success" msg="{lang key='domainaddonscancelsuccess'}" textcenter=true}
					</div>
					<div class="card__footer d-flex align-items-center gap-10">
					<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
						{lang key='back'}
					</a>
					</div>
				{elseif $error}
					<div class="card__body">
						{include file="$template/includes/alert.tpl" type="error" msg="{lang key='domainaddonscancelfailed'}" textcenter=true}
					</div>
					<div class="card__footer d-flex align-items-center gap-10">
					<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
						{lang key='back'}
					</a>
					</div>
				{else}
					<div class="card__footer d-flex align-items-center gap-10">
						<button type="submit" name="enable" class="btn btn-danger btn-sm">
							{lang key='domainaddonsconfirm'}
						</button>
						<a href="clientarea.php?action=domaindetails&id={$domainid}" class="btn btn-sm btn-default">
							{lang key='cancel'}
						</a>
					</div>
				{/if}
	        </div>
		{/if}
</form>


