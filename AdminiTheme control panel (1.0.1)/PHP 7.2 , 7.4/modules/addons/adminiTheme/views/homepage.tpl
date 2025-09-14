<div class="page__wrapper__content">
	<div class="coodiv__main__hero">
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">Coodiv themes control panel (AdminiTheme)</h5>
				<p class="coodiv__main__hero__sub__title">
				You can configure your theme layout, menus, styles, pages, and more using Coodiv themes control panel without any coding knowledge.
				</p>
			</div>
			<div class="col-md-7"></div>
		</div>
	</div>
	<div class="row justify-content-start">
		<div class="col-md-7">
			<div class="coodiv__theme__informations">
			{foreach item=group from=$groups}
			{assign var="itemSupportedDate" value=$group.itemsupported|strtotime}
			{assign var="currentDate" value="now"|strtotime}
			<ul class="list list__theme__informations">
				<li class="list__item"><span class="list__label">Theme:</span><span class="list__value">{$group.itemname}</span></li>
				<li class="list__item"><span class="list__label">License Key:</span><span class="list__value">{$group.coodivliecense}</span></li>
				<li class="list__item"><span class="list__label">Theme ID:</span><span class="list__value">{$group.itemid}</span></li>
				<li class="list__item"><span class="list__label">Registration Date:</span><span class="list__value">{$group.itemsoldat}</span></li>
				<li class="list__item"><span class="list__label">Support & updates:</span><span class="list__value {if $itemSupportedDate < $currentDate}error{else}success{/if}">until {$group.itemsupported}</span></li> 
				<li class="list__item"><span class="list__label">Support status:</span>
				{if $itemSupportedDate < $currentDate}
					<span class="list__value error">The item support has expired.</span>
				{else}
					<span class="list__value success">The item support is still valid.</span>
				{/if}
				</li>
				<li class="list__item"><span class="list__label">User:</span><span class="list__value">{$group.itembuyer}</span></li> 
			</ul>
			{/foreach}
			</div>
		</div>
		<div class="col-md-5">
			<div class="coodiv__theme__control__addons">
				<a href="{$modurl}&action=themeoption"><i class="fad fa-sliders-h"></i><span>Genaral settings</span></a>
				<a href="{$modurl}&action=styleoptions"><i class="fad fa-swatchbook"></i><span>Style & Color settings</span></a>
				<a href="{$modurl}&action=styleoptions"><i class="fad fa-text"></i><span>Typography settings</span></a>
				<a href="{$modurl}&action=layoutoptions"><i class="fad fa-browser"></i><span>Layouts settings</span></a>
				<a href="{$modurl}&action=sidebaroptions"><i class="fad fa-th-list"></i><span>Sidebar settings</span></a>
				<a href="{$modurl}&action=footeroptions"><i class="fad fa-columns"></i><span>Footer settings</span></a>
				<a href="{$modurl}&action=homepageoptions"><i class="fad fa-desktop"></i><span>Homepage settings</span></a>
				<a href="{$modurl}&action=listgroup"><i class="fad fa-bars"></i><span>Menu manager</span></a>
			</div>
		</div>
	</div>
</div>