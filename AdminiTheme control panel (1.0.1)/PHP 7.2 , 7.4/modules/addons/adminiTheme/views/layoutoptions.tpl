<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">AdminiTheme Layouts settings</h5>
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
		  <li class="nav-item active"><a class="nav-link">Layouts settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=sidebaroptions">Sidebar settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	</div>
	<form id="applylayoutoptions" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applylayoutoptions" method="post">
		<div class="section">
			<h5 class="title">Layouts settings</h5>
			
			
			
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar</h6>
				
				<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
					<label>Sidebar Layouts <i data-toggle="tooltip" data-placement="bottom" title="Choose the sidebar layout style." class="fas fa-info-circle"></i></label>
					<fieldset>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-layout-1.webp" alt="">
								<input type="radio" name="layoutsettingssidebarlayout" id="sidebarlayoutstyleone" value="sidebarlayoutstyleone" {if $themelayoutsetting.layoutsettingssidebarlayout=='sidebarlayoutstyleone' || $themelayoutsetting.id != '1'}checked{/if}>
								<span class="title">Default Sidebar</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-layout-2.webp" alt="">
								<input type="radio" name="layoutsettingssidebarlayout" id="sidebarlayoutstyletwo" value="sidebarlayoutstyletwo" {if $themelayoutsetting.layoutsettingssidebarlayout=='sidebarlayoutstyletwo'}checked{/if}>
								<span class="title">Big icons Sidebar</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-layout-3.webp" alt="">
								<input type="radio" name="layoutsettingssidebarlayout" id="sidebarlayoutstylethree" value="sidebarlayoutstylethree" {if $themelayoutsetting.layoutsettingssidebarlayout=='sidebarlayoutstylethree'}checked{/if}>
								<span class="title">Separated Default Sidebar</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-layout-4.webp" alt="">
								<input type="radio" name="layoutsettingssidebarlayout" id="sidebarlayoutstylefour" value="sidebarlayoutstylefour" {if $themelayoutsetting.layoutsettingssidebarlayout=='sidebarlayoutstylefour'}checked{/if}>
								<span class="title">Separated Big icons Sidebar</span>
								<span class="checkmark"></span>
							</label>
						</div>
					</fieldset>
				</div>
				
				<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
					<label>Sidebar position <i data-toggle="tooltip" data-placement="bottom" title="Choose the sidebar position that you would like to apply. Learn more about types in our documentation." class="fas fa-info-circle"></i></label>
					<fieldset>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-logo-sidebar.webp" alt="">
								<input type="radio" name="layoutsettingssidebarposition" id="sidebarpositionleft" value="sidebarpositionleft" {if $themelayoutsetting.layoutsettingssidebarposition=='sidebarpositionleft' || $themelayoutsetting.id != '1'}checked{/if}>
								<span class="title">Left position</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-position-right.webp" alt="">
								<input type="radio" name="layoutsettingssidebarposition" id="sidebarpositionright" value="sidebarpositionright" {if $themelayoutsetting.layoutsettingssidebarposition=='sidebarpositionright'}checked{/if}>
								<span class="title">Right position</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-position-top.webp" alt="">
								<input type="radio" name="layoutsettingssidebarposition" id="sidebarpositiontop" value="sidebarpositiontop" {if $themelayoutsetting.layoutsettingssidebarposition=='sidebarpositiontop'}checked{/if}>
								<span class="title">Horizontal position</span>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-position-top-start.webp" alt="">
								<input type="radio" name="layoutsettingssidebarposition" id="sidebarpositiontopstart" value="sidebarpositiontopstart" {if $themelayoutsetting.layoutsettingssidebarposition=='sidebarpositiontopstart'}checked{/if}>
								<span class="title">Horizontal Top position</span>
								<span class="checkmark"></span>
							</label>
						</div>
					</fieldset>
				</div>
				
				<div style="margin-top: 0" class="form-group menu__place__radio__group white__radio__group">
					<label>Logo position <i data-toggle="tooltip" data-placement="bottom" title="Choose where you want to display your logo. Learn more about types in our documentation." class="fas fa-info-circle"></i></label>
					<fieldset>
						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-logo-sidebar.webp" alt="">
								<input type="radio" name="layoutsettingssidebarstyle" id="sidebarsidebarlogo" value="sidebarsidebarlogo" {if $themelayoutsetting.layoutsettingssidebarstyle=='sidebarsidebarlogo' || $themelayoutsetting.id != '1'}checked{/if}>
								<span class="title">Sidebar Logo</span>
								<span class="checkmark"></span>
							</label>
						</div>

						<div class="radio">
							<label>
								<img src="../modules/addons/adminiTheme/assets/img/sidebar-logo-header.webp" alt="">
								<input type="radio" name="layoutsettingssidebarstyle" id="sidebarheaderlogo" value="sidebarheaderlogo" {if $themelayoutsetting.layoutsettingssidebarstyle=='sidebarheaderlogo'}checked{/if}>
								<span class="title">Header Logo</span>
								<span class="checkmark"></span>
							</label>
						</div>
					</fieldset>
				</div>
		
			</div>
		</div>
	
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
	<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applylayoutoptions" value="Save & apply Layouts settings"/>
	<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=layoutoptions">Cancel</a>
</div>

<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resetlayoutoptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>AdminiTheme Layouts</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to AdminiTheme Layouts settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset AdminiTheme Layouts settings completly.</p>
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
            <form id="exportForm" action="{$modurl}&action=exportlayoutoptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>AdminiTheme Layouts</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export AdminiTheme Layouts settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
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
            <form id="exportForm" action="{$modurl}&action=importlayoutoptions" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>AdminiTheme Layouts</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import AdminiTheme Layouts settings, <b class="red">Please check that the file name is adminitheme_layout_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
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
			  
			  
