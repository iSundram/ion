<h6 class="coodiv-text-8 font-weight-400 mb-6">{lang key="createNewSupportRequest"}</h6>
<form method="post" action="{$smarty.server.PHP_SELF}?step=3" enctype="multipart/form-data" role="form">
{if $errormessage}
	{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}	
<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">
				{lang key="ticketinfo"} 
			</h6>
		</div>
	</div>
	<div class="card__body">
		   <div class="row">
            <div class="form-group col-md-6 col-12">
                <label class="col-form-label" for="inputName">{lang key='supportticketsclientname'}</label>
                <input type="text" name="name" id="inputName" value="{$name}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
            </div>
            <div class="form-group col-md-6 col-12">
                <label class="col-form-label" for="inputEmail">{lang key='supportticketsclientemail'}</label>
                <input type="email" name="email" id="inputEmail" value="{$email}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
            </div>
		   </div>
		
		   <div class="row">
            <div class="form-group {if $relatedservices}col-md-4{else}col-md-6{/if} col-12">
                <label class="col-form-label" for="inputDepartment">{lang key='supportticketsdepartment'}</label>
                <select name="deptid" id="inputDepartment" class="form-control" onchange="refreshCustomFields(this)">
                    {foreach $departments as $department}
                        <option value="{$department.id}"{if $department.id eq $deptid} selected="selected"{/if}>
                            {$department.name}
                        </option>
                    {/foreach}
                </select>
            </div>
            {if $relatedservices}
                <div class="form-group col-md-4 col-12">
                    <label class="col-form-label" for="inputRelatedService">{lang key='relatedservice'}</label>
                    <select name="relatedservice" id="inputRelatedService" class="form-control">
                        <option value="">{lang key='none'}</option>
                        {foreach $relatedservices as $relatedservice}
                            <option value="{$relatedservice.id}">
                                {$relatedservice.name} ({$relatedservice.status})
                            </option>
                        {/foreach}
                    </select>
                </div>
            {/if}
            <div class="form-group {if $relatedservices}col-md-4{else}col-md-6{/if} col-12">
                <label class="col-form-label" for="inputPriority">{lang key='supportticketspriority'}</label>
                <select name="urgency" id="inputPriority" class="form-control">
                    <option value="High"{if $urgency eq "High"} selected="selected"{/if}>
                        {lang key='supportticketsticketurgencyhigh'}
                    </option>
                    <option value="Medium"{if $urgency eq "Medium" || !$urgency} selected="selected"{/if}>
                        {lang key='supportticketsticketurgencymedium'}
                    </option>
                    <option value="Low"{if $urgency eq "Low"} selected="selected"{/if}>
                        {lang key='supportticketsticketurgencylow'}
                    </option>
                </select>
            </div>
        </div>
	</div>
</div>
<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">
				{lang key="contactmessage"} 
			</h6>
		</div>
	</div>
    <div class="card__body">
        <div class="row">
            <div class="form-group col-12">
                <label class="col-form-label" for="inputSubject">{lang key='supportticketsticketsubject'}</label>
                <input type="text" name="subject" id="inputSubject" value="{$subject}" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-form-label" for="inputMessage">{lang key='contactmessage'}</label>
            <textarea name="message" id="inputMessage" rows="12" class="form-control markdown-editor" data-auto-save-name="client_ticket_open">{$message}</textarea>
        </div>
    </div>
</div>

<div class="card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<div class="text">
			<h6 class="coodiv-text-11 mb-0">
				{lang key='supportticketsticketattachments'}
			</h6>
		</div>
	</div>
	<div class="card__body">
		<div class="form-group">
			<label for="inputAttachments"></label>
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
		
		<div id="customFieldsContainer">
            {include file="$template/supportticketsubmit-customfields.tpl"}
        </div>
        <div id="autoAnswerSuggestions" class="w-hidden"></div>
        <div class="text-center margin-bottom">
            {include file="$template/includes/captcha.tpl"}
        </div>
		
	</div>
</div>


<div class="form-group form__btn__submit__group justify-content-end">	
	<div class="right__side__btns">
        <a href="supporttickets.php" class="btn btn-default">{lang key='cancel'}</a>
		<button type="submit" id="openTicketSubmit" class="btn btn-primary ml-2 disable-on-click{$captcha->getButtonClass($captchaForm)}"> {lang key='supportticketsticketsubmit'}</button>
	</div>
</div>

</form>

{if $kbsuggestions}
    <script>
        jQuery(document).ready(function() {
            getTicketSuggestions();
        });
    </script>
{/if}
