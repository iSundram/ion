{include file="$template/includes/tablelist.tpl" tableName="TicketsList" filterColumn="2"}

<script>
    jQuery(document).ready(function () {
        var table = jQuery('#tableTicketsList').show().DataTable();
        {if $orderby == 'did' || $orderby == 'dept'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'subject' || $orderby == 'title'}
            table.order(1, '{$sort}');
		{elseif $orderby == 'subject' || $orderby == 'title'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'status'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'lastreply'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        setTimeout(() => {
			jQuery('.table-container').removeClass('loading');
			jQuery('#tableLoading').addClass('d-none');
			jQuery('#tableLoading').hide();
		}, "1000")
    });
</script>

<div class="table-container loading clearfix">
   <table id="tableTicketsList" class="table table-list w-hidden">
        <thead>
            <tr class="ticket__row__width__table">
                <th class="department">{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}رقم التذكرة{else}Ticket number{/if}</th>
                <th class="subject">{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}موضوع التذكرة{else}Ticket Subject{/if}</th>
                <th class="status">{lang key='supportticketsstatus'}</th>
				<th class="department">{lang key='supportticketsdepartment'}</th>
                <th class="update">{lang key='supportticketsticketlastupdated'}</th>
            </tr>
        </thead>
        <tbody>
            {foreach $tickets as $ticket}
                <tr onclick="window.location='viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}'">
                    
                    <td>
						<span class="mobile__title d-md-none d-flex">{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}رقم التذكرة{else}Ticket Number{/if}</span>
                        <span class="default__title">{$ticket.tid}</span>
                    </td>
                    <td>
						<span class="mobile__title d-md-none d-flex">{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}موضوع التذكرة{else}Ticket Subject & Number{/if}</span>
                        <a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">
                            <span class="ticket-subject{if $ticket.unread} unread{/if}">{$ticket.subject}</span>
                        </a>
                    </td>
                    <td>
						<span class="mobile__title d-md-none d-flex">{lang key='supportticketsstatus'}</span>
                        <span class="mb-0 label status {if is_null($ticket.statusColor)}status-{$ticket.statusClass}"{else}status-custom" style="background-color:{$ticket.statusColor}"{/if}>
                            {$ticket.status|strip_tags}
                        </span>
                    </td>
					<td>
						<span class="mobile__title d-md-none d-flex">{lang key='supportticketsdepartment'}</span>
                        <span class="default__title">{$ticket.department}</span>
                    </td>
                    <td>
						<span class="mobile__title d-md-none d-flex">{lang key='supportticketsticketlastupdated'}</span>
                        <span class="w-hidden">{$ticket.normalisedLastReply}</span>
                        {$ticket.lastreply}
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
