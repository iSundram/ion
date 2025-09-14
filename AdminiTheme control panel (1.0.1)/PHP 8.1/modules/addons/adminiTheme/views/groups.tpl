<div class="page__wrapper__content">
<div class="coodiv__main__hero with__menu">
	<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
	<div class="row justify-content-between">
		<div class="col-md-5 col-12">
			<h5 class="coodiv__main__hero__title">AdminiTheme Menu manager</h5>
			<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
		</div>
		<div class="col-md-7 col-12 btn__container">
			<a href="{$modurl}&action=addnewgroup" class="add__new__group__btn"><i class="fal fa-plus"></i>Add new group</a>
		</div>
	</div>

	<ul class="navbar-nav coodiv__main__hero__nav">
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=themeoption">Genaral</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=styleoptions">Color Schemes</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=typpoptions">Typography</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=layoutoptions">Layouts settings</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=sidebaroptions">Sidebar settings</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
	  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
	  <li class="nav-item active"><a class="nav-link">Menu manager</a></li> 
	</ul>
</div>

<div class="menus__groups__list {foreach item=group from=$groups}{foreachelse}list__group__emtpy{/foreach}">
    {foreach item=group from=$groups}
    <div class="menus__groups__item">
	<div class="menus__groups__item__head">
    <h6 class="menus__groups__item__title">{$group.name}
	{if $group.isprimary eq 1}
	<span class="primary">Primary menu</span>
	{else if $group.issecondary eq 1}
	<span class="secondary">Footer menu</span>
	{else}
	<span>No menu set</span>
	{/if}</h6>
	<div class="menus__groups__item__head__option">
	<a href="#edit__group__{$group.id}" data-toggle="modal" class="menus__groups__item__head__option__btn" title="Update Group"><i class="fal fa-pen"></i></a></span>
    <a href="#delete__group__{$group.id}" data-toggle="modal" class="menus__groups__item__head__option__btn" title="Delete Group"><i class="fal fa-times"></i></a>
	</div>
	</div>		
	<div class="menus__groups__item__body">
	{$datecreate}
    <a href="{$modurl}&action=listitems&groupid={$group.id}" class="menus__groups__item__head__option__btn__manage"><i class="fal fa-bars"></i> Manage the Menu</a>	
	</div>
    </div>
    {foreachelse}
	<div class="alert alert-danger" role="alert">
    <h4 class="alert-heading">You need to add a new menus group !</h4>
    <p>In order to add a new menu for your theme, you need first to create at least one menu group.</p>
    </div>
    {/foreach}
</div>
{foreach item=group from=$groups}
<div id="delete__group__{$group.id}" class="coodiv__whmcs__admin__panel__model modal fade delete__item">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=deletegroup&id={$group.id}" method="post">
            <div class="coodiv__whmcs__admin__panel__model__header">
                <h4 class="title">Remove menu group completly</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
            </div>
            <div class="coodiv__whmcs__admin__panel__model__body">
			     <p>You are trying to remove this group menus, <b class="red">this action can not be undone!</b>. Please confirm, to remove this group completly.</p>
            </div>
            <div class="coodiv__whmcs__admin__panel__model__footer">
			    <button type="submit" class="confirm">Delete This Group</button>
                <button type="button" class="cancel" data-dismiss="modal">Close</button>
            </div>
            </form>
        </div>
    </div>
</div>
{/foreach}
</div>
{foreach item=group from=$groups}
<div id="edit__group__{$group.id}" class="coodiv__whmcs__admin__panel__model__edit modal edit__model">
    <div class="modal-large">
        <div class="modal-content">
            <form action="{$modurl}&action=updategroup&id={$group.id}" method="post">
			<div class="coodiv__whmcs__admin__panel__model__header">
                <h4 class="title">Update {$group.name} menus group</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
            </div>
            <div class="coodiv__whmcs__admin__panel__model__body">
                            <div class="form-group">
                                <label for="name">Menu group name <i data-toggle="tooltip" data-placement="bottom" title="Choose the menu group name that you would to create." class="fas fa-info-circle"></i></label>
                                <input type="text" name="name" id="name_{$group.id}" value="{$group.name}" placeholder="Enter Group Name..." class="form-control" required>
                            </div>
							
							<div class="form-group templates__form__control d-none">
							<label for="template">Select your theme <strong>works only on <a href="https://coodiv.net" target="_blank">coodiv</a> themes</strong> <i data-toggle="tooltip" data-placement="bottom" title="select the theme that you would to use the menu group on it." class="fas fa-info-circle"></i></label>
							<fieldset name="template" id="template_{$group.id}">
							{foreach item=comtemp from=$compatibletemplates}
							<div class="radio">
							<label class="template__label">
							<input type="radio" name="template" id="{$comtemp.short}" value="{$comtemp.short}" {if $group.template==$comtemp.short} checked{/if}>
							{$comtemp.name}
							<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
							{/foreach}
							</fieldset>
						    <a class="form__control__another" href="https://coodiv.net/support" target="_blank">You want to use our addon on a another themes?</a>
						    </div>
 
							<div class="form-group menu__place__radio__group">
							<label>Set this menu as: <i data-toggle="tooltip" data-placement="bottom" title="Choose the menu position, you can use it like an primary,Secondary or footer menu" class="fas fa-info-circle"></i></label>
							<fieldset>
							<div class="radio">
							<label>
							<img src="../modules/addons/adminiTheme/assets/img/no-menu.jpg" alt="">
							<input type="radio" name="setas" id="setas_none" value="none" {if $group.isprimary eq 0 && $group.issecondary eq 0} checked{/if}>
							<span class="title">No menu set</span>
							<span class="checkmark"></span>
							</label>
							</div>

							<div class="radio">
							<label>
							<img src="../modules/addons/adminiTheme/assets/img/primary.jpg" alt="">
							<input type="radio" name="setas" id="setas" value="primary" {if $group.isprimary eq 1} checked{/if}>
							<span class="title">Primary Menu</span>
							<span class="checkmark"></span>
							</label>
							</div>

							<div class="radio">
							<label>
							<img src="../modules/addons/adminiTheme/assets/img/footer.jpg" alt="">
							<input type="radio" name="setas" id="setas_secondary" value="secondary" {if $group.issecondary eq 1} checked{/if}>
							<span class="title">footer Menu</span>
							<span class="checkmark"></span>
							</label>
							</div>
							</fieldset>

							</div>
      
                            <div class="form-group">
                                <label for="css_activeclass">Active Menu Class <i data-toggle="tooltip" data-placement="bottom" title="Assign the custom HTML class that applies on the menu when the user is on the active menu" class="fas fa-info-circle"></i></label>
                                <input type="text" name="css_activeclass" id="css_activeclass_{$group.id}" value="{$group.css_activeclass}" placeholder="used for current/active menu item, commonly 'active'" class="form-control">
                            </div>
			</div>


			<div class="coodiv__whmcs__admin__panel__model__footer">
			    <button type="submit" class="confirm">Save Changes</button>
                <button type="button" class="cancel" data-dismiss="modal">Close</button>
            </div>
            </form>
		
		
    </div>
</div>
</div>
{/foreach}

