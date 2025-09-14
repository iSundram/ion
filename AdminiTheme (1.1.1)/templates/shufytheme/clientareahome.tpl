{assign var=hiddenfromclientarea value=[CodeguardLogin,SitelockLogin,ThreesixtymonitoringLogin,XovinowLogin,SitebuilderLogin,SpamexpertsLogin,WeeblyLogin]}
{assign var=alertsfromclientarea value=[expiringDomainsPanel,overdueInvoicesPanel,unpaidInvoicesPanel]}
{function name=outputHomePanelsalerts}
	{if in_array($item->getAttribute('id'), $alertsfromclientarea)}		
		<div menuItemName="{$item->getName()}" class="alert {if $item->getName() == "Overdue Invoices" || $item->getName() == "Unpaid Invoices"}alert-danger{else}alert-warning{/if} alert-dismissible fade show custom-alert-text {if $item->getClass()} {$item->getClass()}{/if}" {if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if} role="alert">
		  <h6 class="alert-title coodiv-text-10 mb-1">{$item->getLabel()}</h6>
		  {if $item->hasBodyHtml()}{$item->getBodyHtml()}{/if}
		  <div class="alert__options">
			  {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}<a href="{$item->getExtra('btn-link')}" class="btn btn-sm btn-light">{$item->getExtra('btn-text')}</a>{/if}
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fal fa-times"></i></button>
		  </div>
		</div>
	{/if}
{/function}
{function name=outputHomePanels}
	{if !in_array($item->getName(), $hiddenfromclientarea) && !in_array($item->getAttribute('id'), $alertsfromclientarea)}
		<div menuItemName="{$item->getName()}" class="card {if $item->getClass()}{$item->getClass()}{/if}" {if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
			<div class="card__header card__header__no__border d-flex align-items-start justify-content-between">
				<div class="card__header__content">
					<h6 class="coodiv-text-8 mb-0 font-weight-bold">
					{if $item->getAttribute('id') == "servicesPanel"} 
					{lang key='navservices'}
					{elseif $item->getAttribute('id') == "ticketsPanel"} 
					{lang key='navtickets'}
					{elseif $item->getAttribute('id') == "registerDomainPanel"} 
					{lang key='navdomains'}
					{elseif $item->getAttribute('id') == "announcementsPanel"} 
					{lang key='announcementstitle'}
					{/if}
					</h6>
					<p class="coodiv-text-12 font-weight-500 text-gray mb-0 mt-n2">{$item->getLabel()}</p>
				</div>
				{if $item->getExtra('btn-link') && $item->getExtra('btn-text') || $item->getAttribute('id') == "registerDomainPanel"}
					<div class="d-flex">
						{if $item->getAttribute('id') == "registerDomainPanel"}
						<a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-sm btn-light mr-2 d-none d-md-flex">{lang key='transferdomain'}</a>
						{else}
						<a href="{$item->getExtra('btn-link')}" class="btn btn-sm btn-light mr-2 d-none d-md-flex">{$item->getExtra('btn-text')}</a>
						{/if}
						{if $item->getAttribute('id') == "servicesPanel"} 
						<a href="{$WEB_ROOT}/cart.php" class="btn btn-sm btn-primary mr-2"> <i class="far fa-plus d-flex d-md-none"></i> <span class="d-none d-md-flex text">{lang key='navservicesorder'}</span></a>
						<div class="dropdown coodiv__default__dropdown">
						<button class="btn btn-sm btn-light" type="button" id="{$item->getName()}-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-ellipsis-h"></i>
						</button>
						<div class="dropdown-menu" aria-labelledby="{$item->getName()}-dropdown">
							<a class="dropdown-item" href="{$WEB_ROOT}/cart.php?gid=addons">{lang key='clientareaviewaddons'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=domains">{lang key='clientareanavdomains'} <span class="label label-success ml-auto mb-0">{$clientsstats.numactivedomains}</span></a>
							<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=invoices">{lang key='invoices'} <span class="label {if $clientsstats.numunpaidinvoices gt 0}label-warning{else}label-success{/if} ml-auto mb-0">{$clientsstats.numunpaidinvoices}</span></a>
							<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=quotes">{lang key='quotestitle'}</a>
						</div>
						</div>
						{elseif $item->getAttribute('id') == "ticketsPanel"} 
						<a href="{$WEB_ROOT}/supporttickets.php" class="btn btn-sm btn-primary mr-2"> <i class="far fa-life-ring d-flex d-md-none"></i> <span class="d-none d-md-flex text">{lang key='clientareanavsupporttickets'}</span></a>
						<div class="dropdown coodiv__default__dropdown">
						<button class="btn btn-sm btn-light" type="button" id="{$item->getName()}-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-ellipsis-h"></i>
						</button>
						<div class="dropdown-menu" aria-labelledby="{$item->getName()}-dropdown">
							<a class="dropdown-item" href="{$WEB_ROOT}/announcements.php">{lang key='announcementstitle'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/downloads.php">{lang key='downloadstitle'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/serverstatus.php">{lang key='serverstatustitle'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/submitticket.php">{lang key='navopenticket'}</a>
						</div>
						</div>
						{elseif $item->getAttribute('id') == "registerDomainPanel"} 
						<a href="{$WEB_ROOT}/domainchecker.php" class="btn btn-sm btn-primary mr-2"><i class="far fa-globe d-flex d-md-none"></i> <span class="d-none d-md-flex text">{lang key='cartregisterdomainchoice'}</span></a>
						<div class="dropdown coodiv__default__dropdown">
						<button class="btn btn-sm btn-light" type="button" id="{$item->getName()}-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-ellipsis-h"></i>
						</button>
						<div class="dropdown-menu" aria-labelledby="{$item->getName()}-dropdown">
							<a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/cart/domain/renew">{lang key='domainrenewals'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/cart.php?a=view">{lang key='viewcart'}</a>
						</div>
						</div>
						{elseif $item->getAttribute('id') == "announcementsPanel"} 
						<a href="{$WEB_ROOT}/knowledgebase.php" class="btn btn-sm btn-primary mr-2"><i class="far fa-book d-flex d-md-none"></i> <span class="d-none d-md-flex text">{lang key='knowledgebasetitle'}</span></a>
						<div class="dropdown coodiv__default__dropdown">
						<button class="btn btn-sm btn-light" type="button" id="{$item->getName()}-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-ellipsis-h"></i>
						</button>
						<div class="dropdown-menu" aria-labelledby="{$item->getName()}-dropdown">
							<a class="dropdown-item" href="{$WEB_ROOT}/downloads.php">{lang key='downloadstitle'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/serverstatus.php">{lang key='serverstatustitle'}</a>
							<a class="dropdown-item" href="{$WEB_ROOT}/submitticket.php">{lang key='navopenticket'}</a>
						</div>
						</div>
						{/if}
					</div>
				{/if}
			</div>
			
			{if $item->hasBodyHtml()}
				<div class="card__body">
					{$item->getBodyHtml()}
				</div>
			{/if}
			{if $item->hasChildren()}
				<div class="body__list__group__wrapper {if $item->getChildrenAttribute('class')}{$item->getChildrenAttribute('class')}{/if}">
					{foreach $item->getChildren() as $childItem}
						{if $childItem->getUri()}
							<a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="body__list__group__item body__list__group__item__link {if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
								{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
								{if $item->getName()|strstr:"Tickets"}
								<span class="coodiv__status__ticket"><b>{$childItem->getLabel()|replace:"background-color":"--status-color"|replace:'class="label"':'class="status"'|replace:"data-title":$childStatus|replace:"#779500":"#50cd89"|replace:"#888888":"#f88181"|replace:"#000000":"#11cae2"|replace:" - ":"</b> - "}</span>
								{else}
								<span class="coodiv__status">{$childItem->getLabel()|replace:"background-color":"--status-color"|replace:'class="label"':'class="status"'|replace:"data-title":$childStatus}</span>
								{/if}
								{if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
							</a>
						{else}
							<div menuItemName="{$childItem->getName()}" class="body__list__group__item {if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
								{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
								{$childItem->getLabel()}
								{if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
							</div>
						{/if}
					{/foreach}
				</div>
			{/if}
			{if $item->hasFooterHtml()}
				<div class="card__footer mt-3 py-3">
					{$item->getFooterHtml()}
				</div>
			{/if}
			
			{if $item->getAttribute('id') == "registerDomainPanel"} 
				<div class="card__footer">
					<div class="register__domain__panel__wrapper">
						{foreach from=$spotlighttldscustom key=arrayIndex item=domaintld}
							{if $domaintld.group == "sale" || $domaintld.group == "hot"  || $domaintld.group == "new"} 
								<div class="ltd coodiv-text-11 font-weight-600 mb-0 {if $domaintld.group == "sale"}sale{elseif $domaintld.group == "hot"}hot{elseif $domaintld.group == "new"}new{/if}">{$domaintld.extension|replace:".":""} <span class="register__domain__panel__badge">{$domaintld.group}</span></div>
							{/if}
						{/foreach}
					</div>
				</div>
			{/if}
		</div>
	{/if}
{/function}

{function name=outputHomePanelsaddons}
	{if in_array($item->getName(), $hiddenfromclientarea)}
		<div menuItemName="{$item->getName()}" class="card output__home__panelsaddons__wrapper">
			<div class="card__header card__header__no__border pb-1">
				<h3 class="coodiv-text-10 m-0">{$item->getLabel()}</h3>
			</div>
			{if $item->hasBodyHtml()}
				<div class="card__body pt-0">
					{$item->getBodyHtml()|replace:'<select name="service-id" class="form-control">':'<div class="input-group-btn output__home__panelsaddons__select primary__dropdown select__dropdown__menu__search__wrapper position-relative"><select name="service-id" class="form-control select__dropdown__menu__search">'|replace:'</button>':'</div>'|replace:"btn-default":"btn-default m-0 btn-sm"}
				</div>
			{/if}
		</div>
	{/if}
{/function}

{include file="$template/includes/flashmessage.tpl"}
{foreach $panels as $item}
	{outputHomePanelsalerts}
{/foreach}
<div class="row justify-content-start">
	<div class="col-12">
		<div class="card mb-5 mb-xl-10 pt-5">
			<div class="card__body">
				<div class="d-flex flex-wrap flex-sm-nowrap mb-3">
					<div class="mr-7 mb-4 d-md-flex d-none">
						<div class="client__area__profile__pic">
							{if $coodivsettings.gravatar=='activated' || $coodivsettings.id != '1'}
								<img src="https://www.gravatar.com/avatar/{$loggedinuser->email|md5}" alt="image">
							{else}
								<img src="{$WEB_ROOT}/templates/{$template}/assets/img/blank-avatar.webp" alt="image">
							{/if}
						</div>
					</div>
					<div class="flex-grow-1">
						<div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
							<div class="d-flex flex-column">
								<div class="d-flex align-items-center mb-4 gap-3">
									<a href="#" class="coodiv-text-7 font-weight-600 text-hover-primary text-capitalize mr-2">{lang key='hello'}, {$clientsdetails.firstname} {$clientsdetails.lastname}</a>
									<span class="badge {if $clientsdetails.status == 'Active'}badge-success{else if $clientsdetails.status == 'Closed'}badge-danger{/if} px-3 py-3 font-weight-600">{$clientsdetails.status} {lang key='account'}</span>
								</div>
								<div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
									{if $coodivsettings.customerspin=='activated'}<span class="d-flex align-items-center text-muted mr-5 mb-2 coodiv-text-12 font-weight-600"><i class="fad fa-user-circle mr-2"></i> {$coodivgeneratePinCode}</span>{/if}
									<span class="d-flex align-items-center text-muted mr-5 mb-2 coodiv-text-12 font-weight-600"><i class="fad fa-map-marker-alt mr-2"></i> {$clientsdetails.address1} {$clientsdetails.city}, {$clientsdetails.country}</span>
									<a href="mailto:{$clientsdetails.email}" class="d-flex align-items-center text-muted mr-5 mb-2 coodiv-text-12 font-weight-600"><i class="fad fa-inbox mr-2"></i>{$clientsdetails.email}</a>
								</div>
							</div>
							<div class="d-flex mb-4">
								<a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-sm btn-light mr-2">{$LANG.clientareanavdetails}</a>
								<a href="{$WEB_ROOT}/account/paymentmethods" class="btn btn-sm btn-primary mr-2">{$LANG.paymentMethods.title}</a>
								<div class="dropdown coodiv__default__dropdown">
								<button class="btn btn-sm btn-light" type="button" id="clientareamorelinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-ellipsis-h"></i>
								</button>
								<div class="dropdown-menu" aria-labelledby="clientareamorelinks">
								<a class="dropdown-item" href="{$WEB_ROOT}/user/profile">{lang key='yourProfile'}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=security">{lang key='orderForm.accountSecurity'}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/user/accounts">{lang key='navSwitchAccount'}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=contacts">{$LANG.clientareanavcontacts}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=emails">{$LANG.clientareaemails}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=changepw">{$LANG.clientareanavchangepw}</a>
								<a class="dropdown-item" href="{$WEB_ROOT}/logout.php">{$LANG.clientareanavlogout}</a>
								</div>
								</div>
							</div>
						</div>
						<!--end::Title-->
						<!--begin::Stats-->
						<div class="d-flex flex-wrap flex-stack">
							<div class="d-flex flex-column flex-grow-1 pr-md-8">
							
								<div class="d-flex flex-wrap client__area__profile__static__box__wrapper">
									<div class="border border-dashed client__area__profile__static__box">
										<div class="d-flex align-items-center gap-5">
											<h6 class="coodiv-text-8 font-weight-bold mb-0">{$clientsstats.creditbalance}</h6>
											<a class="badge badge-success" href="{$WEB_ROOT}/clientarea.php?action=addfunds" data-toggle="tooltip" data-placement="top" title="{$LANG.addfunds}"><i class="fal fa-plus"></i></a>
										</div>
										<div class="coodiv-text-11 font-weight-500 text-gray">{$LANG.affiliatesbalance}</div>
									</div>
									{if $clientsstats.numunpaidinvoices}
									<div class="border border-dashed client__area__profile__static__box">
										<div class="d-flex align-items-center gap-5">
											<h6 class="coodiv-text-8 font-weight-bold mb-0">{$clientsstats.dueinvoicesbalance}</h6>
											<a class="badge badge-danger" href="{$WEB_ROOT}/clientarea.php?action=invoices">{lang key='invoicespaynow'}</a>
										</div>
										<div class="coodiv-text-11 font-weight-500 text-gray">{lang key='invoicestotaldue'}</div>
									</div>
									{else}
									<div class="border border-dashed client__area__profile__static__box">
										<div class="d-flex align-items-center gap-5">
											<h6 class="coodiv-text-8 font-weight-bold mb-0">{$clientsstats.dueinvoicesbalance}</h6>
											<a class="badge badge-success" href="{$WEB_ROOT}/clientarea.php?action=invoices"> {lang key='navservicesorder'}</a>
										</div>
										<div class="coodiv-text-11 font-weight-500 text-gray">{lang key='invoicesnoinvoices'}</div>
									</div>
									{/if}
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<ul class="nav default__coodiv__row__nav px-8">
				<li class="nav-item active"><a class="nav-link" href="{$WEB_ROOT}/clientarea.php">{lang key='overview'}</a></li></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/clientarea.php?action=services">{lang key='clientareanavservices'}</a></li></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/clientarea.php?action=domains">{lang key='clientareanavdomains'} <span class="ml-2 label label-success mb-0">{$clientsstats.numactivedomains}</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/clientarea.php?action=invoices">{lang key='invoices'}<span class="ml-2 label {if $clientsstats.numunpaidinvoices gt 0}label-warning{else}label-success{/if} mb-0">{$clientsstats.numunpaidinvoices}</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/supporttickets.php">{lang key='clientareanavsupporttickets'}</a></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/serverstatus.php">{lang key='networkstatustitle'}</a></li>
				<li class="nav-item"><a class="nav-link" href="{$WEB_ROOT}/cart.php?gid=addons">{lang key='clientareaviewaddons'}</a></li>
			</ul>
		</div>
	</div>
</div>

<div class="client__area__proforomance__wrapper pb-8">
	<div class="row justify-content-start mb-7">
		<div class="col-md-6 col-12">
			<h6 class="coodiv-text-7 mb-0">{lang key='accountoverview'}</h6>
			<h6 class="coodiv-text-11 text-gray font-weight-500">{lang key='clientareaproductdetailsintro'}</h6>
		</div>
	</div>

	<div class="row justify-content-start">
		<div class="col-lg col-md-4 col-6 mb-4">
		{if $clientsstats.productsnumtotal gt 0}
			<a href="{$WEB_ROOT}/clientarea.php?action=services" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-layer-group"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.productsnumactive}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navservices'}</h6>
				</div>
				{math assign="pendingservices" equation="x-y" y=$clientsstats.productsnumactive x=$clientsstats.productsnumtotal}	
				{if $pendingservices gt 0}
				<span class="badge badge-warning px-3 py-3"><strong>{$pendingservices}</strong> {lang key='clientareapending'} {lang key='orderproduct'}</span>
				{else}
				<span class="badge badge-success px-3 py-3">{lang key='all'} {lang key='orderproduct'} {lang key='clientareaactive'}</span>
				{/if}
			</a>
		{else}
			<div href="{$WEB_ROOT}/clientarea.php?action=services" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-layer-group"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.productsnumactive}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navservices'}</h6>
				</div>
				<a href="{$WEB_ROOT}/cart.php" class="badge badge-secondary">{lang key='navservicesorder'}</a>
			</div>
		{/if}
		</div>
		{if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
		<div class="col-lg col-md-4 col-6 mb-4">
			{if $clientsstats.numdomains gt 0}
			<a href="{$WEB_ROOT}/clientarea.php?action=domains" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-globe"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numactivedomains}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navdomains'}</h6>
				</div>
				{math assign="pendingdomains" equation="x-y" y=$clientsstats.numactivedomains x=$clientsstats.numdomains}	
				{if $pendingdomains gt 0}
				<span class="badge badge-warning px-3 py-3"><strong>{$pendingdomains}</strong> {lang key='clientareapending'} {lang key='cartproductdomain'}</span>
				{else}
				<span class="badge badge-success px-3 py-3">{lang key='all'} {lang key='cartproductdomain'} {lang key='clientareaactive'}</span>
				{/if}
			</a>
			{else}
			<div href="{$WEB_ROOT}/clientarea.php?action=domains" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-globe"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numactivedomains}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navdomains'}</h6>
				</div>
				<a href="{$WEB_ROOT}/domainchecker.php" class="badge badge-secondary">{lang key='navregisterdomain'}</a>
			</div>
			{/if}
		</div>
		{/if}
		
		{if $condlinks.affiliates && $clientsstats.isAffiliate}
		<div class="col-lg col-md-4 col-6 mb-4">
			<a href="{$WEB_ROOT}/affiliates.php" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-users-class"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numaffiliatesignups}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='affiliatessignups'}</h6>
				</div>
			</a>
		</div>
		{else}
		<div class="col-lg col-md-4 col-6 mb-4">
			<a href="{$WEB_ROOT}/clientarea.php?action=quotes" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block h-100">
				<i class="client__area__proforomance__box__icon fad fa-quote-left"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numquotes}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='quotes'}</h6>
				</div>
				{if $clientsstats.numacceptedquotes gt 0}
				<span class="badge badge-success px-3 py-3"><strong>{$clientsstats.numacceptedquotes}</strong> {lang key='quotestageaccepted'} {lang key='quotes'}</span>
				{else}
				<span class="badge badge-warning px-3 py-3"><strong>{$clientsstats.numacceptedquotes}</strong> {lang key='quotestageaccepted'} {lang key='quotes'}</span>
				{/if}
			</a>
		</div>
		{/if}
		<div class="col-lg col-md-4 col-6 mb-4">
			<a href="{$WEB_ROOT}/supporttickets.php" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block">
				<i class="client__area__proforomance__box__icon fad fa-life-ring"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numtickets}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navtickets'}</h6>
				</div>
				
				{if $clientsstats.numactivetickets gt 0}
				<span class="badge badge-success px-3 py-3"><strong>{$clientsstats.numactivetickets}</strong>  {lang key='domainsActive'} {lang key='navtickets'}</span>
				{else}
				<span class="badge badge-secondary px-3 py-3">{lang key='knowledgebaseno'} {lang key='domainsActive'} {lang key='navtickets'}</span>
				{/if}
			</a>
		</div>
		<div class="col-lg col-md-4 col-6 mb-4">
			<a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="client__area__proforomance__box border-light rounded-8 py-8 px-8 d-block">
				<i class="client__area__proforomance__box__icon fad fa-receipt"></i>
				<div class="client__area__proforomance__box__body d-block my-8">
					<h6 class="coodiv-text-3 font-weight-500 mb-0">{$clientsstats.numunpaidinvoices}</h6>
					<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='navinvoices'}</h6>
				</div>
				{if $clientsstats.numunpaidinvoices}
				<span class="badge badge-warning px-3 py-3">{lang key='invoicestotaldue'} <strong>{$clientsstats.dueinvoicesbalance}</strong></span>
				{else}
				<span class="badge badge-success px-3 py-3">{lang key='invoicesnoinvoices'}</span>
				{/if}
			</a>
		</div>
	</div>
</div>

<div class="client__area__services with__sidebar">
	<div class="row justify-content-start">
		 <div class="client-home-cards {if $coodivsettings.clientmarketconnect=='activated'|| $coodivsettings.id != '1'}{if $CoodivMarketConnectServices}col-md-8{/if}{/if} col-12">
			{foreach $panels as $item}
				{outputHomePanels}
            {/foreach}
		 </div>
		 {if $coodivsettings.clientmarketconnect=='activated' || $coodivsettings.id != '1'}
			 <div class="col-md-4 col-12">
				{if $CoodivMarketConnectServices}
					{include file="$template/includes/theme-core/slider.tpl" setting="client-home"}
				{/if}
				<div class="sidebar__output__addons mt-5">
					{foreach $panels as $item}
						{outputHomePanelsaddons}
					{/foreach}
				</div>
			 </div>
		 {/if}
	</div>
</div>




