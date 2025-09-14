{if $servers}
    <div class="card overflow-hidden">
		<div class="card__header">
			<h3 class="coodiv-text-10 mb-0">{lang key='serverstatustitle'}</h3>
			 <p class="coodiv-text-11 mb-0">{lang key='serverstatusheadingtext'}</p>
		</div>
		<div class="table-responsive dataTables_wrapper">
			<table class="table table-list">
				<thead>
					<tr>
						<th>{lang key='servername'}</th>
						<th class="text-center">{lang key='networkIssues.http'}</th>
						<th class="text-center">{lang key='networkIssues.ftp'}</th>
						<th class="text-center">{lang key='networkIssues.pop3'}</th>
						<th class="text-center">{lang key='serverstatusphpinfo'}</th>
						<th class="text-center">{lang key='serverstatusserverload'}</th>
						<th class="text-center">{lang key='serverstatusuptime'}</th>
					</tr>
				</thead>
				<tbody>
					{foreach $servers as $num => $server}
						<tr>
							<td>{$server.name}</td>
							<td class="text-center" id="port80_{$num}">
								<span class="fas fa-spinner fa-spin"></span>
							</td>
							<td class="text-center" id="port21_{$num}">
								<span class="fas fa-spinner fa-spin"></span>
							</td>
							<td class="text-center" id="port110_{$num}">
								<span class="fas fa-spinner fa-spin"></span>
							</td>
							<td class="text-center"><a href="{$server.phpinfourl}" target="_blank">{lang key='serverstatusphpinfo'}</a></td>
							<td class="text-center" id="load{$num}">
								<span class="fas fa-spinner fa-spin"></span>
							</td>
							<td class="text-center" id="uptime{$num}">
								<span class="fas fa-spinner fa-spin"></span>
								<script>
								jQuery(document).ready(function() {
									checkPort({$num}, 80);
									checkPort({$num}, 21);
									checkPort({$num}, 110);
									getStats({$num});
								});
								</script>
							</td>
						</tr>
					{foreachelse}
						<tr>
							<td colspan="7">{lang key='serverstatusnoservers'}</td>
						</tr>
					{/foreach}
				</tbody>
			</table>
		</div>
    </div>
{/if}


<div class="shadow__card">
	<div class="card__header d-flex flex-wrap align-items-center justify-content-between">
		<h6 class="coodiv-text-10 mb-0">
		{if $smarty.get.view == "open"}
			{$LANG.networkissuesstatusopen}
		{elseif $smarty.get.view == "scheduled"}
			{$LANG.networkissuesstatusscheduled}
		{elseif $smarty.get.view == "resolved"}
			{$LANG.networkissuesstatusresolved}
		{else}
			{lang key='tableviewall'}
		{/if}
		{lang key='networkstatustitle'}
		</h6>
		<div class="dropdown coodiv__default__dropdown network__issues__status__drop__down">
			<button class="btn btn-sm btn-light" type="button" id="dropdown-{$service.id}-menu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				{if $smarty.get.view == "open"}
					<span class="badge badge-success">{$LANG.networkissuesstatusopen}</span>
				{elseif $smarty.get.view == "scheduled"}
					<span class="badge badge-warning">{$LANG.networkissuesstatusscheduled}</span>
				{elseif $smarty.get.view == "resolved"}
					<span class="badge badge-primary">{$LANG.networkissuesstatusresolved}</span>
				{else}
					{lang key='tableviewall'} {lang key='networkstatustitle'}
				{/if}
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdown-{$service.id}-menu">								
				<a class="dropdown-item" href="{$WEB_ROOT}/serverstatus.php?view=open"><span class="badge badge-success">{$LANG.networkissuesstatusopen}</span></a>                
				<a class="dropdown-item" href="{$WEB_ROOT}/serverstatus.php?view=scheduled"><span class="badge badge-warning">{$LANG.networkissuesstatusscheduled}</span></a>
				<a class="dropdown-item" href="{$WEB_ROOT}/serverstatus.php?view=resolved"><span class="badge badge-primary">{$LANG.networkissuesstatusresolved}</span></a>
			</div>
		</div>
	</div>
	<div class="card__body issue__status__wrapper__holder p-0">
	
	{foreach $issues as $issue}
		<div class="issue__status__wrapper">
			<div class="issue__status__header d-flex flex-wrap justify-content-between">
				<div class="text">
					 {if $issue.clientaffected}
						<div class="badge badge-danger">
							{lang key='networkIssues.affectingYou'}
						</div>
					 {/if}
					 {if $issue.server || $issue.affecting}
						<h6 class="coodiv-text-12 font-weight-400 mb-0">
							<strong>{lang key='networkissuesaffecting'} {$issue.type}</strong>
							-
							<span class="text-gray">
							{if $issue.type eq "{lang key='networkissuestypeserver'}"}
								{$issue.server}
							{else}
								{$issue.affecting}
							{/if}
							</span>
						</h6>
					 {/if}
					 <div class="d-flex align-items-center gap-5">
						<h6 class="coodiv-text-11 font-weight-600 mb-0">{$issue.title}</h6>
						<span id="issuePriorityLabel" class="m-0 badge badge-{if $issue.rawPriority == 'Critical'}danger{elseif $issue.rawPriority == 'High'}warning{elseif $issue.rawPriority == 'Low'}success{else}info{/if}">{$issue.priority} {lang key='networkissuespriority'}</span>
					 </div>
				</div>
				<h6 class="coodiv-text-11 font-weight-600">{$issue.status}</h6>
			</div>
			
			<div class="view__anonmcenemt__text">{$issue.description}</div>
			
			
		     <div class="d-flex align-items-center gap-10">
			 <p class="coodiv-text-12 font-weight-400 text-gray">{$issue.startdate}{if $issue.enddate} - {$issue.enddate}{/if}</p>
             <p class="coodiv-text-12 font-weight-400 text-gray">{lang key='networkissueslastupdated'} {$issue.lastupdate}</p>
			 </div>
		</div>
	{foreachelse}
		<div class="py-7 no__data__error__box with__icon full__width__icon d-flex flex-column justify-content-center align-items-center">
			<div class="message__image">
				{include file="$template/assets/svg/core/success-icon.tpl"}         
			</div>
			<h6 class="coodiv-text-7 font-weight-600 text-center">{$noissuesmsg}</h6>
			<p class="coodiv-text-11 font-weight-400 text-center">{"{lang key='networkstatusnone'}"|sprintf:"{lang key='networkissuesstatusopen'}"}</p>
		</div>
	{/foreach}
	</div>
	{if $opencount > 0}
		<div class="card__footer d-flex align-items-center justify-content-end">
			<nav aria-label="Network issues navigation">
				<ul class="pagination">
					<li class="page-item{if !$prevpage} disabled{/if}"><a class="page-link" href="?{if $view}view={$view}&amp;{/if}page={$prevpage}">{lang key='previouspage'}</a></li>
					<li class="page-item{if !$nextpage} disabled{/if}"><a class="page-link" href="?{if $view}view={$view}&amp;{/if}page={$nextpage}">{lang key='nextpage'}</a></li>
				</ul>
			</nav>
		</div>
	{/if}
</div>
