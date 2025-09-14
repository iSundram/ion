{if $openNetworkIssueCounts.open > 0}
	<div class="alert alert-danger alert-dismissible fade show custom-alert-text network-issue-alert" id="networkissue" role="alert">
	  <h6 class="alert-title coodiv-text-10 mb-1">{lang key='networkstatustitle'}</h6>
	  <p>{lang key='networkIssuesAware'}</p>		  
	  <div class="alert__options">
		  <a href="{$WEB_ROOT}/serverstatus.php" class="btn btn-sm btn-light btn-block btn-action">
			{lang key='learnmore'}
		  </a>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fal fa-times"></i></button>
	  </div>
	</div>
{elseif $openNetworkIssueCounts.scheduled > 0}
    <div class="alert alert-warning alert-dismissible fade show custom-alert-text network-issue-alert" id="networkissue" role="alert">
	  <h6 class="alert-title coodiv-text-10 mb-1">{lang key='networkissuesstatusscheduled'} {lang key='networkstatustitle'}</h6>
	  <p>{lang key='networkIssuesScheduled'}</p>		  
	  <div class="alert__options">
		  <a href="serverstatus.php?view=scheduled" class="btn btn-sm btn-light btn-block btn-action">
			{lang key='learnmore'}
		  </a>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fal fa-times"></i></button>
	  </div>
	</div>
{/if}

