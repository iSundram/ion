<div class="coodiv__main__hero">
	<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
	<div class="row justify-content-between">
		<div class="col-md-8 col-12">
			<h5 class="coodiv__main__hero__title">Add New Menu Items</h5>
			<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>
<form id="addmenuform" action="{$modurl}&action=doadditem" method="post" autocomplete="off">
	<input type="hidden" name="groupid" value="{$groupid}">
	<div class="row">
		<div class="col-md-8 col-12">
			<div class="add__new__menu__form__groups">
				<div class="add__new__menu__form__groups__header">
					<h5 class="title"><i class="fal fa-bars"></i> New Menu Item</h5>
					<div class="add__new__menu__form__groups__header__options">
						<div class="target__radio__container">
							<span class="target__radio__title">Target Blank:</span>
							<div class="target__radiogroup">
								<input type="radio" name="targetwindow" id="targetwindowself" value="_self" checked="checked">
								<label for="targetwindowself">Disabled</label>
								<input type="radio" name="targetwindow" id="targetwindowblank" value="_blank">
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
						<div class="col-md-6 col-12">
								<select name="urltype" id="urltype" class="form-control input-sm">
									<option value="clientarea-off">WHMCS Core URL</option>
									<option value="customurl">External or Custom URL</option>
								</select>
						</div>
					</div>
					</div>
					<div class="form-group">
					<label for="target">URL <i data-toggle="tooltip" data-placement="bottom" title="Displays a predefined list of WHMCS pages to choose from. The menu item URL will be set automatically based on the selected page or you can use you custom link" class="fas fa-info-circle"></i></label>
					<div class="row">
					<div class="col-md-6 col-12">
								<select name="clientarea-off" id="clientarea-off" class="form-control input-sm" style="display:;">
									<option value="index.php">Portal Home</option>
									<option value="cart.php?a=add&domain=register">Register a New Domain</option>
									<option value="cart.php?a=add&domain=transfer">Transfer Domains to Us</option>
									<option value="cart.php?a=view">View Cart</option>
									<option value="clientarea.php">Client Summary</option>
									<option value="networkissues.php">Network Issues</option>
									<option value="serverstatus.php">Servers Status</option>
									<option value="supporttickets.php">Support Tickets</option>
									<option value="clientarea.php?action=details">Edit Account Details</option>
									<option value="clientarea.php?action=contacts">Contacts/Sub-Accounts</option>
									<option value="clientarea.php?action=emails">Email History</option>
									<option value="clientarea.php?action=changepw">Change Password</option>
									<option value="clientarea.php?action=security">Security Settings</option>
									<option value="clientarea.php?action=products">My Services</option>
									<option value="cart.php?gid=addons">View Available Addons</option>
									<option value="clientarea.php?action=domains">My Domain</option>
									<option value="cart.php?gid=renewals">Renew Domains</option>
									<option value="downloads.php">Downloads</option>
									<option value="knowledgebase.php">Knowledgebase</option>
									<option value="domainchecker.php">Domain Checker</option>
									<option value="cart.php">Order</option>
									<option value="announcements.php">Announcements</option>
									<option value="submitticket.php">Open New Ticket</option>
									<option value="affiliates.php">Affiliates</option>
									<option value="contact.php">Contact Us</option>
									<option value="login.php">Login Page</option>
									<option value="register.php">Register Account</option>
									<option value="pwreset.php">Forgot Password</option>
									<option value="clientarea.php?action=invoices">My Invoices</option>
									<option value="clientarea.php?action=creditcard">Manage Credit Card</option>
									<option value="clientarea.php?action=addfunds">Add Funds</option>
									<option value="clientarea.php?action=quotes">My Quotes</option>
									<option value="clientarea.php?action=masspay&all=true">Mass Payment</option>
									<option value="logout.php">Logout</option>
								</select>    
								<input type="text" name="customurl" id="customurl" class="form-control input-sm" placeholder="Specify anything here to be used as the URL.." style="display:none;">
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
								<input type="text" name="title" id="title" class="form-control input-sm" placeholder="" required>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="form-group">
								<label for="title">Menu icon, <b>Only icon class</b> Use <a target="_blank" href="https://fontawesome.com/v5/search">FontAwesome</a><i data-toggle="tooltip" data-placement="bottom" title="Use icon for your menu, please not that you need to add only the class ex: fal fa-home" class="fas fa-info-circle"></i></label>
								<input type="text" name="css_icon" id="css_icon" class="form-control input-sm" placeholder="fal fa-home">
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
												<input type="text" name="translation_title[{$language}]" class="form-control" id="translation_title[{$language}]" placeholder="">
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
								<input type="radio" name="badge" value="totalservices">
								Total Products/Services
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activeservices">
								Active Products/Services
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="totaldomains">
								Total Domains
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activedomains">
								Active Domains
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="dueinvoices">
								Due Invoices
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="overdueinvoices">
								Overdue Invoices
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="activetickets">
								Active Tickets
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="shoppingcartitems">
								Shopping Cart Items
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
						</div>
						<div class="radio">
							<label class="template__label">
								<input type="radio" name="badge" value="none" checked="checked" checked >
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
					<input type="number" name="menuidorder" id="menuidorder" class="form-control input-sm" placeholder="leave this field empty for the default menu order">
				</div>
				<div class="form-group">
					<label for="parentid">Parent Menu <i data-toggle="tooltip" data-placement="bottom" title="Select the parent menu for this menu, you can leave it if you want to make this a parent menu" class="fas fa-info-circle"></i></label>
					<select name="parentid" id="parentid" class="form-control input-sm">
						<option value="0">No Parent</option>
						{foreach from=$parentlist item=item}
						<option value="{$item.id}">{$item.title}</option>
						{/foreach}
					</select>
				</div>
				<div class="form-group">
					<label for="accesslevel">Display Rule <i data-toggle="tooltip" data-placement="bottom" title="Assign the currently managed menu to the specific display rule." class="fas fa-info-circle"></i></label>
					<select name="accesslevel" id="accesslevel" class="form-control input-sm">
						<optgroup label="Common Display Rule">
							<option value="1">Always Active</option>
							<option value="2">Active for Guest Only</option>
							<option value="3">Active for Client Only</option>
							<option value="8">Active for Affiliates only</option>
						</optgroup>
						<optgroup label="Active only for clients who have:">
							<option value="4">Active Product(s)</option>
							<option value="5">Overdue Invoice(s)</option>
							<option value="6">Active Ticket(s)</option>
							<option value="7">Active Domain(s)</option>
						</optgroup>
					</select>
				</div>
				<div class="form-group">
					<label for="title">Additional classes <i data-toggle="tooltip" data-placement="bottom" title="Specify classes for this menu item" class="fas fa-info-circle"></i></label>
					<input type="text" name="css_class" id="css_class" class="form-control input-sm" placeholder="leave this field empty for the default menu classes">
				</div>
				<div class="form-group">
					<label for="title">Additional ID <i data-toggle="tooltip" data-placement="bottom" title="Specify ID for this menu item" class="fas fa-info-circle"></i></label>
					<input type="text" name="css_id" id="css_id" class="form-control input-sm" placeholder="leave this field empty for the default menu ID">
				</div>
			</div>
		</div>	
	</div>
</form>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" name="close" form="addmenuform" value="Add menu"/>
<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=listitems&groupid={$groupid}">Cancel</a>
</div>