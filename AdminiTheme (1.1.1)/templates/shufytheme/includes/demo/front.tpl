<div class="modal fade bd-example-modal-lg" id="blockSubmitDemoModal" aria-modal="true">
	<div class="modal-dialog">
		<div class="modal-content rounded-20 border-opacity">
			<div class="modal-body px-10 py-10">
				<h3 style="display: flex;align-items: center;gap: 12px;margin-bottom: 25px;" class="coodiv-text-7">
				<i style="color: #F44336;font-size: 17px;" class="fas fa-exclamation-circle"></i>
				You're not allowed to change this data
				</h3>
				<p class="coodiv-text-10 text-muted">We're sorry, but you can't change this data. <span class="font-weight-bold">This is just a demo, so we've turned off the option to edit it</span>. We did this to make sure everyone can check out the theme without any problems.</p>
				<p class="coodiv-text-10 text-muted">Please note that this message is not part of the <span class="font-weight-bold">Shufytheme Theme</span>. If you have any questions, we welcome you to contact us</p>
				<div class="d-flex align-items-center justify-content-end mt-9 gap-5">
					<button type="button" class="btn btn-primary-outline btn-sm" data-dismiss="modal">Close this message</button>
					<a href="https://coodiv.net" target="_blank" type="button" class="btn btn-primary btn-sm">Contact support</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="d-none" style="position: fixed;top: 0;bottom: 0;left: 0;right: 0;background: #fff;z-index: 99999;display: flex;align-items: center;justify-content: center;flex-direction: column;" id="waitfordemoisloading">
	<h6 class="coodiv-text-7 font-weight-bold">Loading</h6>
	<h6 class="coodiv-text-9 font-weight-300">Your demo is loading ... </h6>
	<p class="coodiv-text-10 font-weight-300">This loading screen is visible only on our demo, you will not see it on your website.</p>
</div>

<div id="demosidebar" class="shuffytheme__demo__sidebar__wrapper">
	<button type="button" id="shuffytheme__demo__sidebar__toggler">
		<i class="fal fa-sliders-v"></i>
		<h6 class="coodiv-text-12 mb-0 font-weight-300">Customize</h6>
	</button>
	<div class="shuffytheme__demo__sidebar__items">
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
		<h6 class="coodiv-text-11 font-weight-600">Choose Color Scheme</h6>
			<div class="shuffytheme__demo__sidebar__item__radios">
				<label>
					<input class="sidebardemo__custom__radioinput blue" type="radio" name="customRadio" value="blueschemebody" checked>
					<span class="sidebardemo__custom__radio bluescheme"><span class="inner__dot"></span></span>
				</label>
				<label>
					<input class="sidebardemo__custom__radioinput green" type="radio" name="customRadio" value="greenschemebody">
					<span class="sidebardemo__custom__radio greenscheme"><span class="inner__dot"></span></span>
				</label>
				<label>
					<input class="sidebardemo__custom__radioinput purple" type="radio" name="customRadio" value="purpleschemebody">
					<span class="sidebardemo__custom__radio purplescheme"><span class="inner__dot"></span></span>
				</label>
				<label>
					<input class="sidebardemo__custom__radioinput red" type="radio" name="customRadio" value="redschemebody">
					<span class="sidebardemo__custom__radio redscheme"><span class="inner__dot"></span></span>
				</label>
			</div>
		</div>
		
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
			<h6 class="coodiv-text-11 font-weight-600">Sidebar styles</h6>
			<div class="form__field__set d-block">
				<div class="form-group mt-4">
					<label class="demo__sidebar__layout__label demo__sidebar__default__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__layout default" name="sidebarlayouts" value="default">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Default sidebar</p>
					</label>
					<label class="demo__sidebar__layout__label demo__sidebar__bigicons__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__layout bigicons" name="sidebarlayouts" value="bigicons">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Big icons sidebar</p>
					</label>
					<label class="demo__sidebar__layout__label demo__sidebar__defaultsepareted__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__layout defaultsepareted" name="sidebarlayouts" value="defaultsepareted">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Separated Default Sidebar</p>
					</label>
					<label class="demo__sidebar__layout__label demo__sidebar__bigiconssepareted__label form-check form-check-inline d-flex align-items-center cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__layout bigiconssepareted" name="sidebarlayouts" value="bigiconssepareted">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Separated Big icons sidebar</p>
					</label>
				</div>
			</div>
		</div>
		
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
			<h6 class="coodiv-text-11 font-weight-600">Sidebar layouts</h6>
			<div class="form__field__set d-block">
				<div class="form-group mt-4">
					<label class="demo__sidebar__placements__label demo__sidebar__left__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__placements left" name="sidebarplacements" value="left">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Left position</p>
					</label>
					<label class="demo__sidebar__placements__label demo__sidebar__horizontal__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__placements horizontal" name="sidebarplacements" value="horizontal">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Horizontal position</p>
					</label>
					<label class="demo__sidebar__placements__label demo__sidebar__horizontaltop__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__placements horizontaltop" name="sidebarplacements" value="horizontaltop">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Horizontal Top position</p>
					</label>
				</div>
			</div>
		</div>
		
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
			<h6 class="coodiv-text-11 font-weight-600">Sidebar backgrounds</h6>
			<div class="form__field__set d-block">
				<div class="form-group mt-4">
					<label class="demo__sidebar__bg__label demo__sidebar__dark__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__bg dark" name="sidebarbg" value="dark">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Dark mode sidebar</p>
					</label>
					<label class="demo__sidebar__bg__label demo__sidebar__light__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__sidebar__bg light" name="sidebarbg" value="light">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Light mode sidebar</p>
					</label>
				</div>
			</div>
		</div>
		
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
			<h6 class="coodiv-text-11 font-weight-600">Logo position</h6>
			<div class="form__field__set d-block">
				<div class="form-group mt-4">
					<label class="demo__logo__position__label demo__logo__position__sidebar__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__logo__position" name="logoposition" value="sidebar">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Sidebar logo</p>
					</label>
					<label class="demo__logo__position__label demo__logo__position__topheader__label form-check form-check-inline d-flex align-items-center mb-2 cursor-pointer">
						<input type="radio" class="icheck-button demo__logo__position" name="logoposition" value="topheader">
						<p class="coodiv-text-12 font-weight-400 mb-0 pl-3">Top header logo</p>
					</label>
				</div>
			</div>
		</div>	
		
		<div class="shuffytheme__demo__sidebar__items__section mb-5">
			<h6 class="coodiv-text-11 font-weight-600">Container</h6>
			
			
			<div class="form__field__set d-block">
				<div class="form-group mb-1">
					<label for="boxedcontainers[boxedtopheader]" class="coodiv-check-input d-flex demo__boxedcontainers__label demo__logo__boxedcontainers__topheader__label">
						<input type="checkbox" class="coodiv-check-input-click demo__boxedcontainers" name="boxedcontainers" id="boxedtopheader" value="1" />
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">Boxed top header</p>
					</label>
				</div>
				<div class="form-group mb-1">
					<label for="boxedcontainers[boxedtopheader]" class="coodiv-check-input d-flex demo__boxedcontainers__label demo__logo__boxedcontainers__boxedcontainers__label">
						<input type="checkbox" class="coodiv-check-input-click demo__boxedcontainers" name="boxedcontainers" id="boxedsidebar" value="1" />
						<span class="checkbox mr-2"></span>
						<p class="coodiv-text-11 font-weight-500 mb-0 pl-3">Boxed horizontal sidebar</p>
					</label>
				</div>
			</div>
		</div>	
		
		<button type="button" id="demosettingsresetButton" class="btn btn-danger btn-sm">
		Reset settings to default
		</button>
	</div>
</div>



