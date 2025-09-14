

{if !$invalidTicketId}
<div class="view__ticket__wrapper">
	<div class="view__ticket__wrapper__header mb-5">
		<div class="row justify-content-between">
		
			<div class="col-md-7 col-12">
				<h6 class="coodiv-text-9 mb-0">{lang key='supportticketsviewticket'} #{$tid}</h6>
				<p class="coodiv-text-11 font-weight-400 text-gray">{$subject}</p>
			</div>
			
			<div class="col-auto d-lg-none d-flex align-items-center gap-5">
				<button id="ticketReply" type="button" class="btn btn-primary btn-sm" onclick="smoothScroll('#ticketReplyContainer')">
					{lang key='supportticketsreply'}
				</button>
				{if $closedticket}
					<button class="btn btn-default btn-sm" disabled="disabled">
						{lang key='supportticketsstatusclosed'}
					</button>
				{else}
					<button class="btn btn-default btn-sm" onclick="window.location='?tid={$tid}&amp;c={$c}&amp;closeticket=true'">
						{lang key='supportticketsclose'}
					</button>
				{/if}
			</div>
			
		</div>
	</div>
	
	
	<div class="view-ticket">
        {foreach $descreplies as $reply}
            <div class="view__ticket__wrapper__item">
                <div class="ticket-reply markdown-content{if $reply.admin} staff{/if}">
                    <div class="posted__by">
						 <div class="posted__by__name">
							<img src="https://www.gravatar.com/avatar/{$reply.email|md5}" alt="Avatar">
							<div class="text">
								<h6 class="coodiv-text-10 mb-1 font-weight-600">{$reply.requestor.name}</h6>
								<span class="label requestor-type-{$reply.requestor.type_normalised}">{lang key='support.requestor.'|cat:$reply.requestor.type_normalised}</span>
							</div>
						 </div>
						 <div class="posted__by__date">
							<h6 class="coodiv-text-12 font-weight-400 mb-0 text-gray">{$reply.date}</h6>
						 </div>
                    </div>
                    <div class="view__ticket__wrapper__item__message">
                        {$reply.message}
                        {if $reply.ipaddress}
                            <div class="reply__ipaddress">{lang key='support.ipAddress'}: {$reply.ipaddress}</div>
                        {/if}
                        {if $reply.id && $reply.admin && $ratingenabled}
                            <div class="clearfix">
                                {if $reply.rating}
                                    <div class="rating-done">
                                        {for $rating=1 to 5}
                                            <span class="star{if (5 - $reply.rating) < $rating} active{/if}"></span>
                                        {/for}
                                        <div class="rated">{lang key='ticketreatinggiven'}</div>
                                    </div>
                                {else}
                                    <div class="rating" ticketid="{$tid}" ticketkey="{$c}" ticketreplyid="{$reply.id}">
                                        <span class="star" rate="5"></span>
                                        <span class="star" rate="4"></span>
                                        <span class="star" rate="3"></span>
                                        <span class="star" rate="2"></span>
                                        <span class="star" rate="1"></span>
                                    </div>
                                {/if}
                            </div>
                        {/if}
                    </div>
                    {if $reply.attachments}
                        <div class="view__ticket__wrapper__item__attachments">
                            <h6 class="coodiv-text-12">{lang key='supportticketsticketattachments'} ({$reply.attachments|count})</h6>
                            {if $reply.attachments_removed} - {lang key='support.attachmentsRemoved'}{/if}
                            <ul class="attachment__list">
                                {foreach $reply.attachments as $num => $attachment}
                                    <li>
                                        {if $reply.attachments_removed}
                                            <span class="download__attachments removed"><i class="fal fa-trash mr-2"></i> {$attachment}</span>
                                        {else}
                                            <a class="download__attachments" href="dl.php?type={if $reply.id}ar&id={$reply.id}{else}a&id={$id}{/if}&i={$num}"><i class="far fa-arrow-to-bottom mr-2"></i> {$attachment}</a>
                                        {/if}
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}
                </div>
            </div>
        {/foreach}
	</div>
	


</div>

<div id="ticketReplyContainer" class="card d-print-none">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">
				{lang key='supportticketsreply'}
			</h6>
		</div>
	</div>
	<form method="post" action="{$smarty.server.PHP_SELF}?tid={$tid}&amp;c={$c}&amp;postreply=true" enctype="multipart/form-data" role="form" id="frmReply">
		<div class="card__body">
			<div class="row">
				<div class="form-group col-md-4">
					<label class="col-form-label" for="inputName">{lang key='supportticketsclientname'}</label>
					<input class="form-control" type="text" name="replyname" id="inputName" value="{$replyname}"{if $loggedin} disabled="disabled"{/if}>
				</div>
				<div class="form-group col-md-5">
					<label class="col-form-label" for="inputEmail">{lang key='supportticketsclientemail'}</label>
					<input class="form-control" type="text" name="replyemail" id="inputEmail" value="{$replyemail}"{if $loggedin} disabled="disabled"{/if}>
				</div>
			</div>

			<div class="form-group">
				<label class="col-form-label" for="inputMessage">{lang key='contactmessage'}</label>
				<textarea name="replymessage" id="inputMessage" rows="12" class="form-control markdown-editor" data-auto-save-name="ctr{$tid}">{$replymessage}</textarea>
			</div>

			<div class="form-group">
				<label class="col-form-label" for="inputAttachments">{lang key='supportticketsticketattachments'}</label>
				
				<div class="input__group gap-5 align-items-center mb-3 attachment-group input-group-default-raduis">
				<div class="custom-file">
					<label class="custom-file-label text-truncate" for="inputAttachment1" data-default="Choose file">
						{lang key='chooseFile'}
					</label>
					<input type="file" class="custom-file-input" name="attachments[]" id="inputAttachment1">
				</div>
				<div class="input-group-append">
					<button class="btn btn-sm btn-primary gap-3" type="button" id="btnTicketAttachmentsAdd">
						<i class="fal fa-plus"></i>
						{lang key='addmore'}
					</button>
				</div>
				</div>
				<div class="file-upload w-hidden">
				<div class="input-group mb-3 attachment-group">
					<div class="custom-file">
						<label class="custom-file-label text-truncate">
							{lang key='chooseFile'}
						</label>
						<input type="file" class="custom-file-input" name="attachments[]">
					</div>
				</div>
				</div>
				<div id="fileUploadsContainer"></div>
			    <p class="coodiv-text-12 font-weight-400">{lang key='supportticketsallowedextensions'}: {$allowedfiletypes}  ({lang key="maxFileSize" fileSize="$uploadMaxFileSize"})</p>
			</div>
		</div>
		<div class="card__footer">
			<div class="d-flex align-items-center justify-content-end gap-10">
				<input class="btn btn-sm btn-default" type="reset" value="{lang key='cancel'}" onclick="jQuery('#ticketReply').click()" />
				<input class="btn btn-sm btn-primary" type="submit" name="save" value="{lang key='supportticketsticketsubmit'}" />
			</div>
		</div>
	</form>
</div>
{/if}
