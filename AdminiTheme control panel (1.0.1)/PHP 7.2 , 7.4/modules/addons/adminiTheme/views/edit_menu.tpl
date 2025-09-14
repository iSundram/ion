<div class="coodiv__main__hero">
<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
<div class="row justify-content-between">
<div class="col-md-8 col-12">
<h5 class="coodiv__main__hero__title">Edit {$iteminfo.title} Menu Items</h5>
<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
</div>
<div class="col-md-4"></div>
</div>
</div>

<form id="editmenuform" action="{$modurl}&action=doedititem" method="post" autocomplete="off">
<input type="hidden" name="itemid" value="{$iteminfo.id}">
<input type="hidden" name="groupid" value="{$iteminfo.groupid}">
<input type="hidden" name="parentid" value="{$iteminfo.parentid}">
  <div class="row">
    <div class="col-md-8 col-12">
       <div class="add__new__menu__form__groups">
			<div class="add__new__menu__form__groups__header">
				<h5 class="title"><i class="fal fa-pen"></i> Edit Menu Item</h5>
					<div class="add__new__menu__form__groups__header__options">
					<div class="target__radio__container">
					<span class="target__radio__title">Target Blank:</span>
					<div class="target__radiogroup">
                            <input type="radio" name="targetwindow" id="targetwindowself" value="_self" {if $iteminfo.targetwindow=='_self'}checked{/if}>
							<label for="targetwindowself">Disabled</label>
                            <input type="radio" name="targetwindow" id="targetwindowblank" value="_blank" {if $iteminfo.targetwindow=='_blank'}checked{/if}>
							<label for="targetwindowblank">Enabled</label>
                            <span class="selection-indicator"></span>
					</div>
                    </div>
                    </div>
	         </div>
			 
			 <div class="add__new__menu__form__groups__body section">
					<h5 class="title">Menu Item Settings</h5>
					<div class="form-group">
                        <label for="target">Type <i data-toggle="tooltip" data-placement="bottom" title="Choose the menu type that you would like to manage. Learn more about types in our documentation." class="fas fa-info-circle"></i></label>
                        <div class="row">
                            <div class="col-lg-6">
                                    <select name="urltype" id="urltype" class="form-control input-sm">
                                        <option value="clientarea-off"{if $iteminfo.urltype=='clientarea-off'} selected{/if}>WHMCS Core URL</option>
                                        <option value="customurl"{if $iteminfo.urltype=='customurl'} selected{/if}>External or Custom URL</option>
                                    </select>
                            </div>
						</div>
					</div>
					<div class="form-group">
                        <label for="target">URL <i data-toggle="tooltip" data-placement="bottom" title="Displays a predefined list of WHMCS pages to choose from. The menu item URL will be set automatically based on the selected page or you can use you custom link" class="fas fa-info-circle"></i></label>
                        <div class="row">
                         <div class="col-lg-6">
                                    <select name="clientarea-off" id="clientarea-off" class="form-control input-sm" style="display:{if $iteminfo.urltype=='clientarea-off'}block{else}none{/if};">
                                        <option value="index.php"{if $iteminfo.url=='index.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Portal Home</option>
                                        <option value="downloads.php"{if $iteminfo.url=='downloads.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Downloads</option>
                                        <option value="knowledgebase.php"{if $iteminfo.url=='knowledgebase.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Knowledgebase</option>
                                        <option value="domainchecker.php"{if $iteminfo.url=='domainchecker.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Domain Checker</option>
                                        <option value="cart.php"{if $iteminfo.url=='cart.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Order</option>
                                        <option value="announcements.php"{if $iteminfo.url=='announcements.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Announcements</option>
                                        <option value="submitticket.php"{if $iteminfo.url=='submitticket.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Open New Ticket</option>
                                        <option value="affiliates.php"{if $iteminfo.url=='affiliates.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Affiliates</option>
                                        <option value="contact.php"{if $iteminfo.url=='contact.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Contact Us</option>
                                        <option value="login.php"{if $iteminfo.url=='login.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Login Page</option>
										<option value="clientarea.php"{if $iteminfo.url=='clientarea.php' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Client Summary</option>
                                        <option value="networkissues.php"{if $iteminfo.url=='networkissues.php' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Network Issues</option>
                                        <option value="serverstatus.php"{if $iteminfo.url=='serverstatus.php' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Servers Status</option>
                                        <option value="supporttickets.php"{if $iteminfo.url=='supporttickets.php' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Support Tickets</option>
                                        <option value="clientarea.php?action=products"{if $iteminfo.url=='clientarea.php?action=products' && $iteminfo.urltype=='clientarea-on'} selected{/if}>My Services</option>
                                        <option value="cart.php?gid=addons"{if $iteminfo.url=='cart.php?gid=addons' && $iteminfo.urltype=='clientarea-on'} selected{/if}>View Available Addons</option>
                                        <option value="clientarea.php?action=domains"{if $iteminfo.url=='clientarea.php?action=domains' && $iteminfo.urltype=='clientarea-on'} selected{/if}>My Domain</option>
                                        <option value="cart.php?gid=renewals"{if $iteminfo.url=='cart.php?gid=renewals' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Renew Domains</option>
                                        <option value="clientarea.php?action=invoices"{if $iteminfo.url=='clientarea.php?action=invoices' && $iteminfo.urltype=='clientarea-on'} selected{/if}>My Invoices</option>
                                        <option value="clientarea.php?action=creditcard"{if $iteminfo.url=='clientarea.php?action=creditcard' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Manage Credit Card</option>
                                        <option value="clientarea.php?action=addfunds"{if $iteminfo.url=='clientarea.php?action=addfunds' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Add Funds</option>
                                        <option value="clientarea.php?action=quotes"{if $iteminfo.url=='clientarea.php?action=quotes' && $iteminfo.urltype=='clientarea-on'} selected{/if}>My Quotes</option>
                                        <option value="clientarea.php?action=masspay&all=true"{if $iteminfo.url=='clientarea.php?action=masspay&all=true' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Mass Payment</option>
                                        <option value="clientarea.php?action=details"{if $iteminfo.url=='clientarea.php?action=details' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Edit Account Details</option>
                                        <option value="clientarea.php?action=contacts"{if $iteminfo.url=='clientarea.php?action=contacts' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Contacts/Sub-Accounts</option>
                                        <option value="clientarea.php?action=emails"{if $iteminfo.url=='clientarea.php?action=emails' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Email History</option>
                                        <option value="clientarea.php?action=changepw"{if $iteminfo.url=='clientarea.php?action=changepw' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Change Password</option>
                                        <option value="clientarea.php?action=security"{if $iteminfo.url=='clientarea.php?action=security' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Security Settings</option>
                                        <option value="logout.php"{if $iteminfo.url=='logout.php' && $iteminfo.urltype=='clientarea-on'} selected{/if}>Logout</option>
                                        <option value="register.php"{if $iteminfo.url=='register.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Register Account</option>
                                        <option value="pwreset.php"{if $iteminfo.url=='pwreset.php' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Forgot Password</option>
                                        <option value="cart.php?a=add&domain=register"{if $iteminfo.url=='cart.php?a=add&domain=register' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Register a New Domain</option>
                                        <option value="cart.php?a=add&domain=transfer"{if $iteminfo.url=='cart.php?a=add&domain=transfer' && $iteminfo.urltype=='clientarea-off'} selected{/if}>Transfer Domains to Us</option>
                                        <option value="cart.php?a=view"{if $iteminfo.url=='cart.php?a=view' && $iteminfo.urltype=='clientarea-off'} selected{/if}>View Cart</option>
                                    </select>
                                    <input type="text" name="customurl" id="customurl" class="form-control input-sm" placeholder="Specify anything here to be used as the URL.." {if $iteminfo.urltype=='customurl'}value="{$iteminfo.url}"{/if} style="display:{if $iteminfo.urltype=='customurl'}block{else}none{/if};">
                                </div>
                            </div>
                        </div>
				</div>
				<div class="add__new__menu__form__groups__body section">
					<h5 class="title">Menu Item title</h5>
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="form-group">
								<label for="title">Custom String title <i data-toggle="tooltip" data-placement="bottom" title="Use the custom title string, translation is not available yet" class="fas fa-info-circle"></i></label>
								<input type="text" name="title" id="title" value="{$iteminfo.title}" class="form-control input-sm" placeholder="" required>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="form-group">
								<label for="title">Menu icon <i data-toggle="tooltip" data-placement="bottom" title="Use the custom title string, translation is not available yet" class="fas fa-info-circle"></i></label>
								<input type="text" name="css_icon" id="css_icon" value="{$iteminfo.css_icon}" class="form-control input-sm" placeholder="leave this field empty for not using icon for the item">
							</div>
						</div>
					</div>
				</div>
				
				<div class="add__new__menu__form__groups__body section">
					<h5 class="title">Menu Item title translation</h5>
					<div role="tabpanel" class="tab-pane coodiv-menu-translations-tabs" id="translations">
						<div class="clear-line-20"></div>
						<div class="panel-group" id="translationpanels" role="tablist" aria-multiselectable="true">
							<div class="row flexrow">
							{foreach from=$languages item=language}
							<div class="col-md-4 col-12">
							<input type="hidden" name="translation_languages[]" value="{$language}">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading_{$language}">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#translationpanels" href="#{$language}" aria-expanded="true" aria-controls="{$language}">
										{$language|ucfirst}
										</a>
									</h4>
								</div>
								<div id="{$language}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading_{$language}">
									<div class="panel-body">
										<div class="form-horizontal">
											<div class="form-group">
												<label for="translation_title[{$language}]">Item Title in {$language|ucfirst} language <i data-toggle="tooltip" data-placement="bottom" title="Use the custom title string, translation is not available yet" class="fas fa-info-circle"></i></label>
												<input type="text" name="translation_title[{$language}]" class="form-control" id="translation_title[{$language}]" value="{$itemtranslations.title.$language}" placeholder="">
											</div>
										</div>
									</div>
								</div>
							</div>
							</div>
							{/foreach}
							</div>
						</div>
					</div>
				</div>
				
				<div class="add__new__menu__form__groups__body section">
					<h5 class="title mb-0">Additionel filed for the item</h5>
					<div class="form-group templates__form__control">
					<label for="badge">Alerts numbers  <i data-toggle="tooltip" data-placement="bottom" title="You can show the number of totaldomains as a badge for the item" class="fas fa-info-circle"></i></label>
					<fieldset name="badge" id="badge">
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="totalservices" {if $iteminfo.badge=='totalservices'} checked{/if}>
								Total Products/Services
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activeservices" {if $iteminfo.badge=='activeservices'} checked{/if}>
								Active Products/Services
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="totaldomains" {if $iteminfo.badge=='totaldomains'} checked{/if}>
								Total Domains
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activedomains" {if $iteminfo.badge=='activedomains'} checked{/if}>
								Active Domains
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="dueinvoices" {if $iteminfo.badge=='dueinvoices'} checked{/if}>
								Due Invoices
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="overdueinvoices" {if $iteminfo.badge=='overdueinvoices'} checked{/if}>
								Overdue Invoices
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activetickets" {if $iteminfo.badge=='activetickets'} checked{/if}>
								Active Tickets
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="shoppingcartitems" {if $iteminfo.badge=='shoppingcartitems'} checked{/if}>
								Shopping Cart Items
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="none" {if $iteminfo.badge=='none'} checked{/if} >
								None
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
					</fieldset>
				</div>
				</div>	
				
				
           </div>
       </div>
	   
       <div class="col-md-4 col-12">
           <div class="add__new__menu__form__groups__sidebar">	
			   <div class="form-group">
					<label for="title">Menu order ID <i data-toggle="tooltip" data-placement="bottom" title="Use the custom title string, translation is not available yet" class="fas fa-info-circle"></i></label>
					<input type="number" name="menuidorder" id="menuidorder" class="form-control input-sm" value="{$iteminfo.reorder}" required>
				</div>
                <div class="form-group">
					 <label for="accesslevel">Display Rule <i data-toggle="tooltip" data-placement="bottom" title="Assign the currently managed menu to the specific display rule." class="fas fa-info-circle"></i></label>
					  <select name="accesslevel" id="accesslevel" class="form-control input-sm">
						<optgroup label="Common Display Rule">
							<option {if $iteminfo.accesslevel=='1'} selected{/if} value="1">Always Active</option>
							<option {if $iteminfo.accesslevel=='2'} selected{/if} value="2">Active for Guest Only</option>
							<option {if $iteminfo.accesslevel=='3'} selected{/if} value="3">Active for Client Only</option>
							<option {if $iteminfo.accesslevel=='8'} selected{/if} value="8">Active for Affiliates only</option>
						</optgroup>
						<optgroup label="Active only for clients who have:">
							<option {if $iteminfo.accesslevel=='4'} selected{/if} value="4">Active Product(s)</option>
							<option {if $iteminfo.accesslevel=='5'} selected{/if} value="5">Overdue Invoice(s)</option>
							<option {if $iteminfo.accesslevel=='6'} selected{/if} value="6">Active Ticket(s)</option>
							<option {if $iteminfo.accesslevel=='7'} selected{/if} value="7">Active Domain(s)</option>
						</optgroup>
					  </select>
                </div>
				<div class="form-group">
					<label for="title">Additional classes <i data-toggle="tooltip" data-placement="bottom" title="Specify classes for this menu item" class="fas fa-info-circle"></i></label>
					<input type="text" name="css_class" id="css_class" class="form-control input-sm" value="{$iteminfo.css_class}" placeholder="leave this field empty for the default menu classes">
				</div>
				<div class="form-group">
					<label for="title">Additional ID <i data-toggle="tooltip" data-placement="bottom" title="Specify ID for this menu item" class="fas fa-info-circle"></i></label>
					<input type="text" name="css_id" id="css_id" class="form-control input-sm" value="{$iteminfo.css_id}" placeholder="leave this field empty for the default menu ID">
				</div>
            </div>
      </div>
    </div>
</form>
					
					
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
     <input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" name="close" form="editmenuform" value="Save"/>
     <a href="#delete__menu__item" data-toggle="modal" class="coodiv__whmcs__admin__panel__form__footer__submit delete__item">Delete menu</a>
</div>



<div id="delete__menu__item" class="coodiv__whmcs__admin__panel__model modal fade delete__item">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=deleteitem&id={$iteminfo.id}&groupid={$iteminfo.groupid}" method="post">
            <div class="coodiv__whmcs__admin__panel__model__header">
                <h4 class="title">Remove menu item completly</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
            </div>
            <div class="coodiv__whmcs__admin__panel__model__body">
			     <p>You are trying to remove <strong>{$iteminfo.title}</strong> menus item, <b class="red">this action can not be undone!</b>. Please confirm, to remove <strong>{$iteminfo.title}</strong> menu completly.</p>
            </div>
            <div class="coodiv__whmcs__admin__panel__model__footer">
				<button type="submit" class="confirm">Delete This Menu</button>
                <button type="button" class="cancel" data-dismiss="modal">Cancel</button>
            </div>
            </form>
        </div>
    </div>
</div>