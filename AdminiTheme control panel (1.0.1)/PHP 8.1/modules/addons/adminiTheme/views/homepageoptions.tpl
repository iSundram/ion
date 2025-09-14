<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">AdminiTheme Homepage settings</h5>
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
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=styleoptions">Color Schemes</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=typpoptions">Typography</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=layoutoptions">Layouts settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=sidebaroptions">Sidebar settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
		  <li class="nav-item active"><a class="nav-link">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	</div>
	<form id="applyhomepageoptions" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applyhomepageoptions" method="post">
		<div class="section">
			<h5 class="title">AdminiTheme Homepage settings</h5>
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Homepage layout</h6>
				<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
					<label>Homepage style <i data-toggle="tooltip" data-placement="bottom" title="Choose the homepage layout." class="fas fa-info-circle"></i></label>
					<fieldset>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/homepage-style-1.webp" alt="">
								<input type="radio" name="themehomepagesettingstyle" id="themehomepagestyleone" value="themehomepagestyleeone" {if $themehomepagesetting.themehomepagesettingstyle=='themehomepagestyleeone' || $themehomepagesetting.id != '1'}checked{/if}>
								<span class="title">Homepage style 1</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio disabled" data-toggle="tooltip" data-placement="bottom" title="New homepage layouts will added soon">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/no-item.webp" alt="">
								<input type="radio" name="themehomepagesettingstyle" id="themehomepagestyletwo" value="themehomepagestyletwo" {if $themehomepagesetting.themehomepagesettingstyle=='themehomepagestyletwo'}checked{/if} disabled>
								<span class="title">Homepage style 2</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio disabled" data-toggle="tooltip" data-placement="bottom" title="New homepage layouts will added soon">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/no-item.webp" alt="">
								<input type="radio" name="themehomepagesettingstyle" id="themehomepagestylethree" value="themehomepagestylethree" {if $themehomepagesetting.themehomepagesettingstyle=='themehomepagestylethree'}checked{/if} disabled>
								<span class="title">Homepage style 3</span>
								<span class="checkmark"></span>
							</label>
						</div>
						
						<div class="radio disabled" data-toggle="tooltip" data-placement="bottom" title="New homepage layouts will added soon">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/no-item.webp" alt="">
								<input type="radio" name="themehomepagesettingstyle" id="themehomepagestylefour" value="themehomepagestylefour" {if $themehomepagesetting.themehomepagesettingstyle=='themehomepagestylefour'}checked{/if} disabled>
								<span class="title">Homepage style 4</span>
								<span class="checkmark"></span>
							</label>
						</div>
					</fieldset>
				</div>
				<h6 class="sub-title">Default Homepage contents</h6>
					<div class="form-group templates__form__control">
						<label for="themehomepagesettingmarketconnectbannaers">Display Marketconnect Bannaers in Homepage  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Marketconnect Bannaers in Homepage" class="fas fa-info-circle"></i></label>
						<fieldset name="themehomepagesettingmarketconnectbannaers" id="themehomepagesettingmarketconnectbannaers">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themehomepagesettingmarketconnectbannaers" id="themehomepagesettingmarketconnectbannaers" value="activated" {if $themehomepagesetting.themehomepagesettingmarketconnectbannaers=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
								Display Marketconnect Bannaers
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group templates__form__control">
						<label for="themehomepagesettingmarketconnectbannaersnav">Display Marketconnect Bannaers nav in Homepage  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Marketconnect Bannaers nav in Homepage" class="fas fa-info-circle"></i></label>
						<fieldset name="themehomepagesettingmarketconnectbannaersnav" id="themehomepagesettingmarketconnectbannaersnav">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themehomepagesettingmarketconnectbannaersnav" id="themehomepagesettingmarketconnectbannaersnav" value="activated" {if $themehomepagesetting.themehomepagesettingmarketconnectbannaersnav=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
								Display Marketconnect Bannaers nav
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					<div class="form-group templates__form__control">
						<label for="themehomepagesettingannouncements">Display Announcements in the Homepage <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Announcements in Homepage" class="fas fa-info-circle"></i></label>
						<fieldset name="themehomepagesettingannouncements" id="themehomepagesettingannouncements">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themehomepagesettingannouncements" id="themehomepagesettingannouncements" value="activated" {if $themehomepagesetting.themehomepagesettingannouncements=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
								Display Announcements in homepage
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
			</div>
			
			
			<h5 class="title">Homepage sections</h5>
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Homepage featured services settings</h6>
				<div class="form-group templates__form__control">
					<label for="themehomepagesettinghomepagefeaturedsection">Display Homepage featured services section <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Homepage featured services section Homepage" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettinghomepagefeaturedsection" id="themehomepagesettinghomepagefeaturedsection">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettinghomepagefeaturedsection" id="themehomepagesettinghomepagefeaturedsection" value="activated" {if $themehomepagesetting.themehomepagesettinghomepagefeaturedsection=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display featured services section
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>	
				<div class="form-group">
					<label for="themehomepagesettinghomepagefeaturedsectiontitle">Homepage features services section title</label>
					<input type="text" name="themehomepagesettinghomepagefeaturedsectiontitle" id="themehomepagesettinghomepagefeaturedsectiontitle" {if $themehomepagesetting.themehomepagesettinghomepagefeaturedsectiontitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettinghomepagefeaturedsectiontitle}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettinghomepagefeaturedsectionsubtitle">Homepage features services section sub title</label>
					<input type="text" name="themehomepagesettinghomepagefeaturedsectionsubtitle" id="themehomepagesettinghomepagefeaturedsectionsubtitle" {if $themehomepagesetting.themehomepagesettinghomepagefeaturedsectionsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettinghomepagefeaturedsectionsubtitle}"{/if} class="form-control" >
				</div>
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingfeaturedfirst">Display Homepage first featured plan <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Homepage first featured plan" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingfeaturedfirst" id="themehomepagesettingfeaturedfirst">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingfeaturedfirst" id="themehomepagesettingfeaturedfirst" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturedfirst=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display Homepage fist featured plan
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingfeaturedssecond">Display Homepage second featured plan <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Homepage second featured plan" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingfeaturedssecond" id="themehomepagesettingfeaturedssecond">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingfeaturedssecond" id="themehomepagesettingfeaturedssecond" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturedssecond=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display Homepage second featured plan
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>	
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingfeaturedthird">Display Homepage domain searching the plans featured section <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display Homepage domain searching the plans featured section" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingfeaturedthird" id="themehomepagesettingfeaturedthird">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingfeaturedthird" id="themehomepagesettingfeaturedthird" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturedthird=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display Homepage domain searching
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>	
				
				<div class="row">
					<div class="col-md-6">
						<h6 class="sub-title">Homepage first featured plan content</h6>	
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontenttitle">Homepage first featured plan title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontenttitle" id="themehomepagesettingfeaturedfirstcontenttitle" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontenttitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontenttitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontenttitleicon">Homepage first featured plan sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontenttitleicon" id="themehomepagesettingfeaturedfirstcontenttitleicon" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontenttitleicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontenttitleicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentsubtitleone">Homepage first featured plan feature one <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentsubtitleone" id="themehomepagesettingfeaturedfirstcontentsubtitleone" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitleone == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitleone}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentsubtitleoneicon">Homepage first featured plan feature one pricing<i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentsubtitleoneicon" id="themehomepagesettingfeaturedfirstcontentsubtitleoneicon" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitleoneicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitleoneicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentsubtitletwo">Homepage first featured plan feature two <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentsubtitletwo" id="themehomepagesettingfeaturedfirstcontentsubtitletwo" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitletwo == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitletwo}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentsubtitletwoicon">Homepage first featured plan feature two pricing<i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentsubtitletwoicon" id="themehomepagesettingfeaturedfirstcontentsubtitletwoicon" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitletwoicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitletwoicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentsubtitlethree">Homepage first featured plan feature three <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentsubtitlethree" id="themehomepagesettingfeaturedfirstcontentsubtitlethree" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitlethree == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentsubtitlethree}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentprice">Homepage first featured plan feature three pricing<i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentprice" id="themehomepagesettingfeaturedsecondcontentprice" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentprice == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentprice}"{/if} class="form-control" >
						</div>
						
						
						
						
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentprice">Homepage first featured plan price <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentprice" id="themehomepagesettingfeaturedfirstcontentprice" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentprice == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentprice}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentpricebilling">Homepage first featured plan billing cycle <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentpricebilling" id="themehomepagesettingfeaturedfirstcontentpricebilling" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentpricebilling == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentpricebilling}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentdescription">Homepage first featured plan description <b>html NOT allowed</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<textarea class="form-control" id="themehomepagesettingfeaturedfirstcontentdescription" name="themehomepagesettingfeaturedfirstcontentdescription" rows="6" cols="50" placeholder="Use this filed to add your custom css code to shufy theme">{if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentdescription == null}{else}{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentdescription}{/if}</textarea>
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentinllustration">Homepage first featured plan illustration (1:1 ratio)<b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedfirstcontentinllustration" id="themehomepagesettingfeaturedfirstcontentinllustration" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentinllustration == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentinllustration}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentbutton">Homepage first featured plan button text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedfirstcontentbutton" id="themehomepagesettingfeaturedfirstcontentbutton" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentbutton == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentbutton}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedfirstcontentbuttonlink">Homepage first featured plan button link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedfirstcontentbuttonlink" id="themehomepagesettingfeaturedfirstcontentbuttonlink" {if $themehomepagesetting.themehomepagesettingfeaturedfirstcontentbuttonlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedfirstcontentbuttonlink}"{/if} class="form-control" >
						</div>
						
						
						

						<h6 style="margin-top: 45px" class="sub-title">Homepage domain search in featured plan section content</h6>	
						<div class="form-group">
							<label for="themehomepagesettingfeatureddomomainsectiontitle">Homepage domain search in featured plan section content title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeatureddomomainsectiontitle" id="themehomepagesettingfeatureddomomainsectiontitle" {if $themehomepagesetting.themehomepagesettingfeatureddomomainsectiontitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeatureddomomainsectiontitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeatureddomomainsectionsubtitle">Homepage domain search in featured plan section content sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeatureddomomainsectionsubtitle" id="themehomepagesettingfeatureddomomainsectionsubtitle" {if $themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeatureddomomainsectionsubtitletwo">Homepage domain search in featured plan section content sub title two <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeatureddomomainsectionsubtitletwo" id="themehomepagesettingfeatureddomomainsectionsubtitletwo" {if $themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitletwo == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitletwo}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeatureddomomainsectionsubtitlethree">Homepage domain search in featured plan section content sub title three <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeatureddomomainsectionsubtitlethree" id="themehomepagesettingfeatureddomomainsectionsubtitlethree" {if $themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitlethree == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeatureddomomainsectionsubtitlethree}"{/if} class="form-control" >
						</div>
					</div>
					
					
					<div class="col-md-6">	
						<h6 class="sub-title">Homepage second featured plan content</h6>	
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontenttitle">Homepage second featured plan title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontenttitle" id="themehomepagesettingfeaturedsecondcontenttitle" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontenttitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontenttitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontenttitleicon">Homepage second featured plan title icon <b>URL</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedsecondcontenttitleicon" id="themehomepagesettingfeaturedsecondcontenttitleicon" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontenttitleicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontenttitleicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentsubtitleone">Homepage second featured plan sub title one <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentsubtitleone" id="themehomepagesettingfeaturedsecondcontentsubtitleone" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitleone == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitleone}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentsubtitleoneicon">Homepage second featured plan sub title icon <b>URL</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedsecondcontentsubtitleoneicon" id="themehomepagesettingfeaturedsecondcontentsubtitleoneicon" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitleoneicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitleoneicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentsubtitletwo">Homepage second featured plan sub title two <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentsubtitletwo" id="themehomepagesettingfeaturedsecondcontentsubtitletwo" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitletwo == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitletwo}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentsubtitletwoicon">Homepage second featured plan sub title two <b>URL</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedsecondcontentsubtitletwoicon" id="themehomepagesettingfeaturedsecondcontentsubtitletwoicon" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitletwoicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitletwoicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentsubtitlethree">Homepage second featured plan feature title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentsubtitlethree" id="themehomepagesettingfeaturedsecondcontentsubtitlethree" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitlethree == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentsubtitlethree}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentinllustration">Homepage second featured plan feature title price <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentinllustration" id="themehomepagesettingfeaturedsecondcontentinllustration" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentinllustration == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentinllustration}"{/if} class="form-control" >
						</div>
						
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentdescription">Homepage second featured pricing <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentdescription" id="themehomepagesettingfeaturedsecondcontentdescription" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentdescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentdescription}"{/if} class="form-control" >

						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentpricebilling">Homepage second featured plan billing cycle <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentpricebilling" id="themehomepagesettingfeaturedsecondcontentpricebilling" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentpricebilling == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentpricebilling}"{/if} class="form-control" >
						</div>

						
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentbutton">Homepage second featured plan button text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturedsecondcontentbutton" id="themehomepagesettingfeaturedsecondcontentbutton" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentbutton == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentbutton}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturedsecondcontentbuttonlink">Homepage second featured plan button link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturedsecondcontentbuttonlink" id="themehomepagesettingfeaturedsecondcontentbuttonlink" {if $themehomepagesetting.themehomepagesettingfeaturedsecondcontentbuttonlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturedsecondcontentbuttonlink}"{/if} class="form-control" >
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Homepage featured plans settings</h6>
				<div class="row">
					<div class="col-md-4 col-12">
		
						<div class="form-group templates__form__control">
							<label for="themehomepagesettingfeaturescolorsplansfirst">Display Homepage first featured plan <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
							<fieldset name="themehomepagesettingfeaturescolorsplansfirst">
								<div class="radio">
								<label class="template__label">
									<input type="checkbox" name="themehomepagesettingfeaturescolorsplansfirst" id="themehomepagesettingfeaturescolorsplansfirst" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirst=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
									Display Homepage second featured plan
									<span class="checkmark"><i class="fal fa-check"></i></span>
								</label>
								</div>
							</fieldset>
						</div>
						
				
						
						<div class="first-featured-plan-collpassing">
						<div class="row">
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbg">plans background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbg" name="themehomepagesettingfeaturescolorsplansfirstbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbg == null}value="#eaf9fd"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbgdark">plans background <b>dark</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbgdark" name="themehomepagesettingfeaturescolorsplansfirstbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbgdark == null}value="#000"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtnbg">btn background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtnbg" name="themehomepagesettingfeaturescolorsplansfirstbtnbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbg == null}value="#1bb3f7"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtncolor">plans btn color <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtncolor" name="themehomepagesettingfeaturescolorsplansfirstbtncolor" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtncolor == null}value="#fff"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtncolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtnhover">btn hover background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtnhover" name="themehomepagesettingfeaturescolorsplansfirstbtnhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnhover == null}value="#14a6e7"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtnbgdark">btn background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtnbgdark" name="themehomepagesettingfeaturescolorsplansfirstbtnbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbgdark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtncolordark">plans btn color <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtncolordark" name="themehomepagesettingfeaturescolorsplansfirstbtncolordark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtncolordark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtncolordark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtnbgdarkhover">btn hover background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansfirstbtnbgdarkhover" name="themehomepagesettingfeaturescolorsplansfirstbtnbgdarkhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbgdarkhover == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnbgdarkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						</div>
						
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirsticon">Plan icon class name, use <a target="_blank" href="https://fontawesome.com/v5/search">fontawesome</a> <b>Only class name</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirsticon" id="themehomepagesettingfeaturescolorsplansfirsticon" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirsticon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirsticon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirsttitle">Plan title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirsttitle" id="themehomepagesettingfeaturescolorsplansfirsttitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirsttitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirsttitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstsubtitle">Plan sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirstsubtitle" id="themehomepagesettingfeaturescolorsplansfirstsubtitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstsubtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstdescription">Plan description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<textarea class="form-control" id="themehomepagesettingfeaturescolorsplansfirstdescription" name="themehomepagesettingfeaturescolorsplansfirstdescription" rows="6" cols="50" placeholder="Use this filed to add your custom css code to shufy theme">{if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstdescription == null}{else}{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstdescription}{/if}</textarea>
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstprice">Plan price <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirstprice" id="themehomepagesettingfeaturescolorsplansfirstprice" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstprice == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstprice}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbilling">Plan Billing cycle <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirstbilling" id="themehomepagesettingfeaturescolorsplansfirstbilling" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbilling == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbilling}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtntext">Plan btn text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansfirstbtntext" id="themehomepagesettingfeaturescolorsplansfirstbtntext" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtntext == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtntext}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansfirstbtnlink">Plan btn link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturescolorsplansfirstbtnlink" id="themehomepagesettingfeaturescolorsplansfirstbtnlink" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansfirstbtnlink}"{/if} class="form-control" >
						</div>
						</div>
					</div>
					
					<div class="col-md-4 col-12">
						<div class="form-group templates__form__control">
							<label for="themehomepagesettingfeaturescolorsplanssecond">Display Homepage second featured plan <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
							<fieldset name="themehomepagesettingfeaturescolorsplanssecond" id="themehomepagesettingfeaturescolorsplanssecond">
								<div class="radio">
								<label class="template__label">
									<input type="checkbox" name="themehomepagesettingfeaturescolorsplanssecond" id="themehomepagesettingfeaturescolorsplanssecond" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecond=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
									Display Homepage second featured plan
									<span class="checkmark"><i class="fal fa-check"></i></span>
								</label>
								</div>
							</fieldset>
						</div>
						<div class="first-featured-plan-collpassing">
						<div class="row">
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbg">plans background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbg" name="themehomepagesettingfeaturescolorsplanssecondbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbg == null}value="#e9fde9"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbgdark">plans background <b>dark</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbgdark" name="themehomepagesettingfeaturescolorsplanssecondbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbgdark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtnbg">btn background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtnbg" name="themehomepagesettingfeaturescolorsplanssecondbtnbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbg == null}value="#6be577"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtncolor">plans btn color <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtncolor" name="themehomepagesettingfeaturescolorsplanssecondbtncolor" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtncolor == null}value="#fff"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtncolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtnhover">btn hover background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtnhover" name="themehomepagesettingfeaturescolorsplanssecondbtnhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnhover == null}value="#6be577"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtnbgdark">btn background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtnbgdark" name="themehomepagesettingfeaturescolorsplanssecondbtnbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbgdark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtncolordark">plans btn color <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtncolordark" name="themehomepagesettingfeaturescolorsplanssecondbtncolordark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtncolordark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtncolordark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtnbgdarkhover">btn hover background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplanssecondbtnbgdarkhover" name="themehomepagesettingfeaturescolorsplanssecondbtnbgdarkhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbgdarkhover == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnbgdarkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						</div>
						
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondicon">Plan icon <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondicon" id="themehomepagesettingfeaturescolorsplanssecondicon" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondtitle">Plan title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondtitle" id="themehomepagesettingfeaturescolorsplanssecondtitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondsubtitle">Plan sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondsubtitle" id="themehomepagesettingfeaturescolorsplanssecondsubtitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondsubtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansseconddescription">Plan description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<textarea class="form-control" id="themehomepagesettingfeaturescolorsplansseconddescription" name="themehomepagesettingfeaturescolorsplansseconddescription" rows="6" cols="50" placeholder="Use this filed to add your custom css code to shufy theme">{if $themehomepagesetting.themehomepagesettingfeaturescolorsplansseconddescription == null}{else}{$themehomepagesetting.themehomepagesettingfeaturescolorsplansseconddescription}{/if}</textarea>
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondprice">Plan price <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondprice" id="themehomepagesettingfeaturescolorsplanssecondprice" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondprice == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondprice}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbilling">Plan Billing cycle <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondbilling" id="themehomepagesettingfeaturescolorsplanssecondbilling" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbilling == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbilling}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtntext">Plan btn text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplanssecondbtntext" id="themehomepagesettingfeaturescolorsplanssecondbtntext" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtntext == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtntext}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplanssecondbtnlink">Plan btn link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturescolorsplanssecondbtnlink" id="themehomepagesettingfeaturescolorsplanssecondbtnlink" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplanssecondbtnlink}"{/if} class="form-control" >
						</div>
						</div>
					</div>
					
					<div class="col-md-4 col-12">
						<div class="form-group templates__form__control">
							<label for="themehomepagesettingfeaturescolorsplansthird">Display Homepage third featured plan <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
							<fieldset name="themehomepagesettingfeaturescolorsplansthird" id="themehomepagesettingfeaturescolorsplansthird">
								<div class="radio">
								<label class="template__label">
									<input type="checkbox" name="themehomepagesettingfeaturescolorsplansthird" id="themehomepagesettingfeaturescolorsplansthird" value="activated" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthird=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
									Display Homepage third featured plan
									<span class="checkmark"><i class="fal fa-check"></i></span>
								</label>
								</div>
							</fieldset>
						</div>
						<div class="first-featured-plan-collpassing">
						<div class="row">
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbg">plan background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbg" name="themehomepagesettingfeaturescolorsplansthirdbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbg == null}value="#f7f0fd"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbgdark">plan background <b>dark</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbgdark" name="themehomepagesettingfeaturescolorsplansthirdbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbgdark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtnbg">btn background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtnbg" name="themehomepagesettingfeaturescolorsplansthirdbtnbg" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbg == null}value="#9986f4"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbg}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtncolor">plan btn color <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtncolor" name="themehomepagesettingfeaturescolorsplansthirdbtncolor" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtncolor == null}value="#fff"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtncolor}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtnhover">btn hover background <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtnhover" name="themehomepagesettingfeaturescolorsplansthirdbtnhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnhover == null}value="#806aed"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtnbgdark">btn background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtnbgdark" name="themehomepagesettingfeaturescolorsplansthirdbtnbgdark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbgdark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbgdark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtncolordark">plan btn color <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtncolordark" name="themehomepagesettingfeaturescolorsplansthirdbtncolordark" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtncolordark == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtncolordark}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						<div class="col-md-6 col-12">
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtnbgdarkhover">btn hover background <b>dark</b><i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input class="form-control color-picker" id="themehomepagesettingfeaturescolorsplansthirdbtnbgdarkhover" name="themehomepagesettingfeaturescolorsplansthirdbtnbgdarkhover" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbgdarkhover == null}value="#333"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnbgdarkhover}"{/if} data-jscolor="{
								  preset: 'dark',
								  closeButton: true,
								  closeText: 'OK'}">
						</div>
						</div>
						</div>
						
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdicon">Plan icon <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdicon" id="themehomepagesettingfeaturescolorsplansthirdicon" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdicon}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdtitle">Plan title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdtitle" id="themehomepagesettingfeaturescolorsplansthirdtitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdsubtitle">Plan sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdsubtitle" id="themehomepagesettingfeaturescolorsplansthirdsubtitle" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdsubtitle}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirddescription">Plan description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<textarea class="form-control" id="themehomepagesettingfeaturescolorsplansthirddescription" name="themehomepagesettingfeaturescolorsplansthirddescription" rows="6" cols="50" placeholder="Use this filed to add your custom css code to shufy theme">{if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirddescription == null}{else}{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirddescription}{/if}</textarea>
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdprice">Plan price <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdprice" id="themehomepagesettingfeaturescolorsplansthirdprice" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdprice == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdprice}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbilling">Plan Billing cycle <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdbilling" id="themehomepagesettingfeaturescolorsplansthirdbilling" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbilling == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbilling}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtntext">Plan btn text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="text" name="themehomepagesettingfeaturescolorsplansthirdbtntext" id="themehomepagesettingfeaturescolorsplansthirdbtntext" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtntext == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtntext}"{/if} class="form-control" >
						</div>
						<div class="form-group">
							<label for="themehomepagesettingfeaturescolorsplansthirdbtnlink">Plan btn link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
							<input type="url" name="themehomepagesettingfeaturescolorsplansthirdbtnlink" id="themehomepagesettingfeaturescolorsplansthirdbtnlink" {if $themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingfeaturescolorsplansthirdbtnlink}"{/if} class="form-control" >
						</div>
						</div>
					</div>
					
					
				</div>
				
			</div>
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Homepage features boxes</h6>
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingservicesfeatures">Display Homepage features boxes section <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingservicesfeatures" id="themehomepagesettingservicesfeatures">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingservicesfeatures" id="themehomepagesettingservicesfeatures" value="activated" {if $themehomepagesetting.themehomepagesettingservicesfeatures=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display Homepage features boxes section
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="homepage__features__boxes__collpassing">
					<div class="form-group">
						<label for="themehomepagesettingservicesfeaturestagline">Homepage features boxes section tagline <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
						<input type="text" name="themehomepagesettingservicesfeaturestagline" id="themehomepagesettingservicesfeaturestagline" {if $themehomepagesetting.themehomepagesettingservicesfeaturestagline == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturestagline}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="themehomepagesettingservicesfeaturestitle">Homepage features boxes section title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
						<input type="text" name="themehomepagesettingservicesfeaturestitle" id="themehomepagesettingservicesfeaturestitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturestitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturestitle}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="themehomepagesettingservicesfeaturessubtitle">Homepage features boxes section sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
						<input type="text" name="themehomepagesettingservicesfeaturessubtitle" id="themehomepagesettingservicesfeaturessubtitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturessubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturessubtitle}"{/if} class="form-control" >
					</div>
					
					<div class="row">
						<div class="col-md-3 col-12">
							<div class="form-group templates__form__control">
								<label for="themehomepagesettingservicesfeaturessecond">Display first Homepage features box <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
								<fieldset name="themehomepagesettingservicesfeaturessecond" id="themehomepagesettingservicesfeaturessecond">
									<div class="radio">
									<label class="template__label">
										<input type="checkbox" name="themehomepagesettingservicesfeaturessecond" id="themehomepagesettingservicesfeaturessecond" value="activated" {if $themehomepagesetting.themehomepagesettingservicesfeaturessecond=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
										Display first Homepage features box
										<span class="checkmark"><i class="fal fa-check"></i></span>
									</label>
									</div>
								</fieldset>
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturessecondicon">first Homepage features box illustration (1:1 ratio) <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="url" name="themehomepagesettingservicesfeaturessecondicon" id="themehomepagesettingservicesfeaturessecondicon" {if $themehomepagesetting.themehomepagesettingservicesfeaturessecondicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturessecondicon}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturessecondtitle">first Homepage features box title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturessecondtitle" id="themehomepagesettingservicesfeaturessecondtitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturessecondtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturessecondtitle}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesseconddescription">first Homepage features box description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesseconddescription" id="themehomepagesettingservicesfeaturesseconddescription" {if $themehomepagesetting.themehomepagesettingservicesfeaturesseconddescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesseconddescription}"{/if} class="form-control" >
							</div>
						</div>
						
						<div class="col-md-3 col-12">
							<div class="form-group templates__form__control">
								<label for="themehomepagesettingservicesfeaturesthird">Display Second Homepage features box <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
								<fieldset name="themehomepagesettingservicesfeaturesthird" id="themehomepagesettingservicesfeaturesthird">
									<div class="radio">
									<label class="template__label">
										<input type="checkbox" name="themehomepagesettingservicesfeaturesthird" id="themehomepagesettingservicesfeaturesthird" value="activated" {if $themehomepagesetting.themehomepagesettingservicesfeaturesthird=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
										Display Second Homepage features box
										<span class="checkmark"><i class="fal fa-check"></i></span>
									</label>
									</div>
								</fieldset>
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesthirdicon">Second Homepage features box illustration (1:1 ratio) <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="url" name="themehomepagesettingservicesfeaturesthirdicon" id="themehomepagesettingservicesfeaturesthirdicon" {if $themehomepagesetting.themehomepagesettingservicesfeaturesthirdicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesthirdicon}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesthirdtitle">Second Homepage features box title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesthirdtitle" id="themehomepagesettingservicesfeaturesthirdtitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturesthirdtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesthirdtitle}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesthirddescription">Second Homepage features box description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesthirddescription" id="themehomepagesettingservicesfeaturesthirddescription" {if $themehomepagesetting.themehomepagesettingservicesfeaturesthirddescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesthirddescription}"{/if} class="form-control" >
							</div>
						</div>
						
						<div class="col-md-3 col-12">
							<div class="form-group templates__form__control">
								<label for="themehomepagesettingservicesfeaturesfourth">Display Third Homepage features box <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
								<fieldset name="themehomepagesettingservicesfeaturesfourth" id="themehomepagesettingservicesfeaturesfourth">
									<div class="radio">
									<label class="template__label">
										<input type="checkbox" name="themehomepagesettingservicesfeaturesfourth" id="themehomepagesettingservicesfeaturesfourth" value="activated" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfourth=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
										Display Third Homepage features box
										<span class="checkmark"><i class="fal fa-check"></i></span>
									</label>
									</div>
								</fieldset>
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfourthicon">Third Homepage features box illustration (1:1 ratio) <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="url" name="themehomepagesettingservicesfeaturesfourthicon" id="themehomepagesettingservicesfeaturesfourthicon" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfourthicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfourthicon}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfourthtitle">Third Homepage features box title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesfourthtitle" id="themehomepagesettingservicesfeaturesfourthtitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfourthtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfourthtitle}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfourthdescription">Third Homepage features box description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesfourthdescription" id="themehomepagesettingservicesfeaturesfourthdescription" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfourthdescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfourthdescription}"{/if} class="form-control" >
							</div>
						</div>
						
						<div class="col-md-3 col-12">
							<div class="form-group templates__form__control">
								<label for="themehomepagesettingservicesfeaturesfivth">Display Fourth Homepage features boxe <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
								<fieldset name="themehomepagesettingservicesfeaturesfivth" id="themehomepagesettingservicesfeaturesfivth">
									<div class="radio">
									<label class="template__label">
										<input type="checkbox" name="themehomepagesettingservicesfeaturesfivth" id="themehomepagesettingservicesfeaturesfivth" value="activated" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfivth=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
										Display Fourth Homepage features box
										<span class="checkmark"><i class="fal fa-check"></i></span>
									</label>
									</div>
								</fieldset>
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfivthicon">Fourth Homepage features box illustration (1:1 ratio) <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="url" name="themehomepagesettingservicesfeaturesfivthicon" id="themehomepagesettingservicesfeaturesfivthicon" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfivthicon == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfivthicon}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfivthtitle">Fourth Homepage features box title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesfivthtitle" id="themehomepagesettingservicesfeaturesfivthtitle" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfivthtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfivthtitle}"{/if} class="form-control" >
							</div>
							<div class="form-group">
								<label for="themehomepagesettingservicesfeaturesfivthdescription">Fourth Homepage features box description <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
								<input type="text" name="themehomepagesettingservicesfeaturesfivthdescription" id="themehomepagesettingservicesfeaturesfivthdescription" {if $themehomepagesetting.themehomepagesettingservicesfeaturesfivthdescription == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingservicesfeaturesfivthdescription}"{/if} class="form-control" >
							</div>
						</div>
						
					</div>
				</div>
		</div>
		
		<div class="form-group-wrapper-shadow">
			<h6 class="sub-title">Homepage Saving banner & subscribing</h6>
			<div class="row">
			<div class="col-md-6 col-12">
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingsavingbanner">Display Homepage Saving banner <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingsavingbanner" id="themehomepagesettingsavingbanner">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingsavingbanner" id="themehomepagesettingsavingbanner" value="activated" {if $themehomepagesetting.themehomepagesettingsavingbanner=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display Saving banner
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsavingbannertitle">Homepage Saving banner title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsavingbannertitle" id="themehomepagesettingsavingbannertitle" {if $themehomepagesetting.themehomepagesettingsavingbannertitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsavingbannertitle}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsavingbannersubtitle">Homepage Saving banner sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsavingbannersubtitle" id="themehomepagesettingsavingbannersubtitle" {if $themehomepagesetting.themehomepagesettingsavingbannersubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsavingbannersubtitle}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsavingbannerbtntext">Homepage Saving banner button text <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsavingbannerbtntext" id="themehomepagesettingsavingbannerbtntext" {if $themehomepagesetting.themehomepagesettingsavingbannerbtntext == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsavingbannerbtntext}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsavingbannerbtnlink">Homepage Saving banner button link <b>URL</b> <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="url" name="themehomepagesettingsavingbannerbtnlink" id="themehomepagesettingsavingbannerbtnlink" {if $themehomepagesetting.themehomepagesettingsavingbannerbtnlink == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsavingbannerbtnlink}"{/if} class="form-control" >
				</div>
			</div>
			
			<div class="col-md-6 col-12">
				<div class="form-group templates__form__control">
					<label for="themehomepagesettingsubscribingsection">Display Homepage subscribing section <i data-toggle="tooltip" data-placement="bottom" title="Use the site title and tagline as a text logo if no image is selected" class="fas fa-info-circle"></i></label>
					<fieldset name="themehomepagesettingsubscribingsection" id="themehomepagesettingsubscribingsection">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themehomepagesettingsubscribingsection" id="themehomepagesettingsubscribingsection" value="activated" {if $themehomepagesetting.themehomepagesettingsubscribingsection=='activated' || $themehomepagesetting.id != '1'}checked{/if}>
							Display subscribing section
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectiontitle">Homepage subscribing section title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectiontitle" id="themehomepagesettingsubscribingsectiontitle" {if $themehomepagesetting.themehomepagesettingsubscribingsectiontitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectiontitle}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectionsubtitle">Homepage subscribing section sub title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectionsubtitle" id="themehomepagesettingsubscribingsectionsubtitle" {if $themehomepagesetting.themehomepagesettingsubscribingsectionsubtitle == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectionsubtitle}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectionmailchimpusername">Subscribe button title <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectionmailchimpusername" id="themehomepagesettingsubscribingsectionmailchimpusername" {if $themehomepagesetting.themehomepagesettingsubscribingsectionmailchimpusername == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectionmailchimpusername}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectionmailchimapi">MailChimp API <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectionmailchimapi" id="themehomepagesettingsubscribingsectionmailchimapi" {if $themehomepagesetting.themehomepagesettingsubscribingsectionmailchimapi == null}value="" placeholder="Entree Mailchimp API key"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectionmailchimapi}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectionmailchimcode">MailChimp unique audience ID <i data-toggle="tooltip" data-placement="bottom" title="Learn more about customizing the home page content in our documentation, admin panel --> homepage setting section" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectionmailchimcode" id="themehomepagesettingsubscribingsectionmailchimcode" {if $themehomepagesetting.themehomepagesettingsubscribingsectionmailchimcode == null}value="" placeholder="Entree MailChimp unique audience ID"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectionmailchimcode}"{/if} class="form-control" >
				</div>
				<div class="form-group">
					<label for="themehomepagesettingsubscribingsectionmailchimoption">Mailchimp account data center <i data-toggle="tooltip" data-placement="bottom" title="you will find the data center in you api key, <your-api-key>-usX" class="fas fa-info-circle"></i></label>
					<input type="text" name="themehomepagesettingsubscribingsectionmailchimoption" id="themehomepagesettingsubscribingsectionmailchimoption" {if $themehomepagesetting.themehomepagesettingsubscribingsectionmailchimoption == null}value="" placeholder="for example: us11"{else}value="{$themehomepagesetting.themehomepagesettingsubscribingsectionmailchimoption}"{/if} class="form-control" >
				</div>
			</div>
			
			
			</div>
			
			
		</div>
		
		
		
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applyhomepageoptions" value="Save & apply homepage settings"/>
<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=homepageoptions">Cancel</a>
</div>


<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resethomepageptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>AdminiTheme Homepage</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to AdminiTheme Homepage settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset AdminiTheme Homepage settings completly.</p>
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
            <form id="exportForm" action="{$modurl}&action=exporthomepageptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>AdminiTheme Homepage</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export AdminiTheme Homepage settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
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
            <form id="exportForm" action="{$modurl}&action=importhomepageptions" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>AdminiTheme Homepage</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import AdminiTheme Homepage settings, <b class="red">Please check that the file name is adminitheme_homepage_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
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
