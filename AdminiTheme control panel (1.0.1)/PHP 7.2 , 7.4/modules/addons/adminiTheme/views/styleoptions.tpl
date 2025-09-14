<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">AdminiTheme Styles & colors settings</h5>
				<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
			</div>
			<div class="col-md-7 col-12 btn__container">
				<a href="#exportpageoptions" data-toggle="modal" class="add__new__group__btn"><i class="fas fa-inbox-out"></i>Export Options</a>
				<a href="#importpageoptions" data-toggle="modal" class="add__new__group__btn"><i class="fas fa-inbox-in"></i>Import Options</a>
				<a href="#resetpageoptions" data-toggle="modal" class="add__new__group__btn cancel"><i class="fas fa-redo-alt"></i>Reset Options</a>
			</div>
		</div>
	
		<ul class="navbar-nav coodiv__main__hero__nav">
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=themeoption">Genaral</a></li>
		  <li class="nav-item active"><a class="nav-link">Color Schemes</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=typpoptions">Typography</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=layoutoptions">Layouts settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=sidebaroptions">Sidebar settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	</div>
	<form id="applythemecolor" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applythemecolor" method="post">
		<input type="hidden" name="itemid" value="1">
		
		<div class="section d-none">
			<h5 class="title">Dark & light mode settings</h5>
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="form-group templates__form__control">
						<label for="darkmodefault">Dark mode  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to Active dark mode in website by default" class="fas fa-info-circle"></i></label>
						<fieldset name="darkmodefault" id="darkmodefault">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="darkmodefault" id="darkmodefault" value="activated" {if $themecolorsetting.darkmodefault=='activated' || $themecolorsetting.id != '1'}checked{/if}>
								Active dark mode in website by default
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group templates__form__control">
						<label for="allowdarkmode">Dark & light mode switch  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to Allow user to switch between dark and light mode" class="fas fa-info-circle"></i></label>
						<fieldset name="allowdarkmode" id="allowdarkmode">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="allowdarkmode" id="allowdarkmode" value="activated" {if $themecolorsetting.allowdarkmode=='activated' || $themecolorsetting.id != '1'}checked{/if}>
								Allow user to switch between dark and light mode
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
		
		<div class="section">
			<h5 class="title">Default Theme Color Schemes</h5>
			<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group color-radio-inputs">
				<label>Theme Color Schemes: <i data-toggle="tooltip" data-placement="bottom" title="Choose the default theme Color Schemes." class="fas fa-info-circle"></i></label>
				<fieldset id="theme-setting-default-color">
					<div class="radio">
						<label>
							<img src="../modules/addons/adminiTheme/assets/img/theme-color-1.webp" alt="">
							<input type="radio" name="dafaultthemecolor" id="theme-style-one" value="theme-style-one" {if $themecolorsetting.dafaultthemecolor=='theme-style-one' || $themecolorsetting.id != '1'}checked{/if}>
							<span class="title">Default Theme Schemes</span>
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="radio">
						<label>
							<img src="../modules/addons/adminiTheme/assets/img/theme-color-2.webp" alt="">
							<input type="radio" name="dafaultthemecolor" id="theme-style-two" value="theme-style-two" {if $themecolorsetting.dafaultthemecolor=='theme-style-two'}checked{/if}>
							<span class="title">Green Theme Schemes</span>
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="radio">
						<label>
							<img src="../modules/addons/adminiTheme/assets/img/theme-color-3.webp" alt="">
							<input type="radio" name="dafaultthemecolor" id="theme-style-three" value="theme-style-three" {if $themecolorsetting.dafaultthemecolor=='theme-style-three'}checked{/if}>
							<span class="title">Purple Theme Schemes</span>
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="radio">
						<label>
							<img src="../modules/addons/adminiTheme/assets/img/theme-color-4.webp" alt="">
							<input type="radio" name="dafaultthemecolor" id="theme-style-four" value="theme-style-four" {if $themecolorsetting.dafaultthemecolor=='theme-style-four'}checked{/if}>
							<span class="title">Red Theme Schemes</span>
							<span class="checkmark"></span>
						</label>
					</div>
				</fieldset>
			</div>
		</div>
		
		<div class="section {if $themecolorsetting.dafaultthemecolor=='theme-style-one' || $themecolorsetting.id != '1'}d-block{else}d-none{/if}" id="custom-colors-schemes-one">
			<h5 class="title">Custom Default Theme Color Schemes</h5>
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Backgrounds Colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Main Background color </label>
							<input class="form-control color-picker" id="backroundone" name="backroundone" {if $themecolorsetting.backroundone == null}value="#fcfdfe"{else}value="{$themecolorsetting.backroundone}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 2 Background color </label>
							<input class="form-control color-picker" id="backroundtwo" name="backroundtwo" {if $themecolorsetting.backroundtwo == null}value="#f5faff"{else}value="{$themecolorsetting.backroundtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 3 Background color </label>
							<input class="form-control color-picker" id="backroundtree" name="backroundtree" {if $themecolorsetting.backroundtree == null}value="#cfecf4"{else}value="{$themecolorsetting.backroundtree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 4 Background color </label>
							<input class="form-control color-picker" id="backroundfour" name="backroundfour" {if $themecolorsetting.backroundfour == null}value="#0cbed5"{else}value="{$themecolorsetting.backroundfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 5 Background color </label>
							<input class="form-control color-picker" id="backroundfive" name="backroundfive" {if $themecolorsetting.backroundfive == null}value="#23d4eb"{else}value="{$themecolorsetting.backroundfive}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 6 Background color </label>
							<input class="form-control color-picker" id="backroundsix" name="backroundsix" {if $themecolorsetting.backroundsix == null}value="#c6e3eb"{else}value="{$themecolorsetting.backroundsix}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 7 Background color </label>
							<input class="form-control color-picker" id="backroundsaven" name="backroundsaven" {if $themecolorsetting.backroundsaven == null}value="#fff"{else}value="{$themecolorsetting.backroundsaven}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 8 Background color </label>
							<input class="form-control color-picker" id="backroundeight" name="backroundeight" {if $themecolorsetting.backroundeight == null}value="#f4fcff"{else}value="{$themecolorsetting.backroundeight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 9 Background color </label>
							<input class="form-control color-picker" id="backroundnine" name="backroundnine" {if $themecolorsetting.backroundnine == null}value="#13274b"{else}value="{$themecolorsetting.backroundnine}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 10 Background color </label>
							<input class="form-control color-picker" id="backroundten" name="backroundten" {if $themecolorsetting.backroundten == null}value="#bbe4f0"{else}value="{$themecolorsetting.backroundten}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 11 Background color </label>
							<input class="form-control color-picker" id="backroundeleven" name="backroundeleven" {if $themecolorsetting.backroundeleven == null}value="#0cbcd3"{else}value="{$themecolorsetting.backroundeleven}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 12 Background color </label>
							<input class="form-control color-picker" id="backroundtwelve" name="backroundtwelve" {if $themecolorsetting.backroundtwelve == null}value="#0bb7d0"{else}value="{$themecolorsetting.backroundtwelve}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 13 Background color </label>
							<input class="form-control color-picker" id="backroundthirteen" name="backroundthirteen" {if $themecolorsetting.backroundthirteen == null}value="#0aafc5"{else}value="{$themecolorsetting.backroundthirteen}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 14 Background color </label>
							<input class="form-control color-picker" id="backroundfourteen" name="backroundfourteen" {if $themecolorsetting.backroundfourteen == null}value="#fff"{else}value="{$themecolorsetting.backroundfourteen}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 15 Background color </label>
							<input class="form-control color-picker" id="backroundfifteen" name="backroundfifteen" {if $themecolorsetting.backroundfifteen == null}value="#834ce4"{else}value="{$themecolorsetting.backroundfifteen}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarybg" name="btnprimarybg" {if $themecolorsetting.btnprimarybg == null}value="#0cbed5"{else}value="{$themecolorsetting.btnprimarybg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryborder" name="btnprimaryborder" {if $themecolorsetting.btnprimaryborder == null}value="#0cbed5"{else}value="{$themecolorsetting.btnprimaryborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarycolor" name="btnprimarycolor" {if $themecolorsetting.btnprimarycolor == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarybghover" name="btnprimarybghover" {if $themecolorsetting.btnprimarybghover == null}value="#09aabf"{else}value="{$themecolorsetting.btnprimarybghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryborderhover" name="btnprimaryborderhover" {if $themecolorsetting.btnprimaryborderhover == null}value="#09aabf"{else}value="{$themecolorsetting.btnprimaryborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarycolorhover" name="btnprimarycolorhover" {if $themecolorsetting.btnprimarycolorhover == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary Light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn background</label>
							<input class="form-control color-picker" id="btnprimarylightbg" name="btnprimarylightbg" {if $themecolorsetting.btnprimarylightbg == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn border</label>
							<input class="form-control color-picker" id="btnprimarylightborder" name="btnprimarylightborder" {if $themecolorsetting.btnprimarylightborder == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn color</label>
							<input class="form-control color-picker" id="btnprimarylightcolor" name="btnprimarylightcolor" {if $themecolorsetting.btnprimarylightcolor == null}value="#5792a2"{else}value="{$themecolorsetting.btnprimarylightcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn background hover</label>
							<input class="form-control color-picker" id="btnprimarylightbghover" name="btnprimarylightbghover" {if $themecolorsetting.btnprimarylightbghover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightbghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn border hover</label>
							<input class="form-control color-picker" id="btnprimarylightborderhover" name="btnprimarylightborderhover" {if $themecolorsetting.btnprimarylightborderhover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary Light btn color hover</label>
							<input class="form-control color-picker" id="btnprimarylightcolorhover" name="btnprimarylightcolorhover" {if $themecolorsetting.btnprimarylightcolorhover == null}value="#7e8299"{else}value="{$themecolorsetting.btnprimarylightcolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Default button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn background</label>
							<input class="form-control color-picker" id="btndefaultbg" name="btndefaultbg" {if $themecolorsetting.btndefaultbg == null}value="#f9f9f9"{else}value="{$themecolorsetting.btndefaultbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn border</label>
							<input class="form-control color-picker" id="btndefaultborder" name="btndefaultborder" {if $themecolorsetting.btndefaultborder == null}value="#f9f9f9"{else}value="{$themecolorsetting.btndefaultborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn color</label>
							<input class="form-control color-picker" id="btndefaultcolor" name="btndefaultcolor" {if $themecolorsetting.btndefaultcolor == null}value="#7e8299"{else}value="{$themecolorsetting.btndefaultcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn background hover</label>
							<input class="form-control color-picker" id="btndefaultbghover" name="btndefaultbghover" {if $themecolorsetting.btndefaultbghover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btndefaultbghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn border hover</label>
							<input class="form-control color-picker" id="btndefaultborderhover" name="btndefaultborderhover" {if $themecolorsetting.btndefaultborderhover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btndefaultborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Default btn color hover</label>
							<input class="form-control color-picker" id="btndefaultcolorhover" name="btndefaultcolorhover" {if $themecolorsetting.btndefaultcolorhover == null}value="#7e8299"{else}value="{$themecolorsetting.btndefaultcolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebg" name="btnprimaryoutlinebg" {if $themecolorsetting.btnprimaryoutlinebg == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborder" name="btnprimaryoutlineborder" {if $themecolorsetting.btnprimaryoutlineborder == null}value="#09aabf"{else}value="{$themecolorsetting.btnprimaryoutlineborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolor" name="btnprimaryoutlinecolor" {if $themecolorsetting.btnprimaryoutlinecolor == null}value="#09aabf"{else}value="{$themecolorsetting.btnprimaryoutlinecolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebghover" name="btnprimaryoutlinebghover" {if $themecolorsetting.btnprimaryoutlinebghover == null}value="#0cbed5"{else}value="{$themecolorsetting.btnprimaryoutlinebghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderhover" name="btnprimaryoutlineborderhover" {if $themecolorsetting.btnprimaryoutlineborderhover == null}value="#0cbed5"{else}value="{$themecolorsetting.btnprimaryoutlineborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorhover" name="btnprimaryoutlinecolorhover" {if $themecolorsetting.btnprimaryoutlinecolorhover == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinecolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">primary outline white button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebg" name="btnprimaryoutlinewhitebg" {if $themecolorsetting.btnprimaryoutlinewhitebg == null}value="transparent"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborder" name="btnprimaryoutlinewhiteborder" {if $themecolorsetting.btnprimaryoutlinewhiteborder == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolor" name="btnprimaryoutlinewhitecolor" {if $themecolorsetting.btnprimaryoutlinewhitecolor == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebghover" name="btnprimaryoutlinewhitebghover" {if $themecolorsetting.btnprimaryoutlinewhitebghover == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderhover" name="btnprimaryoutlinewhiteborderhover" {if $themecolorsetting.btnprimaryoutlinewhiteborderhover == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline white btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorhover" name="btnprimaryoutlinewhitecolorhover" {if $themecolorsetting.btnprimaryoutlinewhitecolorhover == null}value="#0e1019"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbg" name="btnprimaryoutlinelightbg" {if $themecolorsetting.btnprimaryoutlinelightbg == null}value="transparent"{else}value="{$themecolorsetting.btnprimaryoutlinelightbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborder" name="btnprimaryoutlinelightborder" {if $themecolorsetting.btnprimaryoutlinelightborder == null}value="#16c2d8"{else}value="{$themecolorsetting.btnprimaryoutlinelightborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolor" name="btnprimaryoutlinelightcolor" {if $themecolorsetting.btnprimaryoutlinelightcolor == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbghover" name="btnprimaryoutlinelightbghover" {if $themecolorsetting.btnprimaryoutlinelightbghover == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightbghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderhover" name="btnprimaryoutlinelightborderhover" {if $themecolorsetting.btnprimaryoutlinelightborderhover == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary outline light btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorhover" name="btnprimaryoutlinelightcolorhover" {if $themecolorsetting.btnprimaryoutlinelightcolorhover == null}value="#0e1019"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background</label>
							<input class="form-control color-picker" id="btnlightbg" name="btnlightbg" {if $themecolorsetting.btnlightbg == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnlightbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border</label>
							<input class="form-control color-picker" id="btnlightborder" name="btnlightborder" {if $themecolorsetting.btnlightborder == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnlightborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color</label>
							<input class="form-control color-picker" id="btnlightcolor" name="btnlightcolor" {if $themecolorsetting.btnlightcolor == null}value="#7e8299"{else}value="{$themecolorsetting.btnlightcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background hover</label>
							<input class="form-control color-picker" id="btnlightbghover" name="btnlightbghover" {if $themecolorsetting.btnlightbghover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnlightbghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border hover</label>
							<input class="form-control color-picker" id="btnlightborderhover" name="btnlightborderhover" {if $themecolorsetting.btnlightborderhover == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnlightborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color hover</label>
							<input class="form-control color-picker" id="btnlightcolorhover" name="btnlightcolorhover" {if $themecolorsetting.btnlightcolorhover == null}value="#7e8299"{else}value="{$themecolorsetting.btnlightcolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">lighter button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background</label>
							<input class="form-control color-picker" id="btnlighterbg" name="btnlighterbg" {if $themecolorsetting.btnlighterbg == null}value="#fcfcfc"{else}value="{$themecolorsetting.btnlighterbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border</label>
							<input class="form-control color-picker" id="btnlighterborder" name="btnlighterborder" {if $themecolorsetting.btnlighterborder == null}value="#fcfcfc"{else}value="{$themecolorsetting.btnlighterborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color</label>
							<input class="form-control color-picker" id="btnlightercolor" name="btnlightercolor" {if $themecolorsetting.btnlightercolor == null}value="#7e8299"{else}value="{$themecolorsetting.btnlightercolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background hover</label>
							<input class="form-control color-picker" id="btnlighterbghover" name="btnlighterbghover" {if $themecolorsetting.btnlighterbghover == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnlighterbghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border hover</label>
							<input class="form-control color-picker" id="btnlighterborderhover" name="btnlighterborderhover" {if $themecolorsetting.btnlighterborderhover == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnlighterborderhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color hover</label>
							<input class="form-control color-picker" id="btnlightercolorhover" name="btnlightercolorhover" {if $themecolorsetting.btnlightercolorhover == null}value="#7e8299"{else}value="{$themecolorsetting.btnlightercolorhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Texts Colors <small>Headings, Texts, Borders, Tags Colors & More ...</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color </label>
							<input class="form-control color-picker" id="textstagscoloroneheading" name="textstagscoloroneheading" {if $themecolorsetting.textstagscoloroneheading == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscoloroneheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Hover Text Color </label>
							<input class="form-control color-picker" id="textstagscoloroneheadinghover" name="textstagscoloroneheadinghover" {if $themecolorsetting.textstagscoloroneheadinghover == null}value="#5b6278"{else}value="{$themecolorsetting.textstagscoloroneheadinghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color <strong>gray</strong> </label>
							<input class="form-control color-picker" id="textstagscoloroneheadinggray" name="textstagscoloroneheadinggray" {if $themecolorsetting.textstagscoloroneheadinggray == null}value="#b5b5c3"{else}value="{$themecolorsetting.textstagscoloroneheadinggray}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sub Headings Text Color</label>
							<input class="form-control color-picker" id="textstagscoloronesubheading" name="textstagscoloronesubheading" {if $themecolorsetting.textstagscoloronesubheading == null}value="#a6adc2"{else}value="{$themecolorsetting.textstagscoloronesubheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts</label>
							<input class="form-control color-picker" id="textstagscoloronetextcolor" name="textstagscoloronetextcolor" {if $themecolorsetting.textstagscoloronetextcolor == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscoloronetextcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts Opacity</label>
							<input class="form-control color-picker" id="textstagscoloronetextcoloropacity" name="textstagscoloronetextcoloropacity" {if $themecolorsetting.textstagscoloronetextcoloropacity == null}value="#8b93a9"{else}value="{$themecolorsetting.textstagscoloronetextcoloropacity}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color</label>
							<input class="form-control color-picker" id="textstagscoloroneborder" name="textstagscoloroneborder" {if $themecolorsetting.textstagscoloroneborder == null}value="#e7e9ed"{else}value="{$themecolorsetting.textstagscoloroneborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color Light</label>
							<input class="form-control color-picker" id="textstagscoloroneborderlight" name="textstagscoloroneborderlight" {if $themecolorsetting.textstagscoloroneborderlight == null}value="#eceff9"{else}value="{$themecolorsetting.textstagscoloroneborderlight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Color</label>
							<input class="form-control color-picker" id="textstagscoloronelink" name="textstagscoloronelink" {if $themecolorsetting.textstagscoloronelink == null}value="#0cbed5"{else}value="{$themecolorsetting.textstagscoloronelink}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Hover Color</label>
							<input class="form-control color-picker" id="textstagscoloronelinkhover" name="textstagscoloronelinkhover" {if $themecolorsetting.textstagscoloronelinkhover == null}value="#088d9f"{else}value="{$themecolorsetting.textstagscoloronelinkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Default</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonebg" name="sidebarcolorsdefaultonebg" {if $themecolorsetting.sidebarcolorsdefaultonebg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultonebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneextendbtnbg" name="sidebarcolorsdefaultoneextendbtnbg" {if $themecolorsetting.sidebarcolorsdefaultoneextendbtnbg == null}value="#f6f5fb"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitembg" name="sidebarcolorsdefaultoneitembg" {if $themecolorsetting.sidebarcolorsdefaultoneitembg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemhoverbg" name="sidebarcolorsdefaultoneitemhoverbg" {if $themecolorsetting.sidebarcolorsdefaultoneitemhoverbg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemtext" name="sidebarcolorsdefaultoneitemtext" {if $themecolorsetting.sidebarcolorsdefaultoneitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemtext" name="sidebarcolorsdefaultoneitemtext" {if $themecolorsetting.sidebarcolorsdefaultoneitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemtexthover" name="sidebarcolorsdefaultoneitemtexthover" {if $themecolorsetting.sidebarcolorsdefaultoneitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemiconhover" name="sidebarcolorsdefaultoneitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultoneitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultoneitemiconhover" name="sidebarcolorsdefaultoneitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultoneitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultoneitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdowntitle" name="sidebarcolorsdefaultonedropdowntitle" {if $themecolorsetting.sidebarcolorsdefaultonedropdowntitle == null}value="#18191a"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdownitemtext" name="sidebarcolorsdefaultonedropdownitemtext" {if $themecolorsetting.sidebarcolorsdefaultonedropdownitemtext == null}value="#f9f8fa"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdownitemicon" name="sidebarcolorsdefaultonedropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultonedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdownitemicon" name="sidebarcolorsdefaultonedropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultonedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdownitemtexthover" name="sidebarcolorsdefaultonedropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdefaultonedropdownitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdownitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultonedropdownitemiconhover" name="sidebarcolorsdefaultonedropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultonedropdownitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultonedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Dark</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonebg" name="sidebarcolorsdarkonebg" {if $themecolorsetting.sidebarcolorsdarkonebg == null}value="#151718"{else}value="{$themecolorsetting.sidebarcolorsdarkonebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneextendbtnbg" name="sidebarcolorsdarkoneextendbtnbg" {if $themecolorsetting.sidebarcolorsdarkoneextendbtnbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkoneextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitembg" name="sidebarcolorsdarkoneitembg" {if $themecolorsetting.sidebarcolorsdarkoneitembg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitemhoverbg" name="sidebarcolorsdarkoneitemhoverbg" {if $themecolorsetting.sidebarcolorsdarkoneitemhoverbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitemtext" name="sidebarcolorsdarkoneitemtext" {if $themecolorsetting.sidebarcolorsdarkoneitemtext == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitemicon" name="sidebarcolorsdarkoneitemicon" {if $themecolorsetting.sidebarcolorsdarkoneitemicon == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitemtexthover" name="sidebarcolorsdarkoneitemtexthover" {if $themecolorsetting.sidebarcolorsdarkoneitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkoneitemtexthover" name="sidebarcolorsdarkoneitemtexthover" {if $themecolorsetting.sidebarcolorsdarkoneitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkoneitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdownbg" name="sidebarcolorsdarkonedropdownbg" {if $themecolorsetting.sidebarcolorsdarkonedropdownbg == null}value="#0e0e0f"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdowntitle" name="sidebarcolorsdarkonedropdowntitle" {if $themecolorsetting.sidebarcolorsdarkonedropdowntitle == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdownitembg" name="sidebarcolorsdarkonedropdownitembg" {if $themecolorsetting.sidebarcolorsdarkonedropdownitembg == null}value="#1a1a1c"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdownitemtext" name="sidebarcolorsdarkonedropdownitemtext" {if $themecolorsetting.sidebarcolorsdarkonedropdownitemtext == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdownitemicon" name="sidebarcolorsdarkonedropdownitemicon" {if $themecolorsetting.sidebarcolorsdarkonedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-sidebarcolorsdarkonedropdownitemtexthover" id="sidebarcolorsdarkonedropdownitemtexthover" name="sidebarcolorsdarkonedropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdarkonedropdownitemtexthover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkonedropdownitemiconhover" name="sidebarcolorsdarkonedropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdarkonedropdownitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkonedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>Primary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary background </label>
							<input class="form-control color-picker" id="alertbgprimary" name="alertbgprimary" {if $themecolorsetting.alertbgprimary == null}value="#e2e1f7"{else}value="{$themecolorsetting.alertbgprimary}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary color </label>
							<input class="form-control color-picker" id="alertcolorprimary" name="alertcolorprimary" {if $themecolorsetting.alertcolorprimary == null}value="#473bf0"{else}value="{$themecolorsetting.alertcolorprimary}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>secondary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary background </label>
							<input class="form-control color-picker" id="alertbgsecondary" name="alertbgsecondary" {if $themecolorsetting.alertbgsecondary == null}value="#f9f9f9"{else}value="{$themecolorsetting.alertbgsecondary}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary color </label>
							<input class="form-control color-picker" id="alertcolorsecondary" name="alertcolorsecondary" {if $themecolorsetting.alertcolorsecondary == null}value="#7e8299"{else}value="{$themecolorsetting.alertcolorsecondary}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>success</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success background </label>
							<input class="form-control color-picker" id="alertbgsuccess" name="alertbgsuccess" {if $themecolorsetting.alertbgsuccess == null}value="#e8fff3"{else}value="{$themecolorsetting.alertbgsuccess}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success color </label>
							<input class="form-control color-picker" id="alertcolorsuccess" name="alertcolorsuccess" {if $themecolorsetting.alertcolorsuccess == null}value="#50cd89"{else}value="{$themecolorsetting.alertcolorsuccess}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>danger</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger background </label>
							<input class="form-control color-picker" id="alertbgdanger" name="alertbgdanger" {if $themecolorsetting.alertbgdanger == null}value="#f7d4d6"{else}value="{$themecolorsetting.alertbgdanger}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger color </label>
							<input class="form-control color-picker" id="alertcolordanger" name="alertcolordanger" {if $themecolorsetting.alertcolordanger == null}value="#d92632"{else}value="{$themecolorsetting.alertcolordanger}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>warning</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning background </label>
							<input class="form-control color-picker" id="alertbgwarning" name="alertbgwarning" {if $themecolorsetting.alertbgwarning == null}value="#fdf2e2"{else}value="{$themecolorsetting.alertbgwarning}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning color </label>
							<input class="form-control color-picker" id="alertcolorwarning" name="alertcolorwarning" {if $themecolorsetting.alertcolorwarning == null}value="#f0ad4e"{else}value="{$themecolorsetting.alertcolorwarning}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>info</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info background </label>
							<input class="form-control color-picker" id="alertbginfo" name="alertbginfo" {if $themecolorsetting.alertbginfo == null}value="#c4e7f2"{else}value="{$themecolorsetting.alertbginfo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info color </label>
							<input class="form-control color-picker" id="alertcolorinfo" name="alertcolorinfo" {if $themecolorsetting.alertcolorinfo == null}value="#4aadcb"{else}value="{$themecolorsetting.alertcolorinfo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>light</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light background </label>
							<input class="form-control color-picker" id="alertbglight" name="alertbglight" {if $themecolorsetting.alertbglight == null}value="#f8f9fa"{else}value="{$themecolorsetting.alertbglight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light color </label>
							<input class="form-control color-picker" id="alertcolorlight" name="alertcolorlight" {if $themecolorsetting.alertcolorlight == null}value="#212529"{else}value="{$themecolorsetting.alertcolorlight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>dark</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark background </label>
							<input class="form-control color-picker" id="alertbgdark" name="alertbgdark" {if $themecolorsetting.alertbgdark == null}value="#343a40"{else}value="{$themecolorsetting.alertbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark color </label>
							<input class="form-control color-picker" id="alertcolordark" name="alertcolordark" {if $themecolorsetting.alertcolordark == null}value="#fff"{else}value="{$themecolorsetting.alertcolordark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			
			
			
		</div>
		
		
		<div class="section {if $themecolorsetting.dafaultthemecolor=='theme-style-two'}d-block{else}d-none{/if}" id="custom-colors-schemes-two">
			<h5 class="title">Custom Green Theme Color Schemes</h5>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Backgrounds Colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Main Background color </label>
							<input class="form-control color-picker" id="backroundonetwo" name="backroundonetwo" {if $themecolorsetting.backroundonetwo == null}value="#fcfdfe"{else}value="{$themecolorsetting.backroundonetwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 2 Background color </label>
							<input class="form-control color-picker" id="backroundtwotwo" name="backroundtwotwo" {if $themecolorsetting.backroundtwotwo == null}value="#f5fffb"{else}value="{$themecolorsetting.backroundtwotwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 3 Background color </label>
							<input class="form-control color-picker" id="backroundtreetwo" name="backroundtreetwo" {if $themecolorsetting.backroundtreetwo == null}value="#d7f8f2"{else}value="{$themecolorsetting.backroundtreetwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 4 Background color </label>
							<input class="form-control color-picker" id="backroundfourtwo" name="backroundfourtwo" {if $themecolorsetting.backroundfourtwo == null}value="#84c0b5"{else}value="{$themecolorsetting.backroundfourtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 5 Background color </label>
							<input class="form-control color-picker" id="backroundfivetwo" name="backroundfivetwo" {if $themecolorsetting.backroundfivetwo == null}value="#6aa298"{else}value="{$themecolorsetting.backroundfivetwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 6 Background color </label>
							<input class="form-control color-picker" id="backroundsixtwo" name="backroundsixtwo" {if $themecolorsetting.backroundsixtwo == null}value="#cae6e1"{else}value="{$themecolorsetting.backroundsixtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 7 Background color </label>
							<input class="form-control color-picker" id="backroundsaventwo" name="backroundsaventwo" {if $themecolorsetting.backroundsaventwo == null}value="#fff"{else}value="{$themecolorsetting.backroundsaventwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 8 Background color </label>
							<input class="form-control color-picker" id="backroundeighttwo" name="backroundeighttwo" {if $themecolorsetting.backroundeighttwo == null}value="#f2fdfb"{else}value="{$themecolorsetting.backroundeighttwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 9 Background color </label>
							<input class="form-control color-picker" id="backroundninetwo" name="backroundninetwo" {if $themecolorsetting.backroundninetwo == null}value="#06352d"{else}value="{$themecolorsetting.backroundninetwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 10 Background color </label>
							<input class="form-control color-picker" id="backroundtentwo" name="backroundtentwo" {if $themecolorsetting.backroundtentwo == null}value="#cae8e2"{else}value="{$themecolorsetting.backroundtentwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 11 Background color </label>
							<input class="form-control color-picker" id="backroundeleventwo" name="backroundeleventwo" {if $themecolorsetting.backroundeleventwo == null}value="#30a18d"{else}value="{$themecolorsetting.backroundeleventwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 12 Background color </label>
							<input class="form-control color-picker" id="backroundtwelvetwo" name="backroundtwelvetwo" {if $themecolorsetting.backroundtwelvetwo == null}value="#3dac99"{else}value="{$themecolorsetting.backroundtwelvetwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 13 Background color </label>
							<input class="form-control color-picker" id="backroundthirteentwo" name="backroundthirteentwo" {if $themecolorsetting.backroundthirteentwo == null}value="#44b6a2"{else}value="{$themecolorsetting.backroundthirteentwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 14 Background color </label>
							<input class="form-control color-picker" id="backroundfourteentwo" name="backroundfourteentwo" {if $themecolorsetting.backroundfourteentwo == null}value="#fff"{else}value="{$themecolorsetting.backroundfourteentwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 15 Background color </label>
							<input class="form-control color-picker" id="backroundfifteentwo" name="backroundfifteentwo" {if $themecolorsetting.backroundfifteentwo == null}value="#834ce4"{else}value="{$themecolorsetting.backroundfifteentwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarybgtwo" name="btnprimarybgtwo" {if $themecolorsetting.btnprimarybgtwo == null}value="#44b6a2"{else}value="{$themecolorsetting.btnprimarybgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimarybordertwo" name="btnprimarybordertwo" {if $themecolorsetting.btnprimarybordertwo == null}value="#44b6a2"{else}value="{$themecolorsetting.btnprimarybordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarycolortwo" name="btnprimarycolortwo" {if $themecolorsetting.btnprimarycolortwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarybghovertwo" name="btnprimarybghovertwo" {if $themecolorsetting.btnprimarybghovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimarybghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryborderhovertwo" name="btnprimaryborderhovertwo" {if $themecolorsetting.btnprimaryborderhovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarycolorhovertwo" name="btnprimarycolorhovertwo" {if $themecolorsetting.btnprimarycolorhovertwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary Light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarylightbgtwo" name="btnprimarylightbgtwo" {if $themecolorsetting.btnprimarylightbgtwo == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightbgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimarylightbordertwo" name="btnprimarylightbordertwo" {if $themecolorsetting.btnprimarylightbordertwo == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightbordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarylightcolortwo" name="btnprimarylightcolortwo" {if $themecolorsetting.btnprimarylightcolortwo == null}value="#71baad"{else}value="{$themecolorsetting.btnprimarylightcolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarylightbghovertwo" name="btnprimarylightbghovertwo" {if $themecolorsetting.btnprimarylightbghovertwo == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightbghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimarylightborderhovertwo" name="btnprimarylightborderhovertwo" {if $themecolorsetting.btnprimarylightborderhovertwo == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarylightcolorhovertwo" name="btnprimarylightcolorhovertwo" {if $themecolorsetting.btnprimarylightcolorhovertwo == null}value="#7e8299"{else}value="{$themecolorsetting.btnprimarylightcolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Default button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btndefaultbgtwo" name="btndefaultbgtwo" {if $themecolorsetting.btndefaultbgtwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultbgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btndefaultbordertwo" name="btndefaultbordertwo" {if $themecolorsetting.btndefaultbordertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultbordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btndefaultcolortwo" name="btndefaultcolortwo" {if $themecolorsetting.btndefaultcolortwo == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btndefaultbghovertwo" name="btndefaultbghovertwo" {if $themecolorsetting.btndefaultbghovertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultbghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btndefaultborderhovertwo" name="btndefaultborderhovertwo" {if $themecolorsetting.btndefaultborderhovertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btndefaultcolorhovertwo" name="btndefaultcolorhovertwo" {if $themecolorsetting.btndefaultcolorhovertwo == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebgtwo" name="btnprimaryoutlinebgtwo" {if $themecolorsetting.btnprimaryoutlinebgtwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinebgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebordertwo" name="btnprimaryoutlinebordertwo" {if $themecolorsetting.btnprimaryoutlinebordertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinebordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolortwo" name="btnprimaryoutlinecolortwo" {if $themecolorsetting.btnprimaryoutlinecolortwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinecolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebghovertwo" name="btnprimaryoutlinebghovertwo" {if $themecolorsetting.btnprimaryoutlinebghovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinebghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderhovertwo" name="btnprimaryoutlineborderhovertwo" {if $themecolorsetting.btnprimaryoutlineborderhovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlineborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorhovertwo" name="btnprimaryoutlinecolorhovertwo" {if $themecolorsetting.btnprimaryoutlinecolorhovertwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinecolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">primary outline white button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebgtwo" name="btnprimaryoutlinewhitebgtwo" {if $themecolorsetting.btnprimaryoutlinewhitebgtwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebordertwo" name="btnprimaryoutlinewhitebordertwo" {if $themecolorsetting.btnprimaryoutlinewhitebordertwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolortwo" name="btnprimaryoutlinewhitecolortwo" {if $themecolorsetting.btnprimaryoutlinewhitecolortwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebghovertwo" name="btnprimaryoutlinewhitebghovertwo" {if $themecolorsetting.btnprimaryoutlinewhitebghovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderhovertwo" name="btnprimaryoutlinewhiteborderhovertwo" {if $themecolorsetting.btnprimaryoutlinewhiteborderhovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorhovertwo" name="btnprimaryoutlinewhitecolorhovertwo" {if $themecolorsetting.btnprimaryoutlinewhitecolorhovertwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbgtwo" name="btnprimaryoutlinelightbgtwo" {if $themecolorsetting.btnprimaryoutlinelightbgtwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightbgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbordertwo" name="btnprimaryoutlinelightbordertwo" {if $themecolorsetting.btnprimaryoutlinelightbordertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinelightbordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolortwo" name="btnprimaryoutlinelightcolortwo" {if $themecolorsetting.btnprimaryoutlinelightcolortwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbghovertwo" name="btnprimaryoutlinelightbghovertwo" {if $themecolorsetting.btnprimaryoutlinelightbghovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinelightbghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderhovertwo" name="btnprimaryoutlinelightborderhovertwo" {if $themecolorsetting.btnprimaryoutlinelightborderhovertwo == null}value="#39a18f"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorhovertwo" name="btnprimaryoutlinelightcolorhovertwo" {if $themecolorsetting.btnprimaryoutlinelightcolorhovertwo == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background</label>
							<input class="form-control color-picker" id="btnlightbgtwo" name="btnlightbgtwo" {if $themecolorsetting.btnlightbgtwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightbgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border</label>
							<input class="form-control color-picker" id="btnlightbordertwo" name="btnlightbordertwo" {if $themecolorsetting.btnlightbordertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightbordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color</label>
							<input class="form-control color-picker" id="btnlightcolortwo" name="btnlightcolortwo" {if $themecolorsetting.btnlightcolortwo == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background hover</label>
							<input class="form-control color-picker" id="btnlightbghovertwo" name="btnlightbghovertwo" {if $themecolorsetting.btnlightbghovertwo == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightbghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border hover</label>
							<input class="form-control color-picker" id="btnlightborderhovertwo" name="btnlightborderhovertwo" {if $themecolorsetting.btnlightborderhovertwo == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color hover</label>
							<input class="form-control color-picker" id="btnlightcolorhovertwo" name="btnlightcolorhovertwo" {if $themecolorsetting.btnlightcolorhovertwo == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">lighter button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background</label>
							<input class="form-control color-picker" id="btnlighterbgtwo" name="btnlighterbgtwo" {if $themecolorsetting.btnlighterbgtwo == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterbgtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border</label>
							<input class="form-control color-picker" id="btnlighterbordertwo" name="btnlighterbordertwo" {if $themecolorsetting.btnlighterbordertwo == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterbordertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color</label>
							<input class="form-control color-picker" id="btnlightercolortwo" name="btnlightercolortwo" {if $themecolorsetting.btnlightercolortwo == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolortwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background hover</label>
							<input class="form-control color-picker" id="btnlighterbghovertwo" name="btnlighterbghovertwo" {if $themecolorsetting.btnlighterbghovertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterbghovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border hover</label>
							<input class="form-control color-picker" id="btnlighterborderhovertwo" name="btnlighterborderhovertwo" {if $themecolorsetting.btnlighterborderhovertwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterborderhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color hover</label>
							<input class="form-control color-picker" id="btnlightercolorhovertwo" name="btnlightercolorhovertwo" {if $themecolorsetting.btnlightercolorhovertwo == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolorhovertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Texts Colors <small>Headings, Texts, Borders, Tags Colors & More ...</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color </label>
							<input class="form-control color-picker" id="textstagscolortwoheading" name="textstagscolortwoheading" {if $themecolorsetting.textstagscolortwoheading == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolortwoheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Hover Text Color </label>
							<input class="form-control color-picker" id="textstagscolortwoheadinghover" name="textstagscolortwoheadinghover" {if $themecolorsetting.textstagscolortwoheadinghover == null}value="#5b6278"{else}value="{$themecolorsetting.textstagscolortwoheadinghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color <strong>gray</strong> </label>
							<input class="form-control color-picker" id="textstagscolortwoheadinggray" name="textstagscolortwoheadinggray" {if $themecolorsetting.textstagscolortwoheadinggray == null}value="#b5b5c3"{else}value="{$themecolorsetting.textstagscolortwoheadinggray}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sub Headings Text Color</label>
							<input class="form-control color-picker" id="textstagscolortwosubheading" name="textstagscolortwosubheading" {if $themecolorsetting.textstagscolortwosubheading == null}value="#a6adc2"{else}value="{$themecolorsetting.textstagscolortwosubheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts</label>
							<input class="form-control color-picker" id="textstagscolortwotextcolor" name="textstagscolortwotextcolor" {if $themecolorsetting.textstagscolortwotextcolor == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolortwotextcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts Opacity</label>
							<input class="form-control color-picker" id="textstagscolortwotextcoloropacity" name="textstagscolortwotextcoloropacity" {if $themecolorsetting.textstagscolortwotextcoloropacity == null}value="#8b93a9"{else}value="{$themecolorsetting.textstagscolortwotextcoloropacity}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color</label>
							<input class="form-control color-picker" id="textstagscolortwoborder" name="textstagscolortwoborder" {if $themecolorsetting.textstagscolortwoborder == null}value="#e7e9ed"{else}value="{$themecolorsetting.textstagscolortwoborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color Light</label>
							<input class="form-control color-picker" id="textstagscolortwoborderlight" name="textstagscolortwoborderlight" {if $themecolorsetting.textstagscolortwoborderlight == null}value="#eceff9"{else}value="{$themecolorsetting.textstagscolortwoborderlight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Color</label>
							<input class="form-control color-picker" id="textstagscolortwolink" name="textstagscolortwolink" {if $themecolorsetting.textstagscolortwolink == null}value="#0cbed5"{else}value="{$themecolorsetting.textstagscolortwolink}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Hover Color</label>
							<input class="form-control color-picker" id="textstagscolortwolinkhover" name="textstagscolortwolinkhover" {if $themecolorsetting.textstagscolortwolinkhover == null}value="#088d9f"{else}value="{$themecolorsetting.textstagscolortwolinkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Default</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwobg" name="sidebarcolorsdefaulttwobg" {if $themecolorsetting.sidebarcolorsdefaulttwobg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwobg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoextendbtnbg" name="sidebarcolorsdefaulttwoextendbtnbg" {if $themecolorsetting.sidebarcolorsdefaulttwoextendbtnbg == null}value="#f6f5fb"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitembg" name="sidebarcolorsdefaulttwoitembg" {if $themecolorsetting.sidebarcolorsdefaulttwoitembg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemhoverbg" name="sidebarcolorsdefaulttwoitemhoverbg" {if $themecolorsetting.sidebarcolorsdefaulttwoitemhoverbg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemtext" name="sidebarcolorsdefaulttwoitemtext" {if $themecolorsetting.sidebarcolorsdefaulttwoitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemtext" name="sidebarcolorsdefaulttwoitemtext" {if $themecolorsetting.sidebarcolorsdefaulttwoitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemtexthover" name="sidebarcolorsdefaulttwoitemtexthover" {if $themecolorsetting.sidebarcolorsdefaulttwoitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemiconhover" name="sidebarcolorsdefaulttwoitemiconhover" {if $themecolorsetting.sidebarcolorsdefaulttwoitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwoitemiconhover" name="sidebarcolorsdefaulttwoitemiconhover" {if $themecolorsetting.sidebarcolorsdefaulttwoitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwoitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdowntitle" name="sidebarcolorsdefaulttwodropdowntitle" {if $themecolorsetting.sidebarcolorsdefaulttwodropdowntitle == null}value="#18191a"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdownitemtext" name="sidebarcolorsdefaulttwodropdownitemtext" {if $themecolorsetting.sidebarcolorsdefaulttwodropdownitemtext == null}value="#f9f8fa"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdownitemicon" name="sidebarcolorsdefaulttwodropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaulttwodropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdownitemicon" name="sidebarcolorsdefaulttwodropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaulttwodropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdownitemtexthover" name="sidebarcolorsdefaulttwodropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdefaulttwodropdownitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdownitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaulttwodropdownitemiconhover" name="sidebarcolorsdefaulttwodropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdefaulttwodropdownitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaulttwodropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Dark</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwobg" name="sidebarcolorsdarktwobg" {if $themecolorsetting.sidebarcolorsdarktwobg == null}value="#151718"{else}value="{$themecolorsetting.sidebarcolorsdarktwobg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoextendbtnbg" name="sidebarcolorsdarktwoextendbtnbg" {if $themecolorsetting.sidebarcolorsdarktwoextendbtnbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarktwoextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitembg" name="sidebarcolorsdarktwoitembg" {if $themecolorsetting.sidebarcolorsdarktwoitembg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitemhoverbg" name="sidebarcolorsdarktwoitemhoverbg" {if $themecolorsetting.sidebarcolorsdarktwoitemhoverbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitemtext" name="sidebarcolorsdarktwoitemtext" {if $themecolorsetting.sidebarcolorsdarktwoitemtext == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitemicon" name="sidebarcolorsdarktwoitemicon" {if $themecolorsetting.sidebarcolorsdarktwoitemicon == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitemtexthover" name="sidebarcolorsdarktwoitemtexthover" {if $themecolorsetting.sidebarcolorsdarktwoitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwoitemtexthover" name="sidebarcolorsdarktwoitemtexthover" {if $themecolorsetting.sidebarcolorsdarktwoitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarktwoitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdownbg" name="sidebarcolorsdarktwodropdownbg" {if $themecolorsetting.sidebarcolorsdarktwodropdownbg == null}value="#0e0e0f"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdowntitle" name="sidebarcolorsdarktwodropdowntitle" {if $themecolorsetting.sidebarcolorsdarktwodropdowntitle == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdownitembg" name="sidebarcolorsdarktwodropdownitembg" {if $themecolorsetting.sidebarcolorsdarktwodropdownitembg == null}value="#1a1a1c"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdownitemtext" name="sidebarcolorsdarktwodropdownitemtext" {if $themecolorsetting.sidebarcolorsdarktwodropdownitemtext == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdownitemicon" name="sidebarcolorsdarktwodropdownitemicon" {if $themecolorsetting.sidebarcolorsdarktwodropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-sidebarcolorsdarktwodropdownitemtexthover" id="sidebarcolorsdarktwodropdownitemtexthover" name="sidebarcolorsdarktwodropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdarktwodropdownitemtexthover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarktwodropdownitemiconhover" name="sidebarcolorsdarktwodropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdarktwodropdownitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarktwodropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>Primary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary background </label>
							<input class="form-control color-picker" id="alertbgprimarytwo" name="alertbgprimarytwo" {if $themecolorsetting.alertbgprimarytwo == null}value="#E2E1F7"{else}value="{$themecolorsetting.alertbgprimarytwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary color </label>
							<input class="form-control color-picker" id="alertcolorprimarytwo" name="alertcolorprimarytwo" {if $themecolorsetting.alertcolorprimarytwo == null}value="#473BF0"{else}value="{$themecolorsetting.alertcolorprimarytwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>secondary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary background </label>
							<input class="form-control color-picker" id="alertbgsecondarytwo" name="alertbgsecondarytwo" {if $themecolorsetting.alertbgsecondarytwo == null}value="#F9F9F9"{else}value="{$themecolorsetting.alertbgsecondarytwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary color </label>
							<input class="form-control color-picker" id="alertcolorsecondarytwo" name="alertcolorsecondarytwo" {if $themecolorsetting.alertcolorsecondarytwo == null}value="#7E8299"{else}value="{$themecolorsetting.alertcolorsecondarytwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>success</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success background </label>
							<input class="form-control color-picker" id="alertbgsuccesstwo" name="alertbgsuccesstwo" {if $themecolorsetting.alertbgsuccesstwo == null}value="#E8FFF3"{else}value="{$themecolorsetting.alertbgsuccesstwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success color </label>
							<input class="form-control color-picker" id="alertcolorsuccesstwo" name="alertcolorsuccesstwo" {if $themecolorsetting.alertcolorsuccesstwo == null}value="#50CD89"{else}value="{$themecolorsetting.alertcolorsuccesstwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>danger</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger background </label>
							<input class="form-control color-picker" id="alertbgdangertwo" name="alertbgdangertwo" {if $themecolorsetting.alertbgdangertwo == null}value="#F7D4D6"{else}value="{$themecolorsetting.alertbgdangertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger color </label>
							<input class="form-control color-picker" id="alertcolordangertwo" name="alertcolordangertwo" {if $themecolorsetting.alertcolordangertwo == null}value="#D92632"{else}value="{$themecolorsetting.alertcolordangertwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>warning</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning background </label>
							<input class="form-control color-picker" id="alertbgwarningtwo" name="alertbgwarningtwo" {if $themecolorsetting.alertbgwarningtwo == null}value="#FDF2E2"{else}value="{$themecolorsetting.alertbgwarningtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning color </label>
							<input class="form-control color-picker" id="alertcolorwarningtwo" name="alertcolorwarningtwo" {if $themecolorsetting.alertcolorwarningtwo == null}value="#F0AD4E"{else}value="{$themecolorsetting.alertcolorwarningtwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>info</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info background </label>
							<input class="form-control color-picker" id="alertbginfotwo" name="alertbginfotwo" {if $themecolorsetting.alertbginfotwo == null}value="#C4E7F2"{else}value="{$themecolorsetting.alertbginfotwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info color </label>
							<input class="form-control color-picker" id="alertcolorinfotwo" name="alertcolorinfotwo" {if $themecolorsetting.alertcolorinfotwo == null}value="#4AADCB"{else}value="{$themecolorsetting.alertcolorinfotwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>light</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light background </label>
							<input class="form-control color-picker" id="alertbglighttwo" name="alertbglighttwo" {if $themecolorsetting.alertbglighttwo == null}value="#F8F9FA"{else}value="{$themecolorsetting.alertbglighttwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light color </label>
							<input class="form-control color-picker" id="alertcolorlighttwo" name="alertcolorlighttwo" {if $themecolorsetting.alertcolorlighttwo == null}value="#212529"{else}value="{$themecolorsetting.alertcolorlighttwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>dark</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark background </label>
							<input class="form-control color-picker" id="alertbgdarktwo" name="alertbgdarktwo" {if $themecolorsetting.alertbgdarktwo == null}value="#343A40"{else}value="{$themecolorsetting.alertbgdarktwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark color </label>
							<input class="form-control color-picker" id="alertcolordarktwo" name="alertcolordarktwo" {if $themecolorsetting.alertcolordarktwo == null}value="#FFFFFF"{else}value="{$themecolorsetting.alertcolordarktwo}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
		
		<div class="section {if $themecolorsetting.dafaultthemecolor=='theme-style-three'}d-block{else}d-none{/if}" id="custom-colors-schemes-three">
			<h5 class="title">Custom Purple Theme Color Schemes</h5>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Backgrounds Colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Main Background color </label>
							<input class="form-control color-picker" id="backroundonethree" name="backroundonethree" {if $themecolorsetting.backroundonethree == null}value="#ffffff"{else}value="{$themecolorsetting.backroundonethree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 2 Background color </label>
							<input class="form-control color-picker" id="backroundtwothree" name="backroundtwothree" {if $themecolorsetting.backroundtwothree == null}value="#f9f2fd"{else}value="{$themecolorsetting.backroundtwothree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 3 Background color </label>
							<input class="form-control color-picker" id="backroundtreethree" name="backroundtreethree" {if $themecolorsetting.backroundtreethree == null}value="#ebd4f6"{else}value="{$themecolorsetting.backroundtreethree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 4 Background color </label>
							<input class="form-control color-picker" id="backroundfourthree" name="backroundfourthree" {if $themecolorsetting.backroundfourthree == null}value="#cbb2d8"{else}value="{$themecolorsetting.backroundfourthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 5 Background color </label>
							<input class="form-control color-picker" id="backroundfivethree" name="backroundfivethree" {if $themecolorsetting.backroundfivethree == null}value="#f69fbd"{else}value="{$themecolorsetting.backroundfivethree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 6 Background color </label>
							<input class="form-control color-picker" id="backroundsixthree" name="backroundsixthree" {if $themecolorsetting.backroundsixthree == null}value="#e0cde9"{else}value="{$themecolorsetting.backroundsixthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 7 Background color </label>
							<input class="form-control color-picker" id="backroundsaventhree" name="backroundsaventhree" {if $themecolorsetting.backroundsaventhree == null}value="#fff"{else}value="{$themecolorsetting.backroundsaventhree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 8 Background color </label>
							<input class="form-control color-picker" id="backroundeightthree" name="backroundeightthree" {if $themecolorsetting.backroundeightthree == null}value="#f6eff9"{else}value="{$themecolorsetting.backroundeightthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 9 Background color </label>
							<input class="form-control color-picker" id="backroundninethree" name="backroundninethree" {if $themecolorsetting.backroundninethree == null}value="#3d214c"{else}value="{$themecolorsetting.backroundninethree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 10 Background color </label>
							<input class="form-control color-picker" id="backroundtenthree" name="backroundtenthree" {if $themecolorsetting.backroundtenthree == null}value="#dbcbe3"{else}value="{$themecolorsetting.backroundtenthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 11 Background color </label>
							<input class="form-control color-picker" id="backroundeleventhree" name="backroundeleventhree" {if $themecolorsetting.backroundeleventhree == null}value="#9d58c0"{else}value="{$themecolorsetting.backroundeleventhree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 12 Background color </label>
							<input class="form-control color-picker" id="backroundtwelvethree" name="backroundtwelvethree" {if $themecolorsetting.backroundtwelvethree == null}value="#522e64"{else}value="{$themecolorsetting.backroundtwelvethree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 13 Background color </label>
							<input class="form-control color-picker" id="backroundthirteenthree" name="backroundthirteenthree" {if $themecolorsetting.backroundthirteenthree == null}value="#763895"{else}value="{$themecolorsetting.backroundthirteenthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 14 Background color </label>
							<input class="form-control color-picker" id="backroundfourteenthree" name="backroundfourteenthree" {if $themecolorsetting.backroundfourteenthree == null}value="#fff"{else}value="{$themecolorsetting.backroundfourteenthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 15 Background color </label>
							<input class="form-control color-picker" id="backroundfifteenthree" name="backroundfifteenthree" {if $themecolorsetting.backroundfifteenthree == null}value="#834ce4"{else}value="{$themecolorsetting.backroundfifteenthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarybgthree" name="btnprimarybgthree" {if $themecolorsetting.btnprimarybgthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimarybgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryborderthree" name="btnprimaryborderthree" {if $themecolorsetting.btnprimaryborderthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarycolorthree" name="btnprimarycolorthree" {if $themecolorsetting.btnprimarycolorthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarybghoverthree" name="btnprimarybghoverthree" {if $themecolorsetting.btnprimarybghoverthree == null}value="#5c3a6e"{else}value="{$themecolorsetting.btnprimarybghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryborderhoverthree" name="btnprimaryborderhoverthree" {if $themecolorsetting.btnprimaryborderhoverthree == null}value="#5c3a6e"{else}value="{$themecolorsetting.btnprimaryborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarycolorhoverthree" name="btnprimarycolorhoverthree" {if $themecolorsetting.btnprimarycolorhoverthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary Light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarylightbgthree" name="btnprimarylightbgthree" {if $themecolorsetting.btnprimarylightbgthree == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightbgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimarylightborderthree" name="btnprimarylightborderthree" {if $themecolorsetting.btnprimarylightborderthree == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarylightcolorthree" name="btnprimarylightcolorthree" {if $themecolorsetting.btnprimarylightcolorthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimarylightcolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarylightbghoverthree" name="btnprimarylightbghoverthree" {if $themecolorsetting.btnprimarylightbghoverthree == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightbghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimarylightborderhoverthree" name="btnprimarylightborderhoverthree" {if $themecolorsetting.btnprimarylightborderhoverthree == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarylightcolorhoverthree" name="btnprimarylightcolorhoverthree" {if $themecolorsetting.btnprimarylightcolorhoverthree == null}value="#7e8299"{else}value="{$themecolorsetting.btnprimarylightcolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Default button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btndefaultbgthree" name="btndefaultbgthree" {if $themecolorsetting.btndefaultbgthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultbgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btndefaultborderthree" name="btndefaultborderthree" {if $themecolorsetting.btndefaultborderthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btndefaultcolorthree" name="btndefaultcolorthree" {if $themecolorsetting.btndefaultcolorthree == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btndefaultbghoverthree" name="btndefaultbghoverthree" {if $themecolorsetting.btndefaultbghoverthree == null}value="#F4F4F4"{else}value="{$themecolorsetting.btndefaultbghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btndefaultborderhoverthree" name="btndefaultborderhoverthree" {if $themecolorsetting.btndefaultborderhoverthree == null}value="#F4F4F4"{else}value="{$themecolorsetting.btndefaultborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btndefaultcolorhoverthree" name="btndefaultcolorhoverthree" {if $themecolorsetting.btndefaultcolorhoverthree == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebgthree" name="btnprimaryoutlinebgthree" {if $themecolorsetting.btnprimaryoutlinebgthree == null}value="#FFFFFF"{else}value="{$themecolorsetting.btnprimaryoutlinebgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderthree" name="btnprimaryoutlineborderthree" {if $themecolorsetting.btnprimaryoutlineborderthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlineborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorthree" name="btnprimaryoutlinecolorthree" {if $themecolorsetting.btnprimaryoutlinecolorthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinecolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebghoverthree" name="btnprimaryoutlinebghoverthree" {if $themecolorsetting.btnprimaryoutlinebghoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinebghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderhoverthree" name="btnprimaryoutlineborderhoverthree" {if $themecolorsetting.btnprimaryoutlineborderhoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlineborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorhoverthree" name="btnprimaryoutlinecolorhoverthree" {if $themecolorsetting.btnprimaryoutlinecolorhoverthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinecolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">primary outline white button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebgthree" name="btnprimaryoutlinewhitebgthree" {if $themecolorsetting.btnprimaryoutlinewhitebgthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderthree" name="btnprimaryoutlinewhiteborderthree" {if $themecolorsetting.btnprimaryoutlinewhiteborderthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorthree" name="btnprimaryoutlinewhitecolorthree" {if $themecolorsetting.btnprimaryoutlinewhitecolorthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebghoverthree" name="btnprimaryoutlinewhitebghoverthree" {if $themecolorsetting.btnprimaryoutlinewhitebghoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderhoverthree" name="btnprimaryoutlinewhiteborderhoverthree" {if $themecolorsetting.btnprimaryoutlinewhiteborderhoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorhoverthree" name="btnprimaryoutlinewhitecolorhoverthree" {if $themecolorsetting.btnprimaryoutlinewhitecolorhoverthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbgthree" name="btnprimaryoutlinelightbgthree" {if $themecolorsetting.btnprimaryoutlinelightbgthree == null}value="#FFFFFF"{else}value="{$themecolorsetting.btnprimaryoutlinelightbgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderthree" name="btnprimaryoutlinelightborderthree" {if $themecolorsetting.btnprimaryoutlinelightborderthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorthree" name="btnprimaryoutlinelightcolorthree" {if $themecolorsetting.btnprimaryoutlinelightcolorthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbghoverthree" name="btnprimaryoutlinelightbghoverthree" {if $themecolorsetting.btnprimaryoutlinelightbghoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinelightbghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderhoverthree" name="btnprimaryoutlinelightborderhoverthree" {if $themecolorsetting.btnprimaryoutlinelightborderhoverthree == null}value="#825d95"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorhoverthree" name="btnprimaryoutlinelightcolorhoverthree" {if $themecolorsetting.btnprimaryoutlinelightcolorhoverthree == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background</label>
							<input class="form-control color-picker" id="btnlightbgthree" name="btnlightbgthree" {if $themecolorsetting.btnlightbgthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightbgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border</label>
							<input class="form-control color-picker" id="btnlightborderthree" name="btnlightborderthree" {if $themecolorsetting.btnlightborderthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color</label>
							<input class="form-control color-picker" id="btnlightcolorthree" name="btnlightcolorthree" {if $themecolorsetting.btnlightcolorthree == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background hover</label>
							<input class="form-control color-picker" id="btnlightbghoverthree" name="btnlightbghoverthree" {if $themecolorsetting.btnlightbghoverthree == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightbghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border hover</label>
							<input class="form-control color-picker" id="btnlightborderhoverthree" name="btnlightborderhoverthree" {if $themecolorsetting.btnlightborderhoverthree == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color hover</label>
							<input class="form-control color-picker" id="btnlightcolorhoverthree" name="btnlightcolorhoverthree" {if $themecolorsetting.btnlightcolorhoverthree == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">lighter button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background</label>
							<input class="form-control color-picker" id="btnlighterbgthree" name="btnlighterbgthree" {if $themecolorsetting.btnlighterbgthree == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterbgthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border</label>
							<input class="form-control color-picker" id="btnlighterborderthree" name="btnlighterborderthree" {if $themecolorsetting.btnlighterborderthree == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterborderthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color</label>
							<input class="form-control color-picker" id="btnlightercolorthree" name="btnlightercolorthree" {if $themecolorsetting.btnlightercolorthree == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolorthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background hover</label>
							<input class="form-control color-picker" id="btnlighterbghoverthree" name="btnlighterbghoverthree" {if $themecolorsetting.btnlighterbghoverthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterbghoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border hover</label>
							<input class="form-control color-picker" id="btnlighterborderhoverthree" name="btnlighterborderhoverthree" {if $themecolorsetting.btnlighterborderhoverthree == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterborderhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color hover</label>
							<input class="form-control color-picker" id="btnlightercolorhoverthree" name="btnlightercolorhoverthree" {if $themecolorsetting.btnlightercolorhoverthree == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolorhoverthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Texts Colors <small>Headings, Texts, Borders, Tags Colors & More ...</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color </label>
							<input class="form-control color-picker" id="textstagscolorthreeheading" name="textstagscolorthreeheading" {if $themecolorsetting.textstagscolorthreeheading == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolorthreeheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Hover Text Color </label>
							<input class="form-control color-picker" id="textstagscolorthreeheadinghover" name="textstagscolorthreeheadinghover" {if $themecolorsetting.textstagscolorthreeheadinghover == null}value="#5b6278"{else}value="{$themecolorsetting.textstagscolorthreeheadinghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color <strong>gray</strong> </label>
							<input class="form-control color-picker" id="textstagscolorthreeheadinggray" name="textstagscolorthreeheadinggray" {if $themecolorsetting.textstagscolorthreeheadinggray == null}value="#b5b5c3"{else}value="{$themecolorsetting.textstagscolorthreeheadinggray}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sub Headings Text Color</label>
							<input class="form-control color-picker" id="textstagscolorthreesubheading" name="textstagscolorthreesubheading" {if $themecolorsetting.textstagscolorthreesubheading == null}value="#a6adc2"{else}value="{$themecolorsetting.textstagscolorthreesubheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts</label>
							<input class="form-control color-picker" id="textstagscolorthreetextcolor" name="textstagscolorthreetextcolor" {if $themecolorsetting.textstagscolorthreetextcolor == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolorthreetextcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts Opacity</label>
							<input class="form-control color-picker" id="textstagscolorthreetextcoloropacity" name="textstagscolorthreetextcoloropacity" {if $themecolorsetting.textstagscolorthreetextcoloropacity == null}value="#8b93a9"{else}value="{$themecolorsetting.textstagscolorthreetextcoloropacity}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color</label>
							<input class="form-control color-picker" id="textstagscolorthreeborder" name="textstagscolorthreeborder" {if $themecolorsetting.textstagscolorthreeborder == null}value="#e7e9ed"{else}value="{$themecolorsetting.textstagscolorthreeborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color Light</label>
							<input class="form-control color-picker" id="textstagscolorthreeborderlight" name="textstagscolorthreeborderlight" {if $themecolorsetting.textstagscolorthreeborderlight == null}value="#eceff9"{else}value="{$themecolorsetting.textstagscolorthreeborderlight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Color</label>
							<input class="form-control color-picker" id="textstagscolorthreelink" name="textstagscolorthreelink" {if $themecolorsetting.textstagscolorthreelink == null}value="#0cbed5"{else}value="{$themecolorsetting.textstagscolorthreelink}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Hover Color</label>
							<input class="form-control color-picker" id="textstagscolorthreelinkhover" name="textstagscolorthreelinkhover" {if $themecolorsetting.textstagscolorthreelinkhover == null}value="#088d9f"{else}value="{$themecolorsetting.textstagscolorthreelinkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Default</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreebg" name="sidebarcolorsdefaultthreebg" {if $themecolorsetting.sidebarcolorsdefaultthreebg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeextendbtnbg" name="sidebarcolorsdefaultthreeextendbtnbg" {if $themecolorsetting.sidebarcolorsdefaultthreeextendbtnbg == null}value="#f6f5fb"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitembg" name="sidebarcolorsdefaultthreeitembg" {if $themecolorsetting.sidebarcolorsdefaultthreeitembg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemhoverbg" name="sidebarcolorsdefaultthreeitemhoverbg" {if $themecolorsetting.sidebarcolorsdefaultthreeitemhoverbg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemtext" name="sidebarcolorsdefaultthreeitemtext" {if $themecolorsetting.sidebarcolorsdefaultthreeitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemtext" name="sidebarcolorsdefaultthreeitemtext" {if $themecolorsetting.sidebarcolorsdefaultthreeitemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemtexthover" name="sidebarcolorsdefaultthreeitemtexthover" {if $themecolorsetting.sidebarcolorsdefaultthreeitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemiconhover" name="sidebarcolorsdefaultthreeitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultthreeitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreeitemiconhover" name="sidebarcolorsdefaultthreeitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultthreeitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreeitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdowntitle" name="sidebarcolorsdefaultthreedropdowntitle" {if $themecolorsetting.sidebarcolorsdefaultthreedropdowntitle == null}value="#18191a"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdownitemtext" name="sidebarcolorsdefaultthreedropdownitemtext" {if $themecolorsetting.sidebarcolorsdefaultthreedropdownitemtext == null}value="#f9f8fa"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdownitemicon" name="sidebarcolorsdefaultthreedropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultthreedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdownitemicon" name="sidebarcolorsdefaultthreedropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultthreedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdownitemtexthover" name="sidebarcolorsdefaultthreedropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdefaultthreedropdownitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdownitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultthreedropdownitemiconhover" name="sidebarcolorsdefaultthreedropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultthreedropdownitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultthreedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Dark</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreebg" name="sidebarcolorsdarkthreebg" {if $themecolorsetting.sidebarcolorsdarkthreebg == null}value="#151718"{else}value="{$themecolorsetting.sidebarcolorsdarkthreebg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeextendbtnbg" name="sidebarcolorsdarkthreeextendbtnbg" {if $themecolorsetting.sidebarcolorsdarkthreeextendbtnbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitembg" name="sidebarcolorsdarkthreeitembg" {if $themecolorsetting.sidebarcolorsdarkthreeitembg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitemhoverbg" name="sidebarcolorsdarkthreeitemhoverbg" {if $themecolorsetting.sidebarcolorsdarkthreeitemhoverbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitemtext" name="sidebarcolorsdarkthreeitemtext" {if $themecolorsetting.sidebarcolorsdarkthreeitemtext == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitemicon" name="sidebarcolorsdarkthreeitemicon" {if $themecolorsetting.sidebarcolorsdarkthreeitemicon == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitemtexthover" name="sidebarcolorsdarkthreeitemtexthover" {if $themecolorsetting.sidebarcolorsdarkthreeitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreeitemtexthover" name="sidebarcolorsdarkthreeitemtexthover" {if $themecolorsetting.sidebarcolorsdarkthreeitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkthreeitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdownbg" name="sidebarcolorsdarkthreedropdownbg" {if $themecolorsetting.sidebarcolorsdarkthreedropdownbg == null}value="#0e0e0f"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdowntitle" name="sidebarcolorsdarkthreedropdowntitle" {if $themecolorsetting.sidebarcolorsdarkthreedropdowntitle == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdownitembg" name="sidebarcolorsdarkthreedropdownitembg" {if $themecolorsetting.sidebarcolorsdarkthreedropdownitembg == null}value="#1a1a1c"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdownitemtext" name="sidebarcolorsdarkthreedropdownitemtext" {if $themecolorsetting.sidebarcolorsdarkthreedropdownitemtext == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdownitemicon" name="sidebarcolorsdarkthreedropdownitemicon" {if $themecolorsetting.sidebarcolorsdarkthreedropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-sidebarcolorsdarkthreedropdownitemtexthover" id="sidebarcolorsdarkthreedropdownitemtexthover" name="sidebarcolorsdarkthreedropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdarkthreedropdownitemtexthover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkthreedropdownitemiconhover" name="sidebarcolorsdarkthreedropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdarkthreedropdownitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkthreedropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>Primary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary background </label>
							<input class="form-control color-picker" id="alertbgprimarythree" name="alertbgprimarythree" {if $themecolorsetting.alertbgprimarythree == null}value="#E2E1F7"{else}value="{$themecolorsetting.alertbgprimarythree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary color </label>
							<input class="form-control color-picker" id="alertcolorprimarythree" name="alertcolorprimarythree" {if $themecolorsetting.alertcolorprimarythree == null}value="#473BF0"{else}value="{$themecolorsetting.alertcolorprimarythree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>secondary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary background </label>
							<input class="form-control color-picker" id="alertbgsecondarythree" name="alertbgsecondarythree" {if $themecolorsetting.alertbgsecondarythree == null}value="#F9F9F9"{else}value="{$themecolorsetting.alertbgsecondarythree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary color </label>
							<input class="form-control color-picker" id="alertcolorsecondarythree" name="alertcolorsecondarythree" {if $themecolorsetting.alertcolorsecondarythree == null}value="#7E8299"{else}value="{$themecolorsetting.alertcolorsecondarythree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>success</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success background </label>
							<input class="form-control color-picker" id="alertbgsuccessthree" name="alertbgsuccessthree" {if $themecolorsetting.alertbgsuccessthree == null}value="#E8FFF3"{else}value="{$themecolorsetting.alertbgsuccessthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success color </label>
							<input class="form-control color-picker" id="alertcolorsuccessthree" name="alertcolorsuccessthree" {if $themecolorsetting.alertcolorsuccessthree == null}value="#50CD89"{else}value="{$themecolorsetting.alertcolorsuccessthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>danger</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger background </label>
							<input class="form-control color-picker" id="alertbgdangerthree" name="alertbgdangerthree" {if $themecolorsetting.alertbgdangerthree == null}value="#F7D4D6"{else}value="{$themecolorsetting.alertbgdangerthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger color </label>
							<input class="form-control color-picker" id="alertcolordangerthree" name="alertcolordangerthree" {if $themecolorsetting.alertcolordangerthree == null}value="#D92632"{else}value="{$themecolorsetting.alertcolordangerthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>warning</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning background </label>
							<input class="form-control color-picker" id="alertbgwarningthree" name="alertbgwarningthree" {if $themecolorsetting.alertbgwarningthree == null}value="#FDF2E2"{else}value="{$themecolorsetting.alertbgwarningthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning color </label>
							<input class="form-control color-picker" id="alertcolorwarningthree" name="alertcolorwarningthree" {if $themecolorsetting.alertcolorwarningthree == null}value="#F0AD4E"{else}value="{$themecolorsetting.alertcolorwarningthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>info</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info background </label>
							<input class="form-control color-picker" id="alertbginfothree" name="alertbginfothree" {if $themecolorsetting.alertbginfothree == null}value="#C4E7F2"{else}value="{$themecolorsetting.alertbginfothree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info color </label>
							<input class="form-control color-picker" id="alertcolorinfothree" name="alertcolorinfothree" {if $themecolorsetting.alertcolorinfothree == null}value="#4AADCB"{else}value="{$themecolorsetting.alertcolorinfothree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>light</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light background </label>
							<input class="form-control color-picker" id="alertbglightthree" name="alertbglightthree" {if $themecolorsetting.alertbglightthree == null}value="#F8F9FA"{else}value="{$themecolorsetting.alertbglightthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light color </label>
							<input class="form-control color-picker" id="alertcolorlightthree" name="alertcolorlightthree" {if $themecolorsetting.alertcolorlightthree == null}value="#212529"{else}value="{$themecolorsetting.alertcolorlightthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>dark</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark background </label>
							<input class="form-control color-picker" id="alertbgdarkthree" name="alertbgdarkthree" {if $themecolorsetting.alertbgdarkthree == null}value="#343A40"{else}value="{$themecolorsetting.alertbgdarkthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark color </label>
							<input class="form-control color-picker" id="alertcolordarkthree" name="alertcolordarkthree" {if $themecolorsetting.alertcolordarkthree == null}value="#FFFFFF"{else}value="{$themecolorsetting.alertcolordarkthree}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
		<div class="section {if $themecolorsetting.dafaultthemecolor=='theme-style-four'}d-block{else}d-none{/if}" id="custom-colors-schemes-four">
			<h5 class="title">Custom Red Theme Color Schemes</h5>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Backgrounds Colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Main Background color </label>
							<input class="form-control color-picker" id="backroundonefour" name="backroundonefour" {if $themecolorsetting.backroundonefour == null}value="#ffffff"{else}value="{$themecolorsetting.backroundonefour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 2 Background color </label>
							<input class="form-control color-picker" id="backroundtwofour" name="backroundtwofour" {if $themecolorsetting.backroundtwofour == null}value="#f5e9ea"{else}value="{$themecolorsetting.backroundtwofour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 3 Background color </label>
							<input class="form-control color-picker" id="backroundtreefour" name="backroundtreefour" {if $themecolorsetting.backroundtreefour == null}value="#f6d4d7"{else}value="{$themecolorsetting.backroundtreefour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 4 Background color </label>
							<input class="form-control color-picker" id="backroundfourfour" name="backroundfourfour" {if $themecolorsetting.backroundfourfour == null}value="#e6cfd1"{else}value="{$themecolorsetting.backroundfourfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 5 Background color </label>
							<input class="form-control color-picker" id="backroundfivefour" name="backroundfivefour" {if $themecolorsetting.backroundfivefour == null}value="#f69fbd"{else}value="{$themecolorsetting.backroundfivefour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 6 Background color </label>
							<input class="form-control color-picker" id="backroundsixfour" name="backroundsixfour" {if $themecolorsetting.backroundsixfour == null}value="#eec3c7"{else}value="{$themecolorsetting.backroundsixfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 7 Background color </label>
							<input class="form-control color-picker" id="backroundsavenfour" name="backroundsavenfour" {if $themecolorsetting.backroundsavenfour == null}value="#fff"{else}value="{$themecolorsetting.backroundsavenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 8 Background color </label>
							<input class="form-control color-picker" id="backroundeightfour" name="backroundeightfour" {if $themecolorsetting.backroundeightfour == null}value="#fbf3f4"{else}value="{$themecolorsetting.backroundeightfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 9 Background color </label>
							<input class="form-control color-picker" id="backroundninefour" name="backroundninefour" {if $themecolorsetting.backroundninefour == null}value="#5daea8"{else}value="{$themecolorsetting.backroundninefour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 10 Background color </label>
							<input class="form-control color-picker" id="backroundtenfour" name="backroundtenfour" {if $themecolorsetting.backroundtenfour == null}value="#eddcde"{else}value="{$themecolorsetting.backroundtenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 11 Background color </label>
							<input class="form-control color-picker" id="backroundelevenfour" name="backroundelevenfour" {if $themecolorsetting.backroundelevenfour == null}value="#edb3b8"{else}value="{$themecolorsetting.backroundelevenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 12 Background color </label>
							<input class="form-control color-picker" id="backroundtwelvefour" name="backroundtwelvefour" {if $themecolorsetting.backroundtwelvefour == null}value="#d6535f"{else}value="{$themecolorsetting.backroundtwelvefour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 13 Background color </label>
							<input class="form-control color-picker" id="backroundthirteenfour" name="backroundthirteenfour" {if $themecolorsetting.backroundthirteenfour == null}value="#ff6a78"{else}value="{$themecolorsetting.backroundthirteenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 14 Background color </label>
							<input class="form-control color-picker" id="backroundfourteenfour" name="backroundfourteenfour" {if $themecolorsetting.backroundfourteenfour == null}value="#fff"{else}value="{$themecolorsetting.backroundfourteenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Lighter 15 Background color </label>
							<input class="form-control color-picker" id="backroundfifteenfour" name="backroundfifteenfour" {if $themecolorsetting.backroundfifteenfour == null}value="#ff6a78"{else}value="{$themecolorsetting.backroundfifteenfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarybgfour" name="btnprimarybgfour" {if $themecolorsetting.btnprimarybgfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimarybgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryborderfour" name="btnprimaryborderfour" {if $themecolorsetting.btnprimaryborderfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarycolorfour" name="btnprimarycolorfour" {if $themecolorsetting.btnprimarycolorfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarybghoverfour" name="btnprimarybghoverfour" {if $themecolorsetting.btnprimarybghoverfour == null}value="#e04857"{else}value="{$themecolorsetting.btnprimarybghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryborderhoverfour" name="btnprimaryborderhoverfour" {if $themecolorsetting.btnprimaryborderhoverfour == null}value="#e04857"{else}value="{$themecolorsetting.btnprimaryborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarycolorhoverfour" name="btnprimarycolorhoverfour" {if $themecolorsetting.btnprimarycolorhoverfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimarycolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary Light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimarylightbgfour" name="btnprimarylightbgfour" {if $themecolorsetting.btnprimarylightbgfour == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightbgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimarylightborderfour" name="btnprimarylightborderfour" {if $themecolorsetting.btnprimarylightborderfour == null}value="#f9f9f9"{else}value="{$themecolorsetting.btnprimarylightborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimarylightcolorfour" name="btnprimarylightcolorfour" {if $themecolorsetting.btnprimarylightcolorfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimarylightcolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimarylightbghoverfour" name="btnprimarylightbghoverfour" {if $themecolorsetting.btnprimarylightbghoverfour == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightbghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimarylightborderhoverfour" name="btnprimarylightborderhoverfour" {if $themecolorsetting.btnprimarylightborderhoverfour == null}value="#f4f4f4"{else}value="{$themecolorsetting.btnprimarylightborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimarylightcolorhoverfour" name="btnprimarylightcolorhoverfour" {if $themecolorsetting.btnprimarylightcolorhoverfour == null}value="#7e8299"{else}value="{$themecolorsetting.btnprimarylightcolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Default button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btndefaultbgfour" name="btndefaultbgfour" {if $themecolorsetting.btndefaultbgfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultbgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btndefaultborderfour" name="btndefaultborderfour" {if $themecolorsetting.btndefaultborderfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btndefaultborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btndefaultcolorfour" name="btndefaultcolorfour" {if $themecolorsetting.btndefaultcolorfour == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btndefaultbghoverfour" name="btndefaultbghoverfour" {if $themecolorsetting.btndefaultbghoverfour == null}value="#F4F4F4"{else}value="{$themecolorsetting.btndefaultbghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btndefaultborderhoverfour" name="btndefaultborderhoverfour" {if $themecolorsetting.btndefaultborderhoverfour == null}value="#F4F4F4"{else}value="{$themecolorsetting.btndefaultborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btndefaultcolorhoverfour" name="btndefaultcolorhoverfour" {if $themecolorsetting.btndefaultcolorhoverfour == null}value="#7E8299"{else}value="{$themecolorsetting.btndefaultcolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebgfour" name="btnprimaryoutlinebgfour" {if $themecolorsetting.btnprimaryoutlinebgfour == null}value="#FFFFFF"{else}value="{$themecolorsetting.btnprimaryoutlinebgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderfour" name="btnprimaryoutlineborderfour" {if $themecolorsetting.btnprimaryoutlineborderfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlineborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorfour" name="btnprimaryoutlinecolorfour" {if $themecolorsetting.btnprimaryoutlinecolorfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinecolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinebghoverfour" name="btnprimaryoutlinebghoverfour" {if $themecolorsetting.btnprimaryoutlinebghoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinebghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlineborderhoverfour" name="btnprimaryoutlineborderhoverfour" {if $themecolorsetting.btnprimaryoutlineborderhoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlineborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinecolorhoverfour" name="btnprimaryoutlinecolorhoverfour" {if $themecolorsetting.btnprimaryoutlinecolorhoverfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinecolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">primary outline white button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebgfour" name="btnprimaryoutlinewhitebgfour" {if $themecolorsetting.btnprimaryoutlinewhitebgfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderfour" name="btnprimaryoutlinewhiteborderfour" {if $themecolorsetting.btnprimaryoutlinewhiteborderfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorfour" name="btnprimaryoutlinewhitecolorfour" {if $themecolorsetting.btnprimaryoutlinewhitecolorfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitebghoverfour" name="btnprimaryoutlinewhitebghoverfour" {if $themecolorsetting.btnprimaryoutlinewhitebghoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinewhitebghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhiteborderhoverfour" name="btnprimaryoutlinewhiteborderhoverfour" {if $themecolorsetting.btnprimaryoutlinewhiteborderhoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinewhiteborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinewhitecolorhoverfour" name="btnprimaryoutlinewhitecolorhoverfour" {if $themecolorsetting.btnprimaryoutlinewhitecolorhoverfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinewhitecolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Primary outline light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbgfour" name="btnprimaryoutlinelightbgfour" {if $themecolorsetting.btnprimaryoutlinelightbgfour == null}value="#FFFFFF"{else}value="{$themecolorsetting.btnprimaryoutlinelightbgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderfour" name="btnprimaryoutlinelightborderfour" {if $themecolorsetting.btnprimaryoutlinelightborderfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorfour" name="btnprimaryoutlinelightcolorfour" {if $themecolorsetting.btnprimaryoutlinelightcolorfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn background hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightbghoverfour" name="btnprimaryoutlinelightbghoverfour" {if $themecolorsetting.btnprimaryoutlinelightbghoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinelightbghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn border hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightborderhoverfour" name="btnprimaryoutlinelightborderhoverfour" {if $themecolorsetting.btnprimaryoutlinelightborderhoverfour == null}value="#ff6a78"{else}value="{$themecolorsetting.btnprimaryoutlinelightborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Primary btn color hover</label>
							<input class="form-control color-picker" id="btnprimaryoutlinelightcolorhoverfour" name="btnprimaryoutlinelightcolorhoverfour" {if $themecolorsetting.btnprimaryoutlinelightcolorhoverfour == null}value="#fff"{else}value="{$themecolorsetting.btnprimaryoutlinelightcolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">light button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background</label>
							<input class="form-control color-picker" id="btnlightbgfour" name="btnlightbgfour" {if $themecolorsetting.btnlightbgfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightbgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border</label>
							<input class="form-control color-picker" id="btnlightborderfour" name="btnlightborderfour" {if $themecolorsetting.btnlightborderfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlightborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color</label>
							<input class="form-control color-picker" id="btnlightcolorfour" name="btnlightcolorfour" {if $themecolorsetting.btnlightcolorfour == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn background hover</label>
							<input class="form-control color-picker" id="btnlightbghoverfour" name="btnlightbghoverfour" {if $themecolorsetting.btnlightbghoverfour == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightbghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn border hover</label>
							<input class="form-control color-picker" id="btnlightborderhoverfour" name="btnlightborderhoverfour" {if $themecolorsetting.btnlightborderhoverfour == null}value="#F4F4F4"{else}value="{$themecolorsetting.btnlightborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light btn color hover</label>
							<input class="form-control color-picker" id="btnlightcolorhoverfour" name="btnlightcolorhoverfour" {if $themecolorsetting.btnlightcolorhoverfour == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightcolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">lighter button colors</h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background</label>
							<input class="form-control color-picker" id="btnlighterbgfour" name="btnlighterbgfour" {if $themecolorsetting.btnlighterbgfour == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterbgfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border</label>
							<input class="form-control color-picker" id="btnlighterborderfour" name="btnlighterborderfour" {if $themecolorsetting.btnlighterborderfour == null}value="#FCFCFC"{else}value="{$themecolorsetting.btnlighterborderfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color</label>
							<input class="form-control color-picker" id="btnlightercolorfour" name="btnlightercolorfour" {if $themecolorsetting.btnlightercolorfour == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolorfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn background hover</label>
							<input class="form-control color-picker" id="btnlighterbghoverfour" name="btnlighterbghoverfour" {if $themecolorsetting.btnlighterbghoverfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterbghoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn border hover</label>
							<input class="form-control color-picker" id="btnlighterborderhoverfour" name="btnlighterborderhoverfour" {if $themecolorsetting.btnlighterborderhoverfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.btnlighterborderhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">lighter btn color hover</label>
							<input class="form-control color-picker" id="btnlightercolorhoverfour" name="btnlightercolorhoverfour" {if $themecolorsetting.btnlightercolorhoverfour == null}value="#7E8299"{else}value="{$themecolorsetting.btnlightercolorhoverfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Texts Colors <small>Headings, Texts, Borders, Tags Colors & More ...</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color </label>
							<input class="form-control color-picker" id="textstagscolorfourheading" name="textstagscolorfourheading" {if $themecolorsetting.textstagscolorfourheading == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolorfourheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Hover Text Color </label>
							<input class="form-control color-picker" id="textstagscolorfourheadinghover" name="textstagscolorfourheadinghover" {if $themecolorsetting.textstagscolorfourheadinghover == null}value="#5b6278"{else}value="{$themecolorsetting.textstagscolorfourheadinghover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Headings Text Color <strong>gray</strong> </label>
							<input class="form-control color-picker" id="textstagscolorfourheadinggray" name="textstagscolorfourheadinggray" {if $themecolorsetting.textstagscolorfourheadinggray == null}value="#b5b5c3"{else}value="{$themecolorsetting.textstagscolorfourheadinggray}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sub Headings Text Color</label>
							<input class="form-control color-picker" id="textstagscolorfoursubheading" name="textstagscolorfoursubheading" {if $themecolorsetting.textstagscolorfoursubheading == null}value="#a6adc2"{else}value="{$themecolorsetting.textstagscolorfoursubheading}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts</label>
							<input class="form-control color-picker" id="textstagscolorfourtextcolor" name="textstagscolorfourtextcolor" {if $themecolorsetting.textstagscolorfourtextcolor == null}value="#161c2d"{else}value="{$themecolorsetting.textstagscolorfourtextcolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Color Texts Opacity</label>
							<input class="form-control color-picker" id="textstagscolorfourtextcoloropacity" name="textstagscolorfourtextcoloropacity" {if $themecolorsetting.textstagscolorfourtextcoloropacity == null}value="#8b93a9"{else}value="{$themecolorsetting.textstagscolorfourtextcoloropacity}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color</label>
							<input class="form-control color-picker" id="textstagscolorfourborder" name="textstagscolorfourborder" {if $themecolorsetting.textstagscolorfourborder == null}value="#e7e9ed"{else}value="{$themecolorsetting.textstagscolorfourborder}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Border Color Light</label>
							<input class="form-control color-picker" id="textstagscolorfourborderlight" name="textstagscolorfourborderlight" {if $themecolorsetting.textstagscolorfourborderlight == null}value="#eceff9"{else}value="{$themecolorsetting.textstagscolorfourborderlight}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Color</label>
							<input class="form-control color-picker" id="textstagscolorfourlink" name="textstagscolorfourlink" {if $themecolorsetting.textstagscolorfourlink == null}value="#0cbed5"{else}value="{$themecolorsetting.textstagscolorfourlink}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Link Hover Color</label>
							<input class="form-control color-picker" id="textstagscolorfourlinkhover" name="textstagscolorfourlinkhover" {if $themecolorsetting.textstagscolorfourlinkhover == null}value="#088d9f"{else}value="{$themecolorsetting.textstagscolorfourlinkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Default</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourbg" name="sidebarcolorsdefaultfourbg" {if $themecolorsetting.sidebarcolorsdefaultfourbg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourextendbtnbg" name="sidebarcolorsdefaultfourextendbtnbg" {if $themecolorsetting.sidebarcolorsdefaultfourextendbtnbg == null}value="#f6f5fb"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritembg" name="sidebarcolorsdefaultfouritembg" {if $themecolorsetting.sidebarcolorsdefaultfouritembg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemhoverbg" name="sidebarcolorsdefaultfouritemhoverbg" {if $themecolorsetting.sidebarcolorsdefaultfouritemhoverbg == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemtext" name="sidebarcolorsdefaultfouritemtext" {if $themecolorsetting.sidebarcolorsdefaultfouritemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemtext" name="sidebarcolorsdefaultfouritemtext" {if $themecolorsetting.sidebarcolorsdefaultfouritemtext == null}value="#161c2d"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemtexthover" name="sidebarcolorsdefaultfouritemtexthover" {if $themecolorsetting.sidebarcolorsdefaultfouritemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemiconhover" name="sidebarcolorsdefaultfouritemiconhover" {if $themecolorsetting.sidebarcolorsdefaultfouritemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfouritemiconhover" name="sidebarcolorsdefaultfouritemiconhover" {if $themecolorsetting.sidebarcolorsdefaultfouritemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdefaultfouritemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdowntitle" name="sidebarcolorsdefaultfourdropdowntitle" {if $themecolorsetting.sidebarcolorsdefaultfourdropdowntitle == null}value="#18191a"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdownitemtext" name="sidebarcolorsdefaultfourdropdownitemtext" {if $themecolorsetting.sidebarcolorsdefaultfourdropdownitemtext == null}value="#f9f8fa"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdownitemicon" name="sidebarcolorsdefaultfourdropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultfourdropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdownitemicon" name="sidebarcolorsdefaultfourdropdownitemicon" {if $themecolorsetting.sidebarcolorsdefaultfourdropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdownitemtexthover" name="sidebarcolorsdefaultfourdropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdefaultfourdropdownitemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdownitemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Sidebar dropdown item hover color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdefaultfourdropdownitemiconhover" name="sidebarcolorsdefaultfourdropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdefaultfourdropdownitemiconhover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdefaultfourdropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar colors Schemes <small>Dark</small></h6>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourbg" name="sidebarcolorsdarkfourbg" {if $themecolorsetting.sidebarcolorsdarkfourbg == null}value="#151718"{else}value="{$themecolorsetting.sidebarcolorsdarkfourbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar extend button background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourextendbtnbg" name="sidebarcolorsdarkfourextendbtnbg" {if $themecolorsetting.sidebarcolorsdarkfourextendbtnbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkfourextendbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritembg" name="sidebarcolorsdarkfouritembg" {if $themecolorsetting.sidebarcolorsdarkfouritembg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritemhoverbg" name="sidebarcolorsdarkfouritemhoverbg" {if $themecolorsetting.sidebarcolorsdarkfouritemhoverbg == null}value="#2d3031"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritemhoverbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritemtext" name="sidebarcolorsdarkfouritemtext" {if $themecolorsetting.sidebarcolorsdarkfouritemtext == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritemicon" name="sidebarcolorsdarkfouritemicon" {if $themecolorsetting.sidebarcolorsdarkfouritemicon == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>text</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritemtexthover" name="sidebarcolorsdarkfouritemtexthover" {if $themecolorsetting.sidebarcolorsdarkfouritemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar item hover color <strong>icon</strong></label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfouritemtexthover" name="sidebarcolorsdarkfouritemtexthover" {if $themecolorsetting.sidebarcolorsdarkfouritemtexthover == null}value="#0cbed5"{else}value="{$themecolorsetting.sidebarcolorsdarkfouritemtexthover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdownbg" name="sidebarcolorsdarkfourdropdownbg" {if $themecolorsetting.sidebarcolorsdarkfourdropdownbg == null}value="#0e0e0f"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown title color </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdowntitle" name="sidebarcolorsdarkfourdropdowntitle" {if $themecolorsetting.sidebarcolorsdarkfourdropdowntitle == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdowntitle}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item Background </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdownitembg" name="sidebarcolorsdarkfourdropdownitembg" {if $themecolorsetting.sidebarcolorsdarkfourdropdownitembg == null}value="#1a1a1c"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownitembg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdownitemtext" name="sidebarcolorsdarkfourdropdownitemtext" {if $themecolorsetting.sidebarcolorsdarkfourdropdownitemtext == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownitemtext}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdownitemicon" name="sidebarcolorsdarkfourdropdownitemicon" {if $themecolorsetting.sidebarcolorsdarkfourdropdownitemicon == null}value="#758085"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownitemicon}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>text</strong> </label>
							<input class="form-control color-sidebarcolorsdarkfourdropdownitemtexthover" id="sidebarcolorsdarkfourdropdownitemtexthover" name="sidebarcolorsdarkfourdropdownitemtexthover" {if $themecolorsetting.sidebarcolorsdarkfourdropdownitemtexthover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="form-group">
							<label for="name">Dark Sidebar dropdown item color <strong>icon</strong> </label>
							<input class="form-control color-picker" id="sidebarcolorsdarkfourdropdownitemiconhover" name="sidebarcolorsdarkfourdropdownitemiconhover" {if $themecolorsetting.sidebarcolorsdarkfourdropdownitemiconhover == null}value="#fff"{else}value="{$themecolorsetting.sidebarcolorsdarkfourdropdownitemiconhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>Primary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary background </label>
							<input class="form-control color-picker" id="alertbgprimaryfour" name="alertbgprimaryfour" {if $themecolorsetting.alertbgprimaryfour == null}value="#E2E1F7"{else}value="{$themecolorsetting.alertbgprimaryfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">primary color </label>
							<input class="form-control color-picker" id="alertcolorprimaryfour" name="alertcolorprimaryfour" {if $themecolorsetting.alertcolorprimaryfour == null}value="#473BF0"{else}value="{$themecolorsetting.alertcolorprimaryfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>secondary</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary background </label>
							<input class="form-control color-picker" id="alertbgsecondaryfour" name="alertbgsecondaryfour" {if $themecolorsetting.alertbgsecondaryfour == null}value="#F9F9F9"{else}value="{$themecolorsetting.alertbgsecondaryfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">secondary color </label>
							<input class="form-control color-picker" id="alertcolorsecondaryfour" name="alertcolorsecondaryfour" {if $themecolorsetting.alertcolorsecondaryfour == null}value="#7E8299"{else}value="{$themecolorsetting.alertcolorsecondaryfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>success</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success background </label>
							<input class="form-control color-picker" id="alertbgsuccessfour" name="alertbgsuccessfour" {if $themecolorsetting.alertbgsuccessfour == null}value="#E8FFF3"{else}value="{$themecolorsetting.alertbgsuccessfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">success color </label>
							<input class="form-control color-picker" id="alertcolorsuccessfour" name="alertcolorsuccessfour" {if $themecolorsetting.alertcolorsuccessfour == null}value="#50CD89"{else}value="{$themecolorsetting.alertcolorsuccessfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>danger</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger background </label>
							<input class="form-control color-picker" id="alertbgdangerfour" name="alertbgdangerfour" {if $themecolorsetting.alertbgdangerfour == null}value="#F7D4D6"{else}value="{$themecolorsetting.alertbgdangerfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">danger color </label>
							<input class="form-control color-picker" id="alertcolordangerfour" name="alertcolordangerfour" {if $themecolorsetting.alertcolordangerfour == null}value="#D92632"{else}value="{$themecolorsetting.alertcolordangerfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>warning</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning background </label>
							<input class="form-control color-picker" id="alertbgwarningfour" name="alertbgwarningfour" {if $themecolorsetting.alertbgwarningfour == null}value="#FDF2E2"{else}value="{$themecolorsetting.alertbgwarningfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">warning color </label>
							<input class="form-control color-picker" id="alertcolorwarningfour" name="alertcolorwarningfour" {if $themecolorsetting.alertcolorwarningfour == null}value="#F0AD4E"{else}value="{$themecolorsetting.alertcolorwarningfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>info</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info background </label>
							<input class="form-control color-picker" id="alertbginfofour" name="alertbginfofour" {if $themecolorsetting.alertbginfofour == null}value="#C4E7F2"{else}value="{$themecolorsetting.alertbginfofour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">info color </label>
							<input class="form-control color-picker" id="alertcolorinfofour" name="alertcolorinfofour" {if $themecolorsetting.alertcolorinfofour == null}value="#4AADCB"{else}value="{$themecolorsetting.alertcolorinfofour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>light</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light background </label>
							<input class="form-control color-picker" id="alertbglightfour" name="alertbglightfour" {if $themecolorsetting.alertbglightfour == null}value="#F8F9FA"{else}value="{$themecolorsetting.alertbglightfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">light color </label>
							<input class="form-control color-picker" id="alertcolorlightfour" name="alertcolorlightfour" {if $themecolorsetting.alertcolorlightfour == null}value="#212529"{else}value="{$themecolorsetting.alertcolorlightfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">alerts, Badges & status colors <small>dark</small></h6>
				<div class="row">
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark background </label>
							<input class="form-control color-picker" id="alertbgdarkfour" name="alertbgdarkfour" {if $themecolorsetting.alertbgdarkfour == null}value="#343A40"{else}value="{$themecolorsetting.alertbgdarkfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-6">
						<div class="form-group">
							<label for="name">dark color </label>
							<input class="form-control color-picker" id="alertcolordarkfour" name="alertcolordarkfour" {if $themecolorsetting.alertcolordarkfour == null}value="#FFFFFF"{else}value="{$themecolorsetting.alertcolordarkfour}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
	
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
	<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applythemecolor" value="Save and apply the style"/>
	<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=styleoptions">Cancel</a>
</div>

<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resetstyleoptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>AdminiTheme Styles & colors</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Reset AdminiTheme Styles & colors settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset AdminiTheme Styles & colors settings completly.</p>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__footer">
					<button type="submit" class="confirm">Reset</button>
					<button type="button" class="cancel" data-dismiss="modal">Close</button>
				</div>
            </form>
        </div>
    </div>
</div>

<div id="exportpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="exportForm" action="{$modurl}&action=exportstyleoptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>AdminiTheme Styles & colors</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export AdminiTheme Styles & colors settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__footer">
					<button type="submit" class="confirm" >Export Data</button>
					<button type="button" class="cancel" data-dismiss="modal">Close</button>
				</div>
            </form>
        </div>
    </div>
</div>

<div id="importpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="exportForm" action="{$modurl}&action=importstyleoptions" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>AdminiTheme Styles & colors</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import AdminiTheme Styles & colors settings, <b class="red">Please check that the file name is adminitheme_styleoptions_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
					 <p>Please note that, <b class="red">All of the options in this page will be overwrited with the uploaded file!</b>. and that action can not be undone!</p>
				
					<div class="form-group">
						<label for="defaultlogolinktagline">Attach CSV file</label>
						<input class="form-control file-input" type="file" name="uploaded_file" id="uploaded_file" accept=".csv" required>
					</div>
				
				</div>
				<div class="coodiv__whmcs__admin__panel__model__footer">
					<button type="submit" class="confirm" >Upload and Overwrite</button>
					<button type="button" class="cancel" data-dismiss="modal">Close</button>
				</div>
            </form>
        </div>
    </div>
</div>
			  
