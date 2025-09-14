<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">AdminiTheme Footer settings</h5>
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
		  <li class="nav-item active"><a class="nav-link">Footer settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	</div>
	<form id="applyfooteroptions" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applyfooteroptions" method="post">
		<div class="section">
			<h5 class="title">AdminiTheme Footer settings</h5>
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Footer layout</h6>
				<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
					<label>Footer style <i data-toggle="tooltip" data-placement="bottom" title="Choose from the below the footer style." class="fas fa-info-circle"></i></label>
					<fieldset>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-1.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstyleone" value="footerlayoutstyleone" {if $themefootersetting.themefootersettingstyle=='footerlayoutstyleone' || $themefootersetting.id != '1'}checked{/if}>
								<span class="title">Footer style 1</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-2.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstyletwo" value="footerlayoutstyletwo" {if $themefootersetting.themefootersettingstyle=='footerlayoutstyletwo'}checked{/if}>
								<span class="title">Footer style 2</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio" data-toggle="tooltip">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-6.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstylethree" value="footerlayoutstylethree" {if $themefootersetting.themefootersettingstyle=='footerlayoutstylethree'}checked{/if}>
								<span class="title">Footer style 3</span>
								<span class="checkmark"></span>
							</label>
						</div>
						
						<div class="radio" data-toggle="tooltip">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-4.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstylefour" value="footerlayoutstylefour" {if $themefootersetting.themefootersettingstyle=='footerlayoutstylefour'}checked{/if}>
								<span class="title">Footer style 4</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio" data-toggle="tooltip">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-5.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstylefive" value="footerlayoutstylefive" {if $themefootersetting.themefootersettingstyle=='footerlayoutstylefive'}checked{/if}>
								<span class="title">Footer style 5</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio" data-toggle="tooltip">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-7.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstylesix" value="footerlayoutstylesix" {if $themefootersetting.themefootersettingstyle=='footerlayoutstylesix'}checked{/if}>
								<span class="title">Footer style 6</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio" data-toggle="tooltip">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/footer-style-3.webp" alt="">
								<input type="radio" name="themefootersettingstyle" id="footerlayoutstylesaven" value="footerlayoutstylesaven" {if $themefootersetting.themefootersettingstyle=='footerlayoutstylesaven'}checked{/if}>
								<span class="title">Footer style 7</span>
								<span class="checkmark"></span>
							</label>
						</div>
					</fieldset>
				</div>
				<h6 class="sub-title">Footer settings</h6>
					<div class="form-group templates__form__control">
						<label for="themefootersettingpoworedbycoodiv">Display powered by coodiv in the copyright section <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display powered by coodiv in the copyright section" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettingpoworedbycoodiv" id="themefootersettingpoworedbycoodiv">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettingpoworedbycoodiv" id="themefootersettingpoworedbycoodiv" value="activated" {if $themefootersetting.themefootersettingpoworedbycoodiv=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Yes, i want to display powered by coodiv in the footer
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					
					<div class="form-group templates__form__control">
						<label for="themefootersettinglogo">Display the website logo in footer  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display the site logo in the footer" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettinglogo" id="themefootersettinglogo">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettinglogo" id="themefootersettinglogo" value="activated" {if $themefootersetting.themefootersettinglogo=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Display the website logo in footer
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group">
						<label for="themefootersettingdescription">footer site description <b>HTML is NOT allowed</b><i data-toggle="tooltip" data-placement="bottom" title="Add your website description that you want to display in the footer" class="fas fa-info-circle"></i></label>
						<textarea class="form-control" id="themefootersettingdescription" name="themefootersettingdescription" rows="6" cols="50" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings">{if $themefootersetting.themefootersettingdescription == null}{else}{$themefootersetting.themefootersettingdescription}{/if}</textarea>
					</div>
					<div class="form-group templates__form__control">
						<label for="themefootersettingsocialicons">Display footer social icons  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display the social icons in the footer (add you social Networks links from WHMCS admin panel > System Settings > General Settings > Social tab" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettingsocialicons" id="themefootersettingsocialicons">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettingsocialicons" id="themefootersettingsocialicons" value="activated" {if $themefootersetting.themefootersettingsocialicons=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Active footer social icons
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group templates__form__control">
						<label for="themefootersettingadress">Display footer company adresse <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display footer company address" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettingadress" id="themefootersettingadress">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettingadress" id="themefootersettingadress" value="activated" {if $themefootersetting.themefootersettingadress=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Display footer company adresse
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group templates__form__control">
						<label for="themefootersettingmobile">Display footer company mobile phone <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display the company mobile phone in the footer" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettingmobile" id="themefootersettingmobile">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettingmobile" id="themefootersettingmobile" value="activated" {if $themefootersetting.themefootersettingmobile=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Display the phone number
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group templates__form__control">
						<label for="themefootersettingemail">Display footer company email <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to display the company email in the footer" class="fas fa-info-circle"></i></label>
						<fieldset name="themefootersettingemail" id="themefootersettingemail">
							<div class="radio">
							<label class="template__label">
								<input type="checkbox" name="themefootersettingemail" id="themefootersettingemail" value="activated" {if $themefootersetting.themefootersettingemail=='activated' || $themefootersetting.id != '1'}checked{/if}>
								Display the email
								<span class="checkmark"><i class="fal fa-check"></i></span>
							</label>
							</div>
						</fieldset>
					</div>
					<div class="form-group">
						<label for="themefootersettingcustommobile">Custom Footer support mobile number</label>
						<input type="text" name="themefootersettingcustommobile" id="themefootersettingcustommobile" {if $themefootersetting.themefootersettingcustommobile == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themefootersetting.themefootersettingcustommobile}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="themefootersettingcustomemail">Custom Footer support email</label>
						<input type="email" name="themefootersettingcustomemail" id="themefootersettingcustomemail" {if $themefootersetting.themefootersettingcustomemail == null}value="" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings"{else}value="{$themefootersetting.themefootersettingcustomemail}"{/if} class="form-control" >
					</div>
					<div class="form-group">
						<label for="themefootersettingcustomcopyrighttext">Your company adress <b>HTML is NOT allowed</b> </label>
						<textarea class="form-control" id="themefootersettingcustomcopyrighttext" name="themefootersettingcustomcopyrighttext" rows="6" cols="50" placeholder="Leave this filed empty if you'd like to use the default Coodiv Shufy theme settings">{if $themefootersetting.themefootersettingcustomcopyrighttext == null}{else}{$themefootersetting.themefootersettingcustomcopyrighttext}{/if}</textarea>
					</div>
			</div>
		</div>
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applyfooteroptions" value="Save & apply footer settings"/>
<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=footeroptions">Cancel</a>
</div>

<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resetfooteroptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>AdminiTheme Footer</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to AdminiTheme Footer settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset AdminiTheme Footer settings completly.</p>
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
            <form id="exportForm" action="{$modurl}&action=exportfooteroptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>AdminiTheme Footer</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export AdminiTheme Footer settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
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
            <form id="exportForm" action="{$modurl}&action=importfooteroptions" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>AdminiTheme Footer</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import AdminiTheme Footer settings, <b class="red">Please check that the file name is adminitheme_footer_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
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
			  
