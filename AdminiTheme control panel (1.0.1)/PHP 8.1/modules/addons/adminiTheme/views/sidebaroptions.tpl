<div class="page__wrapper__content">
	<div class="coodiv__main__hero with__menu">
		<div class="coodiv__main__hero__breadcrumbs">{$breadcrumbs}</div>
		<div class="row justify-content-between">
			<div class="col-md-5 col-12">
				<h5 class="coodiv__main__hero__title">AdminiTheme Sidebar settings</h5>
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
		  <li class="nav-item active"><a class="nav-link" >Sidebar settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=footeroptions">Footer settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=homepageoptions">Homepage settings</a></li>
		  <li class="nav-item"><a class="nav-link" href="{$modurl}&action=listgroup">Menu manager</a></li> 
		</ul>
	</div>
	<form id="applysidebaroptions" class="full__fieldset__area default__form__panel__cart coodiv__whmcs__admin__panel__form" action="{$modurl}&action=applysidebaroptions" method="post">
		<div class="section">
			<h5 class="title">Sidebar settings</h5>
			<div class="form-group-wrapper-shadow">
				<h6 class="sub-title">Sidebar options</h6>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsdarkmode">Dark Mode sidebar  <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to Active dark mode Dark Mode on sidebar only" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsdarkmode" id="themesidebarsettingsdarkmode">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsdarkmode" id="themesidebarsettingsdarkmode" value="activated" {if $themesidebarsetting.themesidebarsettingsdarkmode=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							Active Dark Mode sidebar
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingscollapsed">collapsed sidebar by default <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to collapse the sidebar by default" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingscollapsed" id="themesidebarsettingscollapsed">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingscollapsed" id="themesidebarsettingscollapsed" value="activated" {if $themesidebarsetting.themesidebarsettingscollapsed=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							Active collapsed sidebar by default
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsallowusertoexpend">Allow user to expand the sidebar when is collapsed<i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to Allow the User expanding the sidebar when is collapsed" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsallowusertoexpend" id="themesidebarsettingsallowusertoexpend">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsallowusertoexpend" id="themesidebarsettingsallowusertoexpend" value="activated" {if $themesidebarsetting.themesidebarsettingsallowusertoexpend=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							Allow user to only expand the sidebar
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsallowusertocollapse">Allow user to collapse the sidebar when is expanded<i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to Allow the User collapsing the sidebar when is expanded" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsallowusertocollapse" id="themesidebarsettingsallowusertocollapse">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsallowusertocollapse" id="themesidebarsettingsallowusertocollapse" value="activated" {if $themesidebarsetting.themesidebarsettingsallowusertocollapse=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							Allow user to only collapse the sidebar
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsfixedtopheader">Fixed Top header <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use the fixed top header" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsfixedtopheader" id="themesidebarsettingsfixedtopheader">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsfixedtopheader" id="themesidebarsettingsfixedtopheader" value="activated" {if $themesidebarsetting.themesidebarsettingsfixedtopheader=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to use the fixed top header
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsfixedhorizontalmenu">Fixed horizontal sidebar <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use the Fixed horizontal sidebar" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsfixedhorizontalmenu" id="themesidebarsettingsfixedhorizontalmenu">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsfixedhorizontalmenu" id="themesidebarsettingsfixedhorizontalmenu" value="activated" {if $themesidebarsetting.themesidebarsettingsfixedhorizontalmenu=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to use the Fixed horizontal sidebar
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingsfixedsecondarymenu">Fixed Secondary & cart menu <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use the Fixed Secondary & cart menu" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsfixedsecondarymenu" id="themesidebarsettingsfixedsecondarymenu">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsfixedsecondarymenu" id="themesidebarsettingsfixedsecondarymenu" value="activated" {if $themesidebarsetting.themesidebarsettingsfixedsecondarymenu=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to use the Fixed Secondary & cart menu
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingssidebaronhover">Enabe show sidebar on hover <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use Enabe show sidebar on hover" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingssidebaronhover" id="themesidebarsettingsfixedsecondarymenu">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingssidebaronhover" id="themesidebarsettingssidebaronhover" value="activated" {if $themesidebarsetting.themesidebarsettingssidebaronhover=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to Enabe show sidebar on hover
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingschildonhover">Enabe show sidebar child on hover <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use Enabe show sidebar child on hover" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingschildonhover" id="themesidebarsettingschildonhover">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingschildonhover" id="themesidebarsettingschildonhover" value="activated" {if $themesidebarsetting.themesidebarsettingschildonhover=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to Enabe show sidebar child on hover
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control d-none">
					<label for="themesidebarsettingsdarkicons">Enabe show sidebar dark icons <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to use Enabe sidebar dark icons" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingsdarkicons" id="themesidebarsettingsdarkicons">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingsdarkicons" id="themesidebarsettingsdarkicons" value="activated" {if $themesidebarsetting.themesidebarsettingsdarkicons=='activated' || $themesidebarsetting.id != '1'}checked{/if}>
							I want to Enabe sidebar dark icons
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control d-none">
					<label for="themesidebarsettingswithouticons">Disable sidebar icons <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to Disable sidebar icons" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingswithouticons" id="themesidebarsettingswithouticons">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingswithouticons" id="themesidebarsettingswithouticons" value="activated" {if $themesidebarsetting.themesidebarsettingswithouticons=='activated'}checked{/if}>
							I want to Disable sidebar icons
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingfullwidthtopheader">Enable top header full screen width <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to Enable top header full screen width" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingfullwidthtopheader" id="themesidebarsettingfullwidthtopheader">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingfullwidthtopheader" id="themesidebarsettingfullwidthtopheader" value="activated" {if $themesidebarsetting.themesidebarsettingfullwidthtopheader=='activated'}checked{/if}>
							I want to Enable top header full screen width
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
				<div class="form-group templates__form__control">
					<label for="themesidebarsettingfullwithhorizontalmenu">Enable horizontal sidebar full screen width <i data-toggle="tooltip" data-placement="bottom" title="tick/enable this field to if you want to Enable horizontal sidebar full screen width" class="fas fa-info-circle"></i></label>
					<fieldset name="themesidebarsettingfullwithhorizontalmenu" id="themesidebarsettingfullwithhorizontalmenu">
						<div class="radio">
						<label class="template__label">
							<input type="checkbox" name="themesidebarsettingfullwithhorizontalmenu" id="themesidebarsettingfullwithhorizontalmenu" value="activated" {if $themesidebarsetting.themesidebarsettingfullwithhorizontalmenu=='activated'}checked{/if}>
							I want to Enable horizontal sidebar full screen width
							<span class="checkmark"><i class="fal fa-check"></i></span>
						</label>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	
	</form>
</div>
<div class="coodiv__whmcs__admin__panel__form__footer__btns">
<input class="coodiv__whmcs__admin__panel__form__footer__submit" type="submit" form="applysidebaroptions" value="Save & apply Sidebar settings"/>
<a class="coodiv__whmcs__admin__panel__form__footer__cancel" href="{$modurl}&action=sidebaroptions">Cancel</a>
</div>


<div id="resetpageoptions" class="coodiv__whmcs__admin__panel__model modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{$modurl}&action=resetsidebaroptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Reset <b>AdminiTheme Sidebar</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to AdminiTheme Sidebar settings, <b class="red">Please not that this action can not be undone!</b>. Please confirm, to reset AdminiTheme Sidebar settings completly.</p>
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
            <form id="exportForm" action="{$modurl}&action=exportsidebaroptions" method="post">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Export <b>AdminiTheme Sidebar</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to export AdminiTheme Sidebar settings, <b class="red">you will download a CSV file!</b>. Please do NOT edit it To avoid any problem that may occur in the future.</p>
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
            <form id="exportForm" action="{$modurl}&action=importsidebaroptions" method="post" enctype="multipart/form-data">
				<div class="coodiv__whmcs__admin__panel__model__header">
					<h4 class="title">Import <b>AdminiTheme Sidebar</b> settings</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fal fa-times"></i></button>
				</div>
				<div class="coodiv__whmcs__admin__panel__model__body">
					 <p>You are trying to Import AdminiTheme Sidebar settings, <b class="red">Please check that the file name is adminitheme_sidebar_exported_data.CSV!</b>. If you upload a different file to the page option that may create issues with your system and <b>Coodiv is not responsible for it.</b></p>
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
			
