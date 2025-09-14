<div class="coodiv__main__hero with__menu">
	<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
	<div class="row justify-content-between">
		<div class="col-md-5 col-12">
		
			<h5 class="coodiv__main__hero__title">AdminiTheme {$groupinfo.name} Menu list</h5>
			<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
		</div>
		<div class="col-md-7 col-12 btn__container">
			<a href="{$modurl}&action=additem&groupid={$groupinfo.id}" class="add__new__group__btn"><i class="fal fa-plus"></i>Add new item</a>
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

<div class="menu__listitems__wrapper">
     <div class="released__table">
          <div class="released__row">
               <div class="released__col">Title</div>
               <div class="released__col">Display Rule</div>
               <div class="released__col target">Target Blank</div>
               <div class="released__col"></div>
           </div>
		   
		   {function name=parsemenuchildren menuitems=$items}
		   {foreach item=item from=$menuitems}		   
		   <div {if $menuid!=''}id="{$menuid}"{/if} class="released__row {if $menuclass!=''}{$menuclass}{/if}">
               <div class="released__col menu__title">{$item.title}</div>
               <div class="released__col">
			   {if $item.accesslevel=='1'}
               <span class="label level__1">Always Active</span>
               {else if $item.accesslevel=='2'}
               <span class="label level__2">Active for Guest Only</span>
               {else if $item.accesslevel=='3'}
               <span class="label level__3">Active for Client Only</span>
               {/if}
			   </div>
               <div class="released__col target">
			   {if $item.targetwindow=='_blank'}
			   <span class="label enabled">Enabled</span>
			   {else if $item.targetwindow=='_self'}
			   <span class="label disabled">Disabled</span>
			   {/if}
			   </div>
               <div class="released__col">
			   <a href="{$modurl}&action=edititem&itemid={$item.id}" class="btn__manage__menu">Manage menu</a>
			   </div>
		   </div>
		   {parsemenuchildren menuitems=$item.children menuid="menu-children" menuclass="menu__items__list__children"}
		   {/foreach}
		   {/function}
		   {parsemenuchildren menuitems=$items menuid="menu-parent" menuclass="menu__items__list__parent"}
	  </div>      	
</div>


{if $countitems=='0'}
<div class="alert alert-warning" role="alert">
	<h4 class="alert-heading">No Menu Items Created !</h4>
	<p>Please <a href="{$modurl}&action=additem&groupid={$groupinfo.id}">Add New Menu Items</a>, or follow our <a href="https://emyui.coodiv.net/documentation/" target="_blank" href="#">documentation</a> if need more information.</p>
</div>
{/if} 
</div>


								 




