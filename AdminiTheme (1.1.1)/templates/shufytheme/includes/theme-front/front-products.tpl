<div class="homepage__services__area py-lg-18 py-10">
	<div class="row justify-content-center mb-10">
		<div class="col-md-8 col-12 text-center">
		<h6 class="coodiv-text-6 font-weight-700">
		{if $coodivhomepagesettings.themehomepagesettinghomepagefeaturedsectiontitle == null}
			Products For All Businesses
		{else}
			{$coodivhomepagesettings.themehomepagesettinghomepagefeaturedsectiontitle}
		{/if}
		</h6>
		<p class="coodiv-text-9 font-weight-300 mt-1">
		{if $coodivhomepagesettings.themehomepagesettinghomepagefeaturedsectionsubtitle == null}
			Create the perfect site with powerful drag and drop tools
		{else}
			{$coodivhomepagesettings.themehomepagesettinghomepagefeaturedsectionsubtitle}
		{/if}
		</p>
		</div>
	</div>
	<div class="main__homepage__services__grid">
		{if $coodivhomepagesettings.themehomepagesettingfeaturedfirst=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="main__homepage__services__grid__element webhosting light-mode-texts">
			<div class="main__homepage__services__grid__element__illustration">
				<img src="{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentinllustration == null}{$WEB_ROOT}/templates/{$template}/assets/img/core-img/hosting-illustration.svg{else}{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentinllustration}{/if}" alt="hosting illustration" />
			</div>
			<div class="main__homepage__services__grid__element__header">
				<div class="title__side pr-6">
					<h6 class="title coodiv-text-7 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontenttitle == null}
						Start your web hosting now
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontenttitle}
					{/if}
					</h6>
					<div class="d-block">
						<p class="sub-title coodiv-text-11 font-weight-300 d-block">
						{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontenttitleicon == null}
							Virtual machines for more demanding business apps, e.g. <br>(linux - windows)
						{else}
							{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontenttitleicon}
						{/if}
						</p>
					</div>
				</div>
				
				<div class="price__side text-lg-right text-left">
					<h6 class="coodiv-text-4 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentprice == null}
						$2.99/mo
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentprice}
					{/if}
					</h6>
					<p class="sub-title coodiv-text-13 font-weight-300 d-block">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentpricebilling == null}
						Starting at*, yearly billing
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentpricebilling}
					{/if}
					</p>
				</div>
			</div>
			
			<div class="main__homepage__services__grid__element__body">
				<p class="sub-title coodiv-text-11 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentdescription == null}
					Speed up your website by distributing it globally and serving it to your visitors from the closest location for faster page load speeds wherever they are.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentdescription}
				{/if}
				</p>
				
				<ul class="main__homepage__services__grid__element__plan__features d-flex flex-column">
				<li>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitleone == null}
					60GB Cpanel webhosting
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitleone}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-12 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitleoneicon == null}
					Starting at $2.99 monthly
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitleoneicon}
				{/if}
				</p>
				</li>
				<li>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitletwo == null}
					Free .COM domain
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitletwo}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-12 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitletwoicon == null}
					$18.99
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitletwoicon}
				{/if}
				</p>
				</li>
				<li>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitlethree == null}
					Free Cpanel license
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentsubtitlethree}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-12 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentprice == null}
					$12.99 monthly
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentprice}
				{/if}
				</p>
				</li>
				</ul>
			</div>
			
			<div class="main__homepage__services__grid__element__footer">
			<a href="{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentbuttonlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentbuttonlink}{/if}" class="btn btn-small btn-primary">
			{if $coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentbutton == null}
				Get Started Now
			{else}
				{$coodivhomepagesettings.themehomepagesettingfeaturedfirstcontentbutton}
			{/if}
			</a>
			</div>
		</div>
		{/if}
		{if $coodivhomepagesettings.themehomepagesettingfeaturedssecond=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="main__homepage__services__grid__element servers light-mode-texts">
			<div class="main__homepage__services__grid__element__header">
				<div class="title__side pr-6">
					<h6 class="title coodiv-text-7 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontenttitle == null}
						Start your fully managed VPS server
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontenttitle}
					{/if}					
					</h6>
					<div class="d-block">
						<p class="d-flex align-items-center sub-title coodiv-text-11 font-weight-300 d-block">
						<img class="mr-3 main__homepage__services__grid__element__flag" src="{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontenttitleicon == null}{$WEB_ROOT}/templates/{$template}/assets/img/flags/dutch.svg{else}{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontenttitleicon}{/if}" alt="world icon" /> 
						{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitleone == null}
							25 data center around the world
						{else}
							{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitleone}
						{/if}
						</p>
						<p class="d-flex align-items-center sub-title coodiv-text-11 font-weight-300 d-block">
						<img class="mr-3 main__homepage__services__grid__element__flag rounded-0" src="{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitleoneicon == null}{$WEB_ROOT}/templates/{$template}/assets/img/core-img/intel-icon.svg{else}{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitleoneicon}{/if}" alt="world icon" /> 
						{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitletwo == null}
							Xeon 4 vCPU with Hight RAM
						{else}
							{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitletwo}
						{/if}
						</p>
					</div>
				</div>
				
				<div class="price__side text-lg-right text-left">
					<h6 class="coodiv-text-6 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentdescription == null}
						$43.99/mo
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentdescription}
					{/if}
					</h6>
					<p class="sub-title coodiv-text-13 font-weight-300 d-block">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentpricebilling == null}
						$43.99/mo
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentpricebilling}
					{/if}
					</p>
				</div>
			</div>
			
			<div class="main__homepage__services__grid__element__body">
				
				<ul class="main__homepage__services__grid__element__plan__features d-flex flex-column">
					<li>
					<h6 class="coodiv-text-11 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitlethree == null}
						60GB Cpanel webhosting
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentsubtitlethree}
					{/if}
					</h6>
					<p class="sub-title coodiv-text-12 font-weight-300 d-block">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentinllustration == null}
						Starting at $2.99 monthly
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentinllustration}
					{/if}
					</p>
					</li>
				</ul>
			</div>
			
			<div class="main__homepage__services__grid__element__footer">				
				<a href="{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentbuttonlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentbuttonlink}{/if}" class="btn btn-small btn-primary-light">
					{if $coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentbutton == null}
						Get Started Now
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeaturedsecondcontentbutton}
					{/if}
				</a>
			</div>
		</div>
		{/if}
		{if $coodivhomepagesettings.themehomepagesettingfeaturedthird=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="main__homepage__services__grid__element domains dark-mode-texts">
			<div class="main__homepage__services__grid__element__header border-0">
				<div class="title__side">
					<h6 class="title coodiv-text-7 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingfeatureddomomainsectiontitle == null}
						Find your new domain name
					{else}
						{$coodivhomepagesettings.themehomepagesettingfeatureddomomainsectiontitle}
					{/if}
					</h6>
					<div class="d-block">
						<p class="sub-title coodiv-text-11 font-weight-300 d-block">
						{if $coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitle == null}
							Easily find available domains from over 500 domain extensions.
						{else}
							{$coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitle}
						{/if}
						
						</p>
						<p class="sub-title coodiv-text-11 font-weight-300 d-block">
						{if $coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitletwo == null}
							24/7 phone and chat support. Talk to a real person in your preferred language.
						{else}
							{$coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitletwo}
						{/if}
						</p>
						
						{if $coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitlethree == null}{else}<p class="sub-title coodiv-text-11 font-weight-300 d-block">{$coodivhomepagesettings.themehomepagesettingfeatureddomomainsectionsubtitlethree}</p>{/if}
						
					</div>
				</div>
			</div>
			
			<form class="main__homepage__services__grid__element__domain__search__form" method="post" action="domainchecker.php" id="frmDomainHomepage">
				<div class="search-group search-group-combined">
					<div class="search-field search-field-lg">
						<div class="search-field-icon"><i class="fal fa-search"></i></div>
						<input class="form-control form-control-lg" type="text" name="domain" placeholder="eg. example.com" autocapitalize="none">
					</div>
					<div class="search-group-btn main__homepage__services__grid__element__domain__search__form__btn">
						<input type="submit" class="btn btn-primary-light btn-small search " value="Search">
					</div>
				</div>
			</form>
			<div class="row justify-content-start mt-7">
				<div class="col-auto">
				<div class="main__homepage__services__grid__element__domain__ltds__price">
				<h6 class="ltd coodiv-text-7 font-weight-700 mb-0"><small>.</small> com</h6>
				<h6 class="price coodiv-text-11 font-weight-200 sub-color mb-0">$18.99</h6>
				</div>
				</div>
				
				<div class="col-auto">
				<div class="main__homepage__services__grid__element__domain__ltds__price">
				<h6 class="ltd coodiv-text-7 font-weight-700 mb-0"><small>.</small> net</h6>
				<h6 class="price coodiv-text-11 font-weight-200 sub-color mb-0">$20.99</h6>
				</div>
				</div>
				
				<div class="col-auto">
				<div class="main__homepage__services__grid__element__domain__ltds__price">
				<h6 class="ltd coodiv-text-7 font-weight-700 mb-0"><small>.</small> store</h6>
				<h6 class="price coodiv-text-11 font-weight-200 sub-color mb-0">$2.99</h6>
				</div>
				</div>
			</div>
		</div>
		{/if}


	</div>

	
	<div class="homepage__main__pricing__plans__wrapper row justify-content-start mt-8">
		{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirst=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="col-lg col-md-6 col-12 mb-8 mb-lg-0">
			<div class="homepage__main__pricing__plan__box color__one">
				<div class="homepage__main__pricing__plan__header mb-6">
				<i class="coodiv-text-7 mb-2 {if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirsticon == null}fab fa-wordpress-simple{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirsticon}{/if} font-weight-300"></i>
				<h6 class="coodiv-text-7 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirsttitle == null}
					WordPress hosting
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirsttitle}
				{/if}
				</h6>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstsubtitle == null}
					Design your site, your way.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstsubtitle}
				{/if}
				</h6>
				</div>
				<div class="homepage__main__pricing__plan__body mt-1 mb-9">
				<p class="coodiv-text-11 font-weight-300">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstdescription == null}
					Our Managed WordPress Hosting platform with WooCommerce gives you the freedom to sell anything, anywhere online – from physical products to digital downloads, services and subscriptions.</p>
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstdescription}
				{/if}
				</div>
				<div class="homepage__main__pricing__plan__footer">
				<h6 class="plan__pricing coodiv-text-5 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstprice == null}
					$1.99/mo
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstprice}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-13 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbilling == null}
					Starting at*, yearly billingd.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbilling}
				{/if}
				</p>
				<a href="{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbtnlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbtnlink}{/if}" class="btn btn-lg d-block w-100 mt-7">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbtntext == null}
					Start Free trial
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansfirstbtntext}
				{/if}
				</a>
				</div>
			</div>
		</div>
		{/if}
		
		{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecond=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="col-lg col-md-6 col-12 mb-8 mb-lg-0">
			<div class="homepage__main__pricing__plan__box color__two">
				<div class="homepage__main__pricing__plan__header mb-6">
				<i class="coodiv-text-7 mb-2 {if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondicon == null}fal fa-database{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondicon}{/if} font-weight-300"></i>
				<h6 class="coodiv-text-7 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondtitle == null}
					Dedicated Server Hosting
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondtitle}
				{/if}
				</h6>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondsubtitle == null}
					Get high-powered Dedicated Server Hosting.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondsubtitle}
				{/if}
				</h6>
				</div>
				<div class="homepage__main__pricing__plan__body mt-1 mb-9">
				<p class="coodiv-text-11 font-weight-300">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansseconddescription == null}
					Our Dedicated Server Hosting provides high-performance server options with isolated resources to run mission-critical applications where latency and uptime matters.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansseconddescription}
				{/if}
				</div>
				<div class="homepage__main__pricing__plan__footer">
				<h6 class="plan__pricing coodiv-text-5 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondprice == null}
					$109.99/mo
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondprice}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-13 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbilling == null}
					Starting at*, yearly billing
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbilling}
				{/if}
				</p>
				<a href="{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbtnlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbtnlink}{/if}" class="btn btn-lg d-block w-100 mt-7">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbtntext == null}
					Start Free trial
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplanssecondbtntext}
				{/if}
				</a>
				</div>
			</div>
		</div>
		{/if}
		
		
		{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthird=='activated' || $coodivhomepagesettings.id != '1'}
		<div class="col-lg col-md-6 col-12 mb-8 mb-lg-0">
			<div class="homepage__main__pricing__plan__box color__tree">
				<div class="homepage__main__pricing__plan__header mb-6">
				<i class="coodiv-text-7 mb-2 {if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdicon == null}fab fa-windows{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdicon}{/if} font-weight-300"></i>
				<h6 class="coodiv-text-7 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdtitle == null}
					Windows Web Hosting
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdtitle}
				{/if}
				</h6>
				<h6 class="coodiv-text-11 font-weight-700">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdsubtitle == null}
					for ASP.NET, ASP, .Net Core, and SQL server users.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdsubtitle}
				{/if}
				</h6>
				</div>
				<div class="homepage__main__pricing__plan__body mt-1 mb-9">
				<p class="coodiv-text-11 font-weight-300">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirddescription == null}
					The Windows features you know — ASP.NET, ASP, .NET Core, and SQL Server — are best when paired with our Windows Hosting plans. With Windows Server 2019 and IIS 10, our systems run fast and reliable to meet your dev needs.
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirddescription}
				{/if}
				</div>
				<div class="homepage__main__pricing__plan__footer">
				<h6 class="plan__pricing coodiv-text-5 font-weight-700 mb-0">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdprice == null}
					$1.99/mo
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdprice}
				{/if}
				</h6>
				<p class="sub-title coodiv-text-13 font-weight-300 d-block">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbilling == null}
					Starting at*, yearly billing
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbilling}
				{/if}
				</p>
				<a href="{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbtnlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbtnlink}{/if}" class="btn btn-lg d-block w-100 mt-7">
				{if $coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbtntext == null}
					Start Free trial
				{else}
					{$coodivhomepagesettings.themehomepagesettingfeaturescolorsplansthirdbtntext}
				{/if}
				</a>
				</div>
			</div>
		</div>
		{/if}
	</div>
</div>
