{if $inactive}

    {include file="$template/includes/alert.tpl" type="danger" msg="{lang key='affiliatesdisabled'}" textcenter=true}

{else}
    {include file="$template/includes/flashmessage.tpl"}
    {if $withdrawrequestsent}
        <div class="alert alert-success">
            <i class="fas fa-check fa-fw"></i>
            {lang key='affiliateswithdrawalrequestsuccessful'}
        </div>
    {/if}
	<div class="client-home-element-section">
		<div class="row justify-content-start">
			<div class="col-lg col-md-4 col-6 mb-4">
				<div class="client__area__proforomance__box border-light rounded-8 pb-3 pt-7 px-8 d-block h-100">
					<i class="client__area__proforomance__box__icon fad fa-mouse-pointer"></i> 
					<div class="client__area__proforomance__box__body d-block my-3">
						<h6 class="coodiv-text-3 font-weight-500 mb-0">{$visitors}</h6>
						<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='affiliatesclicks'}</h6>
					</div>
				</div>
			</div>
			<div class="col-lg col-md-4 col-6 mb-4">
				<div class="client__area__proforomance__box border-light rounded-8 pb-3 pt-7 px-8 d-block h-100">
					<i class="client__area__proforomance__box__icon fad fa-chart-bar"></i>
					<div class="client__area__proforomance__box__body d-block my-3">
						<h6 class="coodiv-text-3 font-weight-500 mb-0">{$conversionrate}%</h6>
						<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='affiliatesconversionrate'}</h6>
					</div>
				</div>
			</div>
			<div class="col-lg col-md-4 col-6 mb-4">
				<div class="client__area__proforomance__box border-light rounded-8 pb-3 pt-7 px-8 d-block h-100">
					<i class="client__area__proforomance__box__icon fad fa-users-medical"></i>
					<div class="client__area__proforomance__box__body d-block my-3">
						<h6 class="coodiv-text-3 font-weight-500 mb-0">{$signups}</h6>
						<h6 class="coodiv-text-11 text-gray d-block mb-0 mt-n3">{lang key='affiliatessignups'}</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
				
	<div class="row justify-content-start">
		<div class="col-md-4 col-12 mb-6 mb-md-0">
			<div class="card h-100">
				<div class="card__header">
					<h6 class="coodiv-text-10 mb-0">{lang key='affiliatesreferallink'}</h6>
				</div>
				<div class="card__body d-flex flex-column h-100">
					<div style="margin: auto;height: 65px;width: 65px;border-radius: 41px;background: var(--background-4);color: var(--btn-primary-color);" class="d-none d-md-flex align-items-center justify-content-center"><i style="font-size: 28px" class="far fa-user-plus"></i></div>
					<div class="input__group click__to__copyinput mt-md-auto mt-0">
						<input type="text" class="form-control" id="inputField1" value="{$referrallink}">
						<a class="btn btn-sm btn-primary copy-btn d-none" id="copy__btn" data-input="inputField1">{lang key='copy'}</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 col-12">
			<div class="card overflow-hidden mb-0">
				<div style="padding: 14px 25px;" class="card__header d-flex align-items-center justify-content-between">
					<h6 class="coodiv-text-10 mb-0">{lang key='affiliatesreferals'}</h6>
					{if !$withdrawrequestsent}
						<a {if !$withdrawlevel}data-toggle="tooltip" data-placement="bottom" title="{lang key='affiliateWithdrawalSummary' amountForWithdrawal=$affiliatePayoutMinimum}" data-original-title="{lang key='affiliateWithdrawalSummary' amountForWithdrawal=$affiliatePayoutMinimum}" {else} href="{$smarty.server.PHP_SELF}?action=withdrawrequest"{/if} class="btn btn-sm btn-success">{lang key='affiliatesrequestwithdrawal'}</a>
					{/if}
				</div>
				<div class="table-container">
					<div class="table-responsive dataTables_wrapper">
						<table class="table table-list">
							<thead>
								<tr class="table__ui__header">
									<th>{lang key='accountinfo'}</th>
									<th>{lang key='affiliatesamount'}</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>{lang key='affiliatescommissionspending'}:</td>
									<td><strong>{$pendingcommissions}</strong></td>
								</tr>
								<tr>
									<td>{lang key='affiliatescommissionsavailable'}:</td>
									<td><strong>{$balance}</strong></td>
								</tr>
								<tr>
									<td>{lang key='affiliateswithdrawn'}:</td>
									<td><strong>{$withdrawn}</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

    {include file="$template/includes/tablelist.tpl" tableName="AffiliatesList"}
    <script>
        jQuery(document).ready(function() {
            var table = jQuery('#tableAffiliatesList').show().DataTable();

            {if $orderby == 'regdate'}
                table.order(0, '{$sort}');
            {elseif $orderby == 'product'}
                table.order(1, '{$sort}');
            {elseif $orderby == 'amount'}
                table.order(2, '{$sort}');
            {elseif $orderby == 'status'}
                table.order(4, '{$sort}');
            {/if}
            table.draw();
            jQuery('#tableLoading').hide();
        });
    </script>
	
	<div class="card mt-8">
		<div class="card__header bg-white">
			<h6 class="coodiv-text-9 mb-0">{lang key='affiliatesreferals'}</h6>
		</div>
		<div class="card__body">
			<div class="table-container clearfix">
				<table id="tableAffiliatesList" class="table table-list w-hidden">
					<thead>
						<tr>
							<th>{lang key='affiliatessignupdate'}</th>
							<th>{lang key='orderproduct'}</th>
							<th>{lang key='affiliatesamount'}</th>
							<th>{lang key='affiliatescommission'}</th>
							<th>{lang key='affiliatesstatus'}</th>
						</tr>
					</thead>
					<tbody>
					{foreach $referrals as $referral}
						<tr class="text-center">
							<td><span class="w-hidden">{$referral.datets}</span>{$referral.date}</td>
							<td>{$referral.service}</td>
							<td data-order="{$referral.amountnum}">{$referral.amountdesc}</td>
							<td data-order="{$referral.commissionnum}">{$referral.commission}</td>
							<td><span class='label status status-{$referral.rawstatus|strtolower}'>{$referral.status}</span></td>
						</tr>
					{/foreach}
					</tbody>
				</table>
				<div class="text-center" id="tableLoading">
					<p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
				</div>
			</div>
		</div>
	</Div>

    {if $affiliatelinkscode}
	
	<div class="card mt-8">
		<div class="card__body">
			<h6 class="coodiv-text-9">{lang key='affiliateslinktous'}</h6>
			{$affiliatelinkscode}
		</div>
	</div>
    {/if}

{/if}
