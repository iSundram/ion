<div class="coodiv__main__hero with__menu">
	<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
	<div class="row justify-content-between">
		<div class="col-md-5 col-12">
			<h5 class="coodiv__main__hero__title">Create new menus group</h5>
			<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
		</div>
		<div class="col-md-7 col-12 btn__container">
			<a href="{$modurl}&action=listgroup" class="add__new__group__btn cancel"><i class="fal fa-times"></i>Cancel</a>
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


<form id="addgroupform" class="coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applynewgroup" method="post">
<div class="form-group">
<label for="name">Menu group name <i data-toggle="tooltip" data-placement="bottom" title="Choose the menu group name that you would to create." class="fas fa-info-circle"></i></label>
<input type="text" name="name" id="name" value="" placeholder="Enter Group Name..." class="form-control" required>
</div>

<div class="form-group templates__form__control d-none">
<label for="template">Select your theme <strong>works only on <a href="https://coodiv.net" target="_blank">coodiv</a> themes</strong> <i data-toggle="tooltip" data-placement="bottom" title="select the theme that you would to use the menu group on it." class="fas fa-info-circle"></i></label>
<fieldset name="template" id="template">
{foreach item=comtemp from=$compatibletemplates}
<div class="radio">
<label class="template__label">
<input type="radio" name="template" id="{$comtemp.short}" value="{$comtemp.short}" required checked>
{$comtemp.name}
<span class="checkmark"><i class="fal fa-check"></i></span>
</label>
</div>
{/foreach}
</fieldset>
<a class="form__control__another" href="https://coodiv.net/support" target="_blank">You want to use our addon on a another themes?</a>
</div>

<div class="form-group menu__place__radio__group">
<label>Set this menu as: <i data-toggle="tooltip" data-placement="bottom" title="Choose the menu position, you can use it like an primary,Secondary or footer menu." class="fas fa-info-circle"></i></label>
<fieldset>
<div class="radio">
<label>
<img src="../modules/addons/adminiTheme/assets/img/no-menu.jpg" alt="">
<input type="radio" name="setas" id="setas_none" value="none" checked>
<span class="title">No menu set</span>
<span class="checkmark"></span>
</label>
</div>

<div class="radio">
<label>
<img src="../modules/addons/adminiTheme/assets/img/primary.jpg" alt="">
<input type="radio" name="setas" id="setas" value="primary">
<span class="title">Primary Menu</span>
<span class="checkmark"></span>
</label>
</div>


<div class="radio">
<label>
<img src="../modules/addons/adminiTheme/assets/img/footer.jpg" alt="">
<input type="radio" name="setas" id="setas_secondary" value="secondary">
<span class="title">footer Menu</span>
<span class="checkmark"></span>
</label>
</div>
</fieldset>

</div>

<div class="form-group">
<label for="css_activeclass">Active Menu Class <i data-toggle="tooltip" data-placement="bottom" title="Assign the custom HTML class that applies on the menu when the user is on the active menu" class="fas fa-info-circle"></i></label>
<input type="text" name="css_activeclass" id="css_activeclass" value="active" placeholder="used for current/active menu item, commonly 'active'" class="form-control">
</div>


</form>		
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="addgroupform" value="Add new group"/>
<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=listgroup">Cancel</a>
</div>

