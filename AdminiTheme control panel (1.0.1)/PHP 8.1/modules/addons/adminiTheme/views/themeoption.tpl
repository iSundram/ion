<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">Shufy theme Genaral settings</h5>
				<p class="coodiv__main__hero__sub__title">You do not need to create complicated WHMCS hooks to create or edit menus anymore, Coodiv Primary Menu manager gives you convenient options to set up your theme main navigation.</p>
			</div>
			<div class="col-md-7 col-12 btn__container">
				<a href="#exportpageoptions" data-toggle="modal" class="add__new__group__btn"><i class="fas fa-inbox-out"></i>Export Options</a>
				<a href="#importpageoptions" data-toggle="modal" class="add__new__group__btn"><i class="fas fa-inbox-in"></i>Import Options</a>
				<a href="#resetpageoptions" data-toggle="modal" class="add__new__group__btn cancel"><i class="fas fa-redo-alt"></i>Reset Options</a>
			</div>
		</div>
		
		<ul class="navbar-nav coodiv__main__hero__nav">
		  <li class="nav-item active"><a class="nav-link">Genaral</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=styleoptions">Color Schemes</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=typpoptions">Typography</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=layoutoptions">Layouts settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=sidebaroptions">Sidebar settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	
	</div>
	<form id="applythemeoption" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applythemeoption" method="post">
		<input type="hidden" name="itemid" value="1">
		<div class="section">
			<h5 class="title">Logo & Site Identity</h5>
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="form-group templates__form__control">
						<label for="textlogo">Use Site Name as Logo (text) <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display your site name as a logo." class="fas fa-info-circle"></i></label>
						<fieldset name="textlogo" id="textlogo">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="textlogo" id="textlogo" value="activated" {if $themesetting.siteaslogo=='activated'}checked{/if}>
								i want to use my site Name as Logo
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group">
						<label for="customtextlogo">Custom text logo<i data-toggle="tooltip" data-placement="bottom" title="Add your custom logo text to display in place of the logo." class="fas fa-info-circle"></i></label>
						<input type="text" name="customtextlogo" id="customtextlogo" {if $themesetting.customtextlogo == null}value="" placeholder="Leave this filed empty if you'd like to use the default WHMCS settings"{else}value="{$themesetting.customtextlogo}"{/if} class="form-control" >
					</div>
					<div class="form-group d-none">
						<label for="additionelsetting">Additionel value<i data-toggle="tooltip" data-placement="bottom" title="Add your custom logo text to display in place of the logo." class="fas fa-info-circle"></i></label>
						<input type="text" name="additionelsetting" id="additionelsetting" {if $themesetting.additionelsetting == null}value="" placeholder="Leave this filed empty if you'd like to use the default WHMCS settings"{else}value="{$themesetting.additionelsetting}"{/if} class="form-control" >
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="defaultlogolinkicon">Your default logo icon URL (1:1 aspect ratio)<i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your icon logo must be a 1:1 aspect ratio for the sidebar views." class="fas fa-info-circle"></i></label>
						<input type="url" name="defaultlogolinkicon" id="defaultlogolinkicon" {if $themesetting.defaultlogolinkicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.defaultlogolinkicon}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="defaultlogolinktagline">Your default logo tagline (without icon) URL <i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your logo without your icon." class="fas fa-info-circle"></i></label>
						<input type="url" name="defaultlogolinktagline" id="defaultlogolinktagline" {if $themesetting.defaultlogolinktagline == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.defaultlogolinktagline}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="defaultlogolinkfull">Your Full logo link URL <i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your full logo." class="fas fa-info-circle"></i></label>
						<input type="url" name="defaultlogolinkfull" id="defaultlogolinkfull" {if $themesetting.defaultlogolinkfull == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.defaultlogolinkfull}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="darklogolinkicon">Your logo icon for dark backgrounds (inverse icon) (1:1 aspect ratio) URL<i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your icon logo must be a 1:1 aspect ratio for the sidebar views for dark backgrounds." class="fas fa-info-circle"></i></label>
						<input type="url" name="darklogolinkicon" id="darklogolinkicon" {if $themesetting.darklogolinkicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.darklogolinkicon}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="darklogolinktagline">Your logo for tagline dark backgrounds (without icon) (inverse tagline) URL<i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your logo without your icon for dark backgrounds." class="fas fa-info-circle"></i></label>
						<input type="url" name="darklogolinktagline" id="darklogolinktagline" {if $themesetting.darklogolinktagline == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.darklogolinktagline}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="darklogolinkfull">Your Full logo link for dark backgrounds (inverse logo) URL<i data-toggle="tooltip" data-placement="bottom" title="Add The URL to your full logo for dark backgrounds." class="fas fa-info-circle"></i></label>
						<input type="url" name="darklogolinkfull" id="darklogolinkfull" {if $themesetting.darklogolinkfull == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.darklogolinkfull}"{/if} class="form-control" >
					</div>
				</div>
			</div>
		</div>
		
		<div class="section">
			<h5 class="title">Genaral settings</h5>
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="form-group templates__form__control d-none">
						<label for="advancedemailverification">Activate the advanced email verification system <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to enable the advanced email verification system for your customers." class="fas fa-info-circle"></i></label>
						<fieldset name="advancedemailverification" id="advancedemailverification">
							<div class="radio">
								<label class="template__label">
									<input type="checkbox" name="advancedemailverification" id="advancedemailverification" value="activated" {if $themesetting.advancedemailverification=='activated'}checked{/if}>
									i want to use the advanced email verification system for your customers.
									<span class="checkmark"><i class="fal fa-check"></i></span>
								</label>
							</div>
						</fieldset>
					</div>
										
					<div class="form-group templates__form__control">
						<label for="customerspin">Customer Support PIN <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to enable the customers support PIN addon in your system." class="fas fa-info-circle"></i></label>
						<fieldset name="customerspin" id="customerspin">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="customerspin" id="customerspin" value="activated" {if $themesetting.customerspin=='activated'}checked{/if}>
								i want to use the customers support PIN addon in my system
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
										
					<div class="form-group templates__form__control">
						<label for="customersnotifications">Delete notification when close it <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field if you want your customers to not show notifications and alerts again when close them." class="fas fa-info-circle"></i></label>
						<fieldset name="customersnotifications" id="customersnotifications">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="customersnotifications" id="customersnotifications" value="activated" {if $themesetting.customersnotifications=='activated'}checked{/if}>
								i want to delete notifications and alerts when customers close them.
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>	
										
					<div class="form-group templates__form__control">
						<label for="productasslider">Slider mode in product page <i data-toggle="tooltip" data-placement="bottom" title="in these fields, you can configure the slider mode in the product page" class="fas fa-info-circle"></i></label>
						<fieldset name="productasslider" id="productasslider" style="margin-bottom:10px">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="productasslider" id="productasslider" value="activated" {if $themesetting.productasslider=='activated' || $themesetting.id != '1'}checked{/if}>
								I want to display my products as a slider as the default
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						
						<fieldset name="allowproductsliderswitch" id="allowproductsliderswitch">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="allowproductsliderswitch" id="allowproductsliderswitch" value="activated" {if $themesetting.allowproductsliderswitch=='activated' || $themesetting.id != '1'}checked{/if}>
								Allow user to switch from and to slider mode in product page
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>	

					
					<div class="form-group templates__form__control">
						<label for="gravatar">Gravatar  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Gravatar as profile picture for my clients." class="fas fa-info-circle"></i></label>
						<fieldset name="gravatar" id="gravatar">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="gravatar" id="gravatar" value="activated" {if $themesetting.gravatar=='activated' || $themesetting.id != '1'}checked{/if}>
								i want to use Gravatar avatar as profile picture for my clients
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					<div class="form-group templates__form__control">
						<label for="h-anoncement">Header anoncements  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display header anoncement slider" class="fas fa-info-circle"></i></label>
						<fieldset name="h-anoncement" id="h-anoncement">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="h-anoncement" id="h-anoncement" value="activated" {if $themesetting.headeranoncement=='activated' || $themesetting.id != '1'}checked{/if}>
									Display anoncements in header
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					<div class="form-group templates__form__control">
						<label for="user-dropdown">Header dropdowns  <i data-toggle="tooltip" data-placement="bottom" title="This Fields Are Bbout Display Dropdowns As a Sidebar" class="fas fa-info-circle"></i></label>
						<fieldset style="margin-bottom:10px" name="user-dropdown" id="user-dropdown">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="user-dropdown" id="user-dropdown" value="activated" {if $themesetting.userdropdown=='activated' || $themesetting.id != '1'}checked{/if}>
									I want to display header user dropdown as a sidebar
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset style="margin-bottom:10px" name="notification-dropdown" id="notification-dropdown">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="notification-dropdown" id="notification-dropdown" value="activated" {if $themesetting.notificationdropdown=='activated' || $themesetting.id != '1'}checked{/if}>
									I want to display header notification dropdown as a sidebar
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset class="d-none" style="margin-bottom:10px" name="cart-dropdown" id="cart-dropdown">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="cart-dropdown" id="cart-dropdown" value="activated" {if $themesetting.cartdropdown=='activated' || $themesetting.id != '1'}checked{/if}>
									I want to display header cart dropdown as a sidebar
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					
					<div class="form-group templates__form__control">
						<label for="client-marketconnect">Marketconnect Bannaers  <i data-toggle="tooltip" data-placement="bottom" title="This Fields Are About Display Marketconnect Bannaers" class="fas fa-info-circle"></i></label>
						<fieldset style="margin-bottom:10px" name="client-marketconnect" id="client-marketconnect">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="client-marketconnect" id="client-marketconnect" value="activated" {if $themesetting.clientmarketconnect=='activated' || $themesetting.id != '1'}checked{/if}>
								Display Marketconnect Bannaers in the client area page
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset style="margin-bottom:10px" name="services-marketconnect" id="services-marketconnect">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="services-marketconnect" id="services-marketconnect" value="activated" {if $themesetting.servicemarketconnect=='activated' || $themesetting.id != '1'}checked{/if}>
								Display Marketconnect Bannaers in my services page
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset name="domains-marketconnect" id="domains-marketconnect">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="domains-marketconnect" id="domains-marketconnect" value="activated" {if $themesetting.domainmarketconnect=='activated' || $themesetting.id != '1'}checked{/if}>
								Display Marketconnect Bannaers in my domains page
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
											
					<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
						<label>Login page styles  <i data-toggle="tooltip" data-placement="bottom" title="Choose login page styles." class="fas fa-info-circle"></i></label>
						<fieldset>
							<div class="radio">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/login-style-1.webp" alt="">
									<input type="radio" name="login-style" id="loginstyleone" value="loginstyleone" {if $themesetting.loginstyle=='loginstyleone' || $themesetting.id != '1'}checked{/if}>
									<span class="title">Login page style 1</span>
									<span class="checkmark"></span>
								</label>
							</div>

							<div class="radio">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/login-style-2.webp" alt="">
									<input type="radio" name="login-style" id="loginstyletwo" value="loginstyletwo" {if $themesetting.loginstyle=='loginstyletwo'}checked{/if}>
									<span class="title">Login page style 2</span>
									<span class="checkmark"></span>
								</label>
							</div>

							<div class="radio disabled" data-toggle="tooltip" data-placement="bottom" title="New styles will added soon">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/no-item.webp" alt="">
									<input type="radio" name="login-style" id="loginstyletree" value="loginstyletree" {if $themesetting.loginstyle=='loginstyletree'}checked{/if} disabled>
									<span class="title">Login page style 3</span>
									<span class="checkmark"></span>
								</label>
							</div>
						</fieldset>
					</div>
					
					<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
						<label>Register page styles  <i data-toggle="tooltip" data-placement="bottom" title="Choose register page styles." class="fas fa-info-circle"></i></label>
						<fieldset>
							<div class="radio">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/register-style-1.webp" alt="">
									<input type="radio" name="register-style" id="registerstyleone" value="registerstyleone" {if $themesetting.registerstyle=='registerstyleone' || $themesetting.id != '1'}checked{/if}>
									<span class="title">Register page style 1</span>
									<span class="checkmark"></span>
								</label>
							</div>

							<div class="radio">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/register-style-2.webp" alt="">
									<input type="radio" name="register-style" id="registerstyletwo" value="registerstyletwo" {if $themesetting.registerstyle=='registerstyletwo'}checked{/if}>
									<span class="title">Register page style 2</span>
									<span class="checkmark"></span>
								</label>
							</div>

							<div class="radio disabled" data-toggle="tooltip" data-placement="bottom" title="New styles will added soon">
								<label>
									<img src="../modules/addons/adminiTheme/assets/img/no-item.webp" alt="">
									<input type="radio" name="register-style" id="registerstyletree" value="registerstyletree" {if $themesetting.registerstyle=='registerstyletree'}checked{/if} disabled>
									<span class="title">Register page style 3</span>
									<span class="checkmark"></span>
								</label>
							</div>
						</fieldset>
					</div>
					
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group templates__form__control">
						<label for="cookiesbox">Cookies Consent Box  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Cookies Consent Box" class="fas fa-info-circle"></i></label>
						<fieldset name="cookiesbox" id="cookiesbox">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="cookiesbox" id="cookiesbox" value="activated" {if $themesetting.cookiesbox=='activated' || $themesetting.id != '1'}checked{/if}>
								i want to show the Cookies Consent Box
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					<div class="form-group">
					<label for="cookiesboxposition">Cookies Consent Box position <i data-toggle="tooltip" data-placement="bottom" title="Select the Cookies Consent Box position." class="fas fa-info-circle"></i></label>
						<select name="cookiesboxposition" id="cookiesboxposition" class="form-control input-sm">
							<option {if $themesetting.cookiesboxposition=='bottom-left-cookies'}selected{/if} value="bottom-left-cookies">bottom left</option>
							<option {if $themesetting.cookiesboxposition=='bottom-right-cookies'}selected{/if} value="bottom-right-cookies">bottom right</option>
							<option {if $themesetting.cookiesboxposition=='top-left-cookies'}selected{/if} value="top-left-cookies">top left</option>
							<option {if $themesetting.cookiesboxposition=='top-right-cookies'}selected{/if} value="top-right-cookies">top right</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="cookiesboxtext">Cookies Consent Box content <i data-toggle="tooltip" data-placement="bottom" title="Add the cookies consent box content ." class="fas fa-info-circle"></i></label>
						<textarea class="form-control" id="cookiesboxtext" name="cookiesboxtext" rows="6" cols="50" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings">{if $themesetting.cookiesboxtext == null}{else}{$themesetting.cookiesboxtext}{/if}</textarea>
					</div>
					
					<div class="form-group templates__form__control">
						<label for="headerlanguage">Language dropdown placements  <i data-toggle="tooltip" data-placement="bottom" title="These Fields Are About Displaying the language dropdown" class="fas fa-info-circle"></i></label>
						<fieldset style="margin-bottom:10px" name="headerlanguage" id="headerlanguage">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="headerlanguage" id="headerlanguage" value="activated" {if $themesetting.headerlanguage=='activated' || $themesetting.id != '1'}checked{/if}>
								Display the language dropdown in the header
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset style="margin-bottom:10px" name="footerlanguagelanguage" id="footerlanguagelanguage">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="footerlanguagelanguage" id="footerlanguagelanguage" value="activated" {if $themesetting.footerlanguagelanguage=='activated'}checked{/if}>
								Display the language dropdown in the footer
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset style="margin-bottom:10px" name="registerformlanguage" id="registerformlanguage">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="registerformlanguage" id="registerformlanguage" value="activated" {if $themesetting.registerformlanguage=='activated' || $themesetting.id != '1'}checked{/if}>
								Display the language dropdown in the register form
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						<fieldset name="loginformlanguage" id="loginformlanguage">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="loginformlanguage" id="loginformlanguage" value="activated" {if $themesetting.loginformlanguage=='activated' || $themesetting.id != '1'}checked{/if}>
								Display the language dropdown in the login form
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
						
					</div>
					
					
				</div>
			</div>
		</div>
		
		
		<div class="section">
			<h5 class="title">SEO settings</h5>			
			<div class="row">
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seostitename">Website Name <i data-toggle="tooltip" data-placement="bottom" title="A name that Google may use for your homepage search results. This will default to the WHMCS site title if left blank." class="fas fa-info-circle"></i></label>
						<input type="text" name="seostitename" id="seostitename" {if $themesetting.seositename == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seositename}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seoaltername">Alternate Website Name <i data-toggle="tooltip" data-placement="bottom" title="An alternate name for your site. This could be an acronym or shorter version of your website name." class="fas fa-info-circle"></i></label>
						<input type="text" name="seoaltername" id="seoaltername" {if $themesetting.seoalternatewebsitename == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seoalternatewebsitename}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seositedesc">Website description <i data-toggle="tooltip" data-placement="bottom" title="An alternate website description for your site." class="fas fa-info-circle"></i></label>
						<input type="text" name="seositedesc" id="seositedesc" {if $themesetting.seositedescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seositedescription}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seowtype">Website Type <i data-toggle="tooltip" data-placement="bottom" title="Select which department are your website belongs to." class="fas fa-info-circle"></i></label>
						<select name="seowtype" id="seowtype" class="form-control input-sm">
							<option {if $themesetting.seowebsitetype=='Organization'}selected{/if} value="Organization">Organization</option>
							<option {if $themesetting.seowebsitetype=='Personal website'}selected{/if} value="Personal website">Personal website</option>
							<option {if $themesetting.seowebsitetype=='Hosting services website'}selected{/if} value="Hosting services website">Hosting services website</option>
							<option {if $themesetting.seowebsitetype=='eCommerce website'}selected{/if} value="eCommerce website">eCommerce website</option>
							<option {if $themesetting.seowebsitetype=='Business website'}selected{/if} value="Business website">Business website</option>
							<option {if $themesetting.seowebsitetype=='Blog website'}selected{/if} value="Blog website">Blog website</option>
							<option {if $themesetting.seowebsitetype=='Portfolio website'}selected{/if} value="Portfolio website">Portfolio website</option>
							<option {if $themesetting.seowebsitetype=='Event website'}selected{/if} value="Event website">Event website</option>
							<option {if $themesetting.seowebsitetype=='Personal website'}selected{/if} value="Personal website">Personal website</option>
							<option {if $themesetting.seowebsitetype=='Membership website'}selected{/if} value="Membership website">Membership website</option>
							<option {if $themesetting.seowebsitetype=='Nonprofit website'}selected{/if} value="Nonprofit website">Nonprofit website</option>
							<option {if $themesetting.seowebsitetype=='Informational website'}selected{/if} value="Informational website">Informational website</option>
							<option {if $themesetting.seowebsitetype=='Online forum'}selected{/if} value="Online forum">Online forum</option>
							<option {if $themesetting.seowebsitetype=='website'}selected{/if} value="website">Not from the above</option>
						</select>
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seoorgname">Organization Name <i data-toggle="tooltip" data-placement="bottom" title="Add your Organization Name to this filed." class="fas fa-info-circle"></i></label>
						<input type="text" name="seoorgname" id="seoorgname" {if $themesetting.seoorganizationname == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seoorganizationname}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="eoorgmobile">Organization Phone Number <i data-toggle="tooltip" data-placement="bottom" title="Add your Organization Phone Number to this filed." class="fas fa-info-circle"></i></label>
						<input type="tel" name="eoorgmobile" id="eoorgmobile" {if $themesetting.seoorganizationphonenumber == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seoorganizationphonenumber}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seocontacttype">Contact Type <i data-toggle="tooltip" data-placement="bottom" title="Select Which Contact Type you are using in your website." class="fas fa-info-circle"></i></label>
						<select name="seocontacttype" id="seocontacttype" class="form-control input-sm">
							<option {if $themesetting.seowebsitetype=='Manually Enter Type'}selected{/if} value="Manually Enter Type">Manually Enter Type</option>
							<option {if $themesetting.seowebsitetype=='Billing Support'}selected{/if} value="Billing Support">Billing Support</option>
							<option {if $themesetting.seowebsitetype=='Customer Support'}selected{/if} value="Customer Support">Customer Support</option>
							<option {if $themesetting.seowebsitetype=='Sales'}selected{/if} value="Sales">Sales</option>
							<option {if $themesetting.seowebsitetype=='Reservations'}selected{/if} value="Reservations">Reservations</option>
							<option {if $themesetting.seowebsitetype=='Technical Support'}selected{/if} value="Technical Support">Technical Support</option>
						</select>
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seoopengraph">Default open Graph Image (fb & twitter), recommended (1200:630px or aspect ratio of 1.91:1) URL <i data-toggle="tooltip" data-placement="bottom" title="ADD Default open Graph Image URL for facebook and twitter links." class="fas fa-info-circle"></i></label>
						<input type="url" name="seoopengraph" id="seoopengraph" {if $themesetting.seoopengraph == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themesetting.seoopengraph}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seotwittername">Twitter username (ex:@coodiv) <i data-toggle="tooltip" data-placement="bottom" title="Add your twitter username with @." class="fas fa-info-circle"></i></label>
						<input type="text" name="seotwittername" id="seotwittername" {if $themesetting.seotwitterusername == null}value="" placeholder="@coodiv"{else}value="{$themesetting.seotwitterusername}"{/if} class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-12">
					<div class="form-group">
						<label for="seositefavicon">Website custom shortcut icon (1:1 and .ico) link <i data-toggle="tooltip" data-placement="bottom" title="Add your custom shortcut icon and sould be 1:1 and .ico link" class="fas fa-info-circle"></i></label>
						<input type="text" name="seositefavicon" id="seositefavicon" {if $themesetting.seositefavicon == null}value="" placeholder="Your custom shortcut icon link"{else}value="{$themesetting.seositefavicon}"{/if} class="form-control" >
					</div>
				</div>
			</div>			
		</div>
		
		<div class="section">
			<h5 class="title">Custom CSS code</h5>			
				<div class="form-group">
					<label for="customcsscode">Css code <i data-toggle="tooltip" data-placement="bottom" title="If you have custom css codes just add it to this field." class="fas fa-info-circle"></i></label>
					<textarea class="form-control" id="customcsscode" name="customcsscode" rows="6" cols="50" placeholder="Use this filed to add your custom css code to shufy theme">{if $themesetting.customcsscode == null}{else}{$themesetting.customcsscode}{/if}</textarea>
				</div>
		</div>
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
	<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applythemeoption" value="Save"/>
	<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=themeoption">Cancel</a>
</div>


<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resetthemeoption" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>Shufy theme Genaral settings</b> options</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Reset Shufy theme Genaral settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset Shufy theme Genaral settings completly.</p>
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
            <form id="exportForm" action="{$modurl}&action=exportthemeoption" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>Shufy theme Genaral settings</b> options</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export Shufy theme General settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
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
            <form id="exportForm" action="{$modurl}&action=importthemeoption" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>Shufy theme Genaral settings</b> options</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import Shufy theme General settings options, <b class="red">Please check that the file name is adminitheme_genaralsettings_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
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

			  



