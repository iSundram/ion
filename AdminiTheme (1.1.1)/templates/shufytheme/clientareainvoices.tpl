{include file="$template/includes/tablelist.tpl" tableName="InvoicesList" filterColumn="4"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableInvoicesList').show().DataTable();

        {if $orderby == 'default'}
           table.order([1, 'desc'], [4, 'desc']);
        {elseif $orderby == 'invoicenum'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'date'}
            table.order(1, '{$sort}');
        {elseif $orderby == 'duedate'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'total'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'status'}
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

<div class="table-container loading clearfix">
    <table id="tableInvoicesList" class="table table-list w-hidden">
        <thead>
            <tr>
                <th>{lang key='invoicestitle'}</th>
                <th>{lang key='invoicesdatecreated'}</th>
                <th>{lang key='invoicesdatedue'}</th>
                <th>{lang key='invoicestotal'}</th>
                <th>{lang key='invoicesstatus'}</th>
                <th>{lang key='actions'}</th>
            </tr>
        </thead>
        <tbody>
            {foreach $invoices as $invoice}
                <tr onclick="clickableSafeRedirect(event, 'viewinvoice.php?id={$invoice.id}', false)">
                    <td><span class="d-block d-md-none">{lang key='invoicestitle'}</span>{$invoice.invoicenum}</td>
                    <td><span class="d-block d-md-none">{lang key='invoicesdatecreated'}</span> <span class="w-hidden">{$invoice.normalisedDateCreated}</span>{$invoice.datecreated}</td>
                    <td><span class="d-block d-md-none">{lang key='invoicesdatedue'}</span> <span class="w-hidden">{$invoice.normalisedDateDue}</span>{$invoice.datedue}</td>
                    <td class="pricing" data-order="{$invoice.totalnum}"><span class="d-block d-md-none">{lang key='invoicestotal'}</span>{$invoice.total}</td>
                    <td><span class="d-block d-md-none">{lang key='invoicesstatus'}</span> <span class="label status status-{$invoice.statusClass}">{$invoice.status}</span></td>
                    <td>
					<span class="d-block d-md-none">{lang key='actions'}</span>
					<div class="table__btns__group">							
						{if $invoice.statusClass eq "unpaid" || $invoice.statusClass eq "draft"}
						<a class="btn btn-sm btn-success" href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}">{lang key='subaccountpermsinvoices'}</a>
						{else}
						<a class="btn btn-sm btn-light" href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}">{lang key='view'} {lang key='navinvoices'}</a>
						{/if}
						<a class="btn btn-sm btn-light" href="{$WEB_ROOT}/dl.php?type=i&id={$invoice.id}" class="btn btn-sm btn-light">{lang key='download'}</a>
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

<div class="modal fade bd-example-modal-lg" id="printPreviewModal" tabindex="-1" role="dialog" aria-labelledby="printPreviewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header mb-0">
        <h5 class="modal-title font-weight-400" id="printPreviewModalLabel">{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}طباعة و دفع{else}Print & pay{/if}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body p-0">
        <div id="loadingText" style="display: block;">
          <div class="text-center">
            <div class="spinner-border" role="status">
              <span class="sr-only">{$LANG.loading}</span>
            </div>
            <div>{$LANG.loading}</div>
          </div>
        </div>
        <iframe id="printIframe" style="display: none;"></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">{$LANG.closewindow}</button>
      </div>
    </div>
  </div>
</div>


