{if in_array('state', $optionalFields)}
    <script>
        var statesTab = 10,
            stateNotRequired = true;
    </script>
{/if}

<script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script>
    window.langPasswordStrength = "{lang key='pwstrength'}";
    window.langPasswordWeak = "{lang key='pwstrengthweak'}";
    window.langPasswordModerate = "{lang key='pwstrengthmoderate'}";
    window.langPasswordStrong = "{lang key='pwstrengthstrong'}";
    jQuery(document).ready(function() {
        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
    });
</script>

<div class="main__login__content__wrapper {if $coodivsettings.registerstyle=='registerstyleone'}main__login__content__wrapper__with__sidebar{/if}">

	<div class="autho__logo__wrapper website__identity__sidebar {if $coodivsettings.registerstyle!='registerstyletwo'}d-lg-none{/if} d-flex align-items-center justify-content-center mb-8">		
		<a class="website__identity__sidebar__link text-center d-flex align-items-center justify-content-center gap-10" href="{$WEB_ROOT}/index.php">
			{if $coodivsettings.siteaslogo=='activated'}
				<div class="website__identity__sidebar__text__logo__wrapper">
					<span class="website__identity__sidebar__text__logo__first__later">
						<span id="websiteidenditytextlogofirst">
							{if $coodivsettings.customtextlogo == null}
								{$companyname}
							{else}
								{$coodivsettings.customtextlogo}
							{/if}
						</span>
					</span>
					<span id="websiteidenditytextlogofull" class="website__identity__sidebar__text__logo__full">
						{if $coodivsettings.customtextlogo == null}
							{$companyname}
						{else}
							{$coodivsettings.customtextlogo}
						{/if}
					</span>
				</div>
			{else}
				{if $coodivsettings.defaultlogolinkfull}
					<img class="image__logo__tagline white__logo" src="{$coodivsettings.defaultlogolinkfull}" alt="{$companyname} logo" />
					<img class="image__logo__tagline dark__logo" src="{$coodivsettings.darklogolinkfull}" alt="{$companyname} logo" />
				{else}
					{if $coodivsettings.defaultlogolinkicon == null && $coodivsettings.defaultlogolinktagline == null}
						<svg class="main__shufy__theme__logo svg__logo white__logo" x="0px" y="0px" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-0.06 0 364.66 171.03">
							<g class="logo__path">
							<path class="shufy__theme__logo__icon__two" d="M110.9,97.4c0,14.8-0.1,29.6,0,44.4c0,2.7-0.7,4.1-3.3,5.2c-5,2-9.7,4.5-14.3,7.3c-3.4,2.1-2.5-0.5-2.6-2  c-0.1-9.5-0.2-19-0.3-28.4c-0.1-12.1-0.4-24.1-0.3-36.2c0-7.1-4.5-10.3-9.5-13.2C60.4,63,40.2,51.5,19.9,40c-1.4-0.7-2.1-2.2-2-3.7  c0.1-7.7-0.3-15.4,0.1-23.1C18.7,2.8,28.8-3.7,39.3,2.3c21.2,12.1,42.4,24.4,63.6,36.5c5.6,3.2,8,7.8,8,14.2  C110.9,67.8,110.9,82.6,110.9,97.4L110.9,97.4z"/>
							<path class="shufy__theme__logo__icon__one" d="M78.8,104c0,2,0,4,0,6s0.2,3.3-2.5,1.7c-8.7-5.3-17.6-10.2-26.4-15.4S32.3,85.9,23.5,80.7  c-2.2-1.3-3.3-0.8-3.6,1.9c-0.8,7.5-0.1,8.4,8.2,12.9c14.7,8,29.3,16.3,44.1,24.2c5.3,2.8,6.6,7.5,6.6,12.8c0.1,8,0,16.1-0.1,24.2  c-0.1,7.6-2.9,11.7-9.9,14c-3.6,1.2-6.9-1.1-9.7-2.9C41.5,157.1,24,146.2,6.5,135.3c-4.2-2.6-6.7-6.4-6.4-11.9  c0.2-3.4,0.1-6.9,0-10.3c-0.1-2.5,0.2-3.6,2.9-2c9.1,5.6,18.3,11,27.4,16.5c8.6,5.2,17.1,10.3,25.6,15.6c2,1.2,2.6,1,2.5-1.3v-0.4  c0.3-8.5,0.3-8.6-7.3-12.9c-14.7-8.3-29.2-17.1-44.1-24.8c-5.8-3-7.5-6.5-7.1-12.9C0.6,82.3,0.3,73.6,0,65  c-0.2-6.7,3.8-11.6,10.7-13.1c2.7-0.6,5,0.8,7.3,2.1c17.7,10.2,35.3,20.4,53,30.5c5.3,3,7.6,7.8,7.8,13.8  C78.9,100.2,78.8,102.1,78.8,104L78.8,104z"/>
							</g>
							<path class="text__logo shufy__theme__logo__text" d="M138.7,83.8c1.8,2.1,3.8,3.9,6.2,5.3c1.8,1.1,3.9,1.7,6.1,1.8c1.7,0.1,3.3-0.5,4.6-1.5c1.2-0.9,1.8-2.3,1.8-3.8  c0.1-1.5-0.5-2.9-1.6-4c-1-0.9-3.4-1.9-7.1-2.9c-5-1.3-8.6-3.1-10.7-5.3c-2.1-2.2-3.1-5.2-3.1-9c-0.1-4.5,1.7-8.9,4.9-12  c3.3-3.1,7.6-4.7,12.8-4.7c2.7,0,5.4,0.4,8.1,1.1c2.6,0.8,5,1.9,7.2,3.5l-4.4,10.1c-1.5-1.3-3.1-2.3-4.9-3.1c-1.6-0.7-3.3-1-5-1  c-1.5-0.1-2.9,0.4-4.1,1.2c-1,0.7-1.6,1.9-1.6,3.1c0,1.2,0.5,2.3,1.4,3.1c1.6,1.1,3.4,1.8,5.4,2.2l0.6,0.2c5.7,1.5,9.5,3.2,11.3,5.1  c1.2,1.3,2.2,2.9,2.8,4.5c0.7,1.9,1,3.9,1,5.9c0,5.5-1.8,9.8-5.4,13.2c-3.6,3.3-8.4,5-14.3,5c-3.4,0-6.7-0.6-9.8-1.8  c-3.2-1.4-6-3.3-8.5-5.7L138.7,83.8z M176.4,100.5V49h14v20h18.7V49h14.1v51.5h-14v-21h-18.7v21H176.4z M232,49h14v25  c0,2.6,0.1,5.3,0.3,7.9c0.1,1.4,0.5,2.7,1,4c0.5,1.3,1.5,2.4,2.8,3c1.5,0.7,3.2,1.1,4.9,1c1.7,0.1,3.4-0.3,4.9-1  c1.3-0.6,2.3-1.7,2.8-3c0.5-1.3,0.8-2.6,1-4c0.2-2.6,0.3-5.3,0.3-7.9V49h14v27.2c0,5.7-0.3,9.8-1,12.5c-0.6,2.5-1.8,4.9-3.5,6.9  c-1.9,2.2-4.4,3.8-7.2,4.7c-7.3,2.1-15.1,2.1-22.4,0c-2.8-0.9-5.3-2.5-7.3-4.7c-1.6-2-2.8-4.4-3.4-6.9c-0.7-2.7-1-6.8-1-12.5V49H232  z M286.7,100.5V49h31.5v11.2h-17.9v9h16.8v11h-16.8v20.2H286.7z M333.2,100.5V77l-18-28h16.1l6.9,13.3c0.1,0.1,0.1,0.3,0.2,0.4  c0.7,1.3,1.2,2.6,1.5,4c0.3-1.3,0.8-2.6,1.5-3.8c0.2-0.3,0.2-0.4,0.3-0.5l6.8-13.2h16.1l-18,28v23.5L333.2,100.5z M144.2,115.3  h-11.3v-2.4h25.2v2.4h-11.3v31.2h-2.6L144.2,115.3z M164.3,111.1v15.4c1.5-3,4.6-4.8,7.9-4.6c3.4,0,8.1,1.7,8.1,9.3v15.3h-2.4v-14.8  c0-4.8-2.2-7.4-6.1-7.4c-4.8,0-7.5,2.9-7.5,8.8v13.4h-2.4v-35.4H164.3z M188.8,134.8c0,6.2,3.2,10,7.8,10s6-2.5,6.9-4.5h2.5  c-1,3.2-3.6,6.8-9.5,6.8c-7.3,0-10.1-6.3-10.1-12.4c0-6.9,3.4-12.8,10.4-12.8c7.4,0,9.7,6.4,9.7,10.9c0,0.7,0,1.3,0,2H188.8z   M204,132.7c0-4.8-2.6-8.5-7.4-8.5c-4.9,0-7.2,3.5-7.7,8.5H204z M212.3,128.7c0-2.1,0-4.3,0-6.2h2.4c0,0.8,0.1,2.9,0.1,4.3  c1.1-3,4-4.9,7.2-4.9c3.4,0,6,1.7,7,4.8c1.4-3,4.5-4.9,7.8-4.8c3.7,0,7.5,2.1,7.5,8.8v15.8h-2.5V131c0-3.2-1.1-6.7-5.6-6.7  c-4.6,0-6.8,3.8-6.8,8.4v13.8h-2.4v-15.5c0-3.5-1.1-6.8-5.5-6.8c-4.7,0-6.9,4.1-6.9,9v13.2h-2.4L212.3,128.7z M252.6,134.8  c0,6.2,3.2,10,7.8,10c4.6,0,6-2.5,6.9-4.5h2.4c-1,3.2-3.5,6.8-9.5,6.8c-7.3,0-10.1-6.3-10.1-12.4c0-6.9,3.4-12.8,10.4-12.8  c7.4,0,9.8,6.4,9.8,10.9c0,0.7,0,1.3,0,2H252.6z M267.8,132.7c0-4.8-2.6-8.5-7.3-8.5c-4.9,0-7.2,3.5-7.7,8.5H267.8z"/>
						</svg>
					{else}
						{if $coodivsettings.defaultlogolinkicon == null}
							<div class="website__identity__sidebar__text__logo__wrapper">
								<span class="website__identity__sidebar__text__logo__first__later">
									<span id="websiteidenditytextlogofirst">
									{if $coodivsettings.customtextlogo == null}
										{$companyname}
									{else}
										{$coodivsettings.customtextlogo}
									{/if}
									</span>
								</span>
							</div>
						{else}
							<img class="image__logo icon white__logo" src="{$coodivsettings.defaultlogolinkicon}" alt="{$companyname} logo" />
						{/if}
						{if $coodivsettings.defaultlogolinktagline == null}
							<span class="text__logo__tagline {if $coodivsettings.defaultlogolinkicon != null}d-none{/if}">
								{if $coodivsettings.customtextlogo == null}
									{$companyname}
								{else}
									{$coodivsettings.customtextlogo}
								{/if}
							</span>
							{else}
							<img class="image__logo__tagline white__logo" src="{$coodivsettings.defaultlogolinktagline}" alt="{$companyname} logo" />
						{/if}
					{/if}
					
					{if $coodivsettings.darklogolinkicon == null && $coodivsettings.darklogolinktagline == null}
						<svg class="main__shufy__theme__logo svg__logo dark__logo" x="0px" y="0px" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-0.06 0 364.66 171.03">
							<g class="logo__path">
							<path class="shufy__theme__logo__icon__two" d="M110.9,97.4c0,14.8-0.1,29.6,0,44.4c0,2.7-0.7,4.1-3.3,5.2c-5,2-9.7,4.5-14.3,7.3c-3.4,2.1-2.5-0.5-2.6-2  c-0.1-9.5-0.2-19-0.3-28.4c-0.1-12.1-0.4-24.1-0.3-36.2c0-7.1-4.5-10.3-9.5-13.2C60.4,63,40.2,51.5,19.9,40c-1.4-0.7-2.1-2.2-2-3.7  c0.1-7.7-0.3-15.4,0.1-23.1C18.7,2.8,28.8-3.7,39.3,2.3c21.2,12.1,42.4,24.4,63.6,36.5c5.6,3.2,8,7.8,8,14.2  C110.9,67.8,110.9,82.6,110.9,97.4L110.9,97.4z"/>
							<path class="shufy__theme__logo__icon__one" d="M78.8,104c0,2,0,4,0,6s0.2,3.3-2.5,1.7c-8.7-5.3-17.6-10.2-26.4-15.4S32.3,85.9,23.5,80.7  c-2.2-1.3-3.3-0.8-3.6,1.9c-0.8,7.5-0.1,8.4,8.2,12.9c14.7,8,29.3,16.3,44.1,24.2c5.3,2.8,6.6,7.5,6.6,12.8c0.1,8,0,16.1-0.1,24.2  c-0.1,7.6-2.9,11.7-9.9,14c-3.6,1.2-6.9-1.1-9.7-2.9C41.5,157.1,24,146.2,6.5,135.3c-4.2-2.6-6.7-6.4-6.4-11.9  c0.2-3.4,0.1-6.9,0-10.3c-0.1-2.5,0.2-3.6,2.9-2c9.1,5.6,18.3,11,27.4,16.5c8.6,5.2,17.1,10.3,25.6,15.6c2,1.2,2.6,1,2.5-1.3v-0.4  c0.3-8.5,0.3-8.6-7.3-12.9c-14.7-8.3-29.2-17.1-44.1-24.8c-5.8-3-7.5-6.5-7.1-12.9C0.6,82.3,0.3,73.6,0,65  c-0.2-6.7,3.8-11.6,10.7-13.1c2.7-0.6,5,0.8,7.3,2.1c17.7,10.2,35.3,20.4,53,30.5c5.3,3,7.6,7.8,7.8,13.8  C78.9,100.2,78.8,102.1,78.8,104L78.8,104z"/>
							</g>
							<path class="text__logo shufy__theme__logo__text" d="M138.7,83.8c1.8,2.1,3.8,3.9,6.2,5.3c1.8,1.1,3.9,1.7,6.1,1.8c1.7,0.1,3.3-0.5,4.6-1.5c1.2-0.9,1.8-2.3,1.8-3.8  c0.1-1.5-0.5-2.9-1.6-4c-1-0.9-3.4-1.9-7.1-2.9c-5-1.3-8.6-3.1-10.7-5.3c-2.1-2.2-3.1-5.2-3.1-9c-0.1-4.5,1.7-8.9,4.9-12  c3.3-3.1,7.6-4.7,12.8-4.7c2.7,0,5.4,0.4,8.1,1.1c2.6,0.8,5,1.9,7.2,3.5l-4.4,10.1c-1.5-1.3-3.1-2.3-4.9-3.1c-1.6-0.7-3.3-1-5-1  c-1.5-0.1-2.9,0.4-4.1,1.2c-1,0.7-1.6,1.9-1.6,3.1c0,1.2,0.5,2.3,1.4,3.1c1.6,1.1,3.4,1.8,5.4,2.2l0.6,0.2c5.7,1.5,9.5,3.2,11.3,5.1  c1.2,1.3,2.2,2.9,2.8,4.5c0.7,1.9,1,3.9,1,5.9c0,5.5-1.8,9.8-5.4,13.2c-3.6,3.3-8.4,5-14.3,5c-3.4,0-6.7-0.6-9.8-1.8  c-3.2-1.4-6-3.3-8.5-5.7L138.7,83.8z M176.4,100.5V49h14v20h18.7V49h14.1v51.5h-14v-21h-18.7v21H176.4z M232,49h14v25  c0,2.6,0.1,5.3,0.3,7.9c0.1,1.4,0.5,2.7,1,4c0.5,1.3,1.5,2.4,2.8,3c1.5,0.7,3.2,1.1,4.9,1c1.7,0.1,3.4-0.3,4.9-1  c1.3-0.6,2.3-1.7,2.8-3c0.5-1.3,0.8-2.6,1-4c0.2-2.6,0.3-5.3,0.3-7.9V49h14v27.2c0,5.7-0.3,9.8-1,12.5c-0.6,2.5-1.8,4.9-3.5,6.9  c-1.9,2.2-4.4,3.8-7.2,4.7c-7.3,2.1-15.1,2.1-22.4,0c-2.8-0.9-5.3-2.5-7.3-4.7c-1.6-2-2.8-4.4-3.4-6.9c-0.7-2.7-1-6.8-1-12.5V49H232  z M286.7,100.5V49h31.5v11.2h-17.9v9h16.8v11h-16.8v20.2H286.7z M333.2,100.5V77l-18-28h16.1l6.9,13.3c0.1,0.1,0.1,0.3,0.2,0.4  c0.7,1.3,1.2,2.6,1.5,4c0.3-1.3,0.8-2.6,1.5-3.8c0.2-0.3,0.2-0.4,0.3-0.5l6.8-13.2h16.1l-18,28v23.5L333.2,100.5z M144.2,115.3  h-11.3v-2.4h25.2v2.4h-11.3v31.2h-2.6L144.2,115.3z M164.3,111.1v15.4c1.5-3,4.6-4.8,7.9-4.6c3.4,0,8.1,1.7,8.1,9.3v15.3h-2.4v-14.8  c0-4.8-2.2-7.4-6.1-7.4c-4.8,0-7.5,2.9-7.5,8.8v13.4h-2.4v-35.4H164.3z M188.8,134.8c0,6.2,3.2,10,7.8,10s6-2.5,6.9-4.5h2.5  c-1,3.2-3.6,6.8-9.5,6.8c-7.3,0-10.1-6.3-10.1-12.4c0-6.9,3.4-12.8,10.4-12.8c7.4,0,9.7,6.4,9.7,10.9c0,0.7,0,1.3,0,2H188.8z   M204,132.7c0-4.8-2.6-8.5-7.4-8.5c-4.9,0-7.2,3.5-7.7,8.5H204z M212.3,128.7c0-2.1,0-4.3,0-6.2h2.4c0,0.8,0.1,2.9,0.1,4.3  c1.1-3,4-4.9,7.2-4.9c3.4,0,6,1.7,7,4.8c1.4-3,4.5-4.9,7.8-4.8c3.7,0,7.5,2.1,7.5,8.8v15.8h-2.5V131c0-3.2-1.1-6.7-5.6-6.7  c-4.6,0-6.8,3.8-6.8,8.4v13.8h-2.4v-15.5c0-3.5-1.1-6.8-5.5-6.8c-4.7,0-6.9,4.1-6.9,9v13.2h-2.4L212.3,128.7z M252.6,134.8  c0,6.2,3.2,10,7.8,10c4.6,0,6-2.5,6.9-4.5h2.4c-1,3.2-3.5,6.8-9.5,6.8c-7.3,0-10.1-6.3-10.1-12.4c0-6.9,3.4-12.8,10.4-12.8  c7.4,0,9.8,6.4,9.8,10.9c0,0.7,0,1.3,0,2H252.6z M267.8,132.7c0-4.8-2.6-8.5-7.3-8.5c-4.9,0-7.2,3.5-7.7,8.5H267.8z"/>
						</svg>
					{else}
						{if $coodivsettings.darklogolinkicon == null}
							<div class="website__identity__sidebar__text__logo__wrapper">
								<span class="website__identity__sidebar__text__logo__first__later">
									<span id="websiteidenditytextlogofirst dark__logo">
									{if $coodivsettings.customtextlogo == null}
										{$companyname}
									{else}
										{$coodivsettings.customtextlogo}
									{/if}
									</span>
								</span>
							</div>
						{else}
							<img class="image__logo icon dark__logo" src="{$coodivsettings.darklogolinkicon}" alt="{$companyname} logo" />
						{/if}
						{if $coodivsettings.darklogolinktagline == null}
							<span class="text__logo__tagline dark__logo">
							{if $coodivsettings.customtextlogo == null}
								{$companyname}
							{else}
								{$coodivsettings.customtextlogo}
							{/if}
							</span>
							{else}
							<img class="image__logo__tagline dark__logo" src="{$coodivsettings.darklogolinktagline}" alt="{$companyname} logo" />
						{/if}
					{/if}
				
				{/if}
			{/if}
		</a>
	</div>
	
	<div class="main__registeration__content">
		<div class="{if $coodivsettings.registerstyle=='registerstyleone' || $coodivsettings.id != '1'}panel__without__shadow{/if} default__shadow__panel mb-4">
			<div class="default__shadow__panel__body" id="personalInformation">
				<div class="mb-8 text-center">
					<h6 class="coodiv-text-5 font-weight-bold mb-0">{lang key='register'}</h6>
					<p class="coodiv-text-10 font-weight-400">{lang key='orderForm.createAccount'}</p>
				</div>
				{if $registrationDisabled}
					{include file="$template/includes/alert.tpl" type="error" msg="{lang key='registerCreateAccount'}"|cat:' <strong><a href="'|cat:"$WEB_ROOT"|cat:'/cart.php" class="alert-link">'|cat:"{lang key='registerCreateAccountOrder'}"|cat:'</a></strong>'}
				{/if}
				{if $errormessage}
					{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
				{/if}
				{if !$registrationDisabled}
				<form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
					<input type="hidden" name="register" value="true"/>
					<div id="containerNewUserSignup">
						{include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
								<h3 class="coodiv-text-8 font-weight-300 mb-7">{lang key='orderForm.personalInformation'}</h3>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="firstname" class="form-control-label">{lang key='orderForm.firstName'}</label>
											<div class="input-group">
												<input type="text" name="firstname" id="inputFirstName" class="form-control" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group ">
											<label for="lastname" class="form-control-label">{lang key='orderForm.lastName'}</label>
											<div class="input-group">
											<input type="text" name="lastname" id="inputLastName" class="form-control" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="email" class="form-control-label">{lang key='orderForm.emailAddress'}</label>
											<div class="input-group">
											<input type="email" name="email" id="inputEmail" class="form-control" value="{$clientemail}">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="phonenumber" class="form-control-label">{lang key='orderForm.phoneNumber'}</label>
											<div class="input-group">
											<input type="tel" name="phonenumber" id="inputPhone" class="form-control" value="{$clientphonenumber}">
											</div>
										</div>
									</div>
								</div>

								<h3 class="coodiv-text-8 font-weight-300 mb-7 mt-9">{lang key='orderForm.billingAddress'}</h3>

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="companyname" class="form-control-label">{lang key='orderForm.companyName'} <small>({lang key='orderForm.optional'})</small></label>
											<div class="input-group">
											<input type="text" name="companyname" id="inputCompanyName" class="form-control" value="{$clientcompanyname}">
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="address1" class="form-control-label">{lang key='orderForm.streetAddress'}</label>
											<div class="input-group">
											<input type="text" name="address1" id="inputAddress1" class="form-control" value="{$clientaddress1}"  {if !in_array('address1', $optionalFields)}required{/if}>
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="address2" class="form-control-label">{lang key='orderForm.streetAddress2'}</label>
											<div class="input-group">
											<input type="text" name="address2" id="inputAddress2" class="form-control" value="{$clientaddress2}">
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label for="city" class="form-control-label">{lang key='orderForm.city'}</label>
											<div class="input-group">
											<input type="text" name="city" id="inputCity" class="form-control" value="{$clientcity}"  {if !in_array('city', $optionalFields)}required{/if}>
											</div>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-group">
											<label for="state" class="form-control-label">{lang key='orderForm.state'}</label>
											<div class="input-control position-relative">
											<input type="text" name="state" id="state" class="form-control" value="{$clientstate}"  {if !in_array('state', $optionalFields)}required{/if}>
											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="postcode" class="form-control-label">{lang key='orderForm.postcode'}</label>
											<div class="input-group">
											<input type="text" name="postcode" id="inputPostcode" class="form-control" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="inputCountry" class="form-control-label">{lang key='clientareacountry'}</label>
											<div class="input-group">
											<select name="country" id="inputCountry" class="form-control">
												{foreach $clientcountries as $countryCode => $countryName}
													<option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
														{$countryName}
													</option>
												{/foreach}
											</select>
											</div>
										</div>
									</div>
									{if $showTaxIdField}
										<div class="col-sm-12">
											<div class="form-group">
												<label for="tax_id" class="form-control-label">{$taxLabel} <small>({lang key='orderForm.optional'})</small></label>
												<div class="input-group">
												<input type="text" name="tax_id" id="inputTaxId" class="form-control" value="{$clientTaxId}">
												</div>
											</div>
										</div>
									{/if}
								</div>

								{if $customfields || $currencies}
									<h3 class="coodiv-text-8 font-weight-300 mb-7 mt-9">{lang key='orderadditionalrequiredinfo'}<br><i><small>{lang key='orderForm.requiredField'}</small></i></h3>

									<div class="row">
										{if $customfields}
											{foreach $customfields as $customfield}
												<div class="col-sm-6">
													<div class="form-group">
														<label class="form-control-label" for="customfield{$customfield.id}">{$customfield.name}<small>{$customfield.required}</small></label>
														<div class="control">
															{$customfield.input}
															{if $customfield.description}
																<span class="field-help-text">{$customfield.description}</span>
															{/if}
														</div>
													</div>
												</div>
											{/foreach}
										{/if}
										{if $customfields && count($customfields)%2 > 0 }
											<div class="clearfix"></div>
										{/if}
										
										{if $currencies}
											<div class="col-sm-6">
												<div class="form-group">
													<label for="currency" class="form-control-label">{lang key='choosecurrency'}</label>
													<div class="input-group">
														<select id="inputCurrency" name="currency" class="field form-control">
															{foreach $currencies as $curr}
																<option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
															{/foreach}
														</select>
													</div>
												</div>
											</div>
										{/if}
									</div>
								{/if}

								<div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="w-hidden"{/if} >
									<h3 class="coodiv-text-8 font-weight-300 mb-7 mt-9">{lang key='orderForm.accountSecurity'}</h3>

									<div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
										<div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label for="password" class="form-control-label d-flex align-items-center justify-content-between">{lang key='clientareapassword'}  <span class="small" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</span></label>
												<div class="input-control position-relative">
													<input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
													<button title="{lang key='generatePassword.btnLabel'}" type="button" class="generate-pswrd-button generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
														<i class="fal fa-lock"></i>
													</button>
													<div class="paswrd__stenth__bar progress">
														<div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label for="password2" class="form-control-label">{lang key='clientareaconfirmpassword'}</label>
												<div class="input-group">
												<input type="password" name="password2" id="inputNewPassword2" class="form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
												</div>
											</div>
										</div>
									</div>
									{if $securityquestions}
										<div class="row">
											<div class="form-group col-sm-6">
												<label for="securityqid" class="form-control-label">{lang key='clientareacurrentsecurityquestion'}</label>
												<div class="input-group">
													<select name="securityqid" id="inputSecurityQId" class="field form-control">
														<option value="">{lang key='clientareasecurityquestion'}</option>
														{foreach $securityquestions as $question}
															<option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
																{$question.question}
															</option>
														{/foreach}
													</select>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label for="securityqans" class="form-control-label">{lang key='clientareasecurityanswer'}</label>
													<div class="input-group">
														<input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control" autocomplete="off">
													</div>
												</div>
											</div>
										</div>
									{/if}
								</div>
								{if $showMarketingEmailOptIn || $captcha}
								<div class="row justify-content-start register__wrapper__email__opt__in">
									{if $showMarketingEmailOptIn}
									<div class="col-lg-6 col-12">
										<div class="marketing-email-optin default__shadow__panel">
											<div class="default__shadow__panel__body text-center">
											<h6 class="field__title coodiv-text-7 font-weight-300">{lang key='emailMarketing.joinOurMailingList'}</h6> 
											<p class="coodiv-text-12 font-weight-300">{$marketingEmailOptInMessage}</p>
											<label class="switch__box__on__off" for="marketingoptin">
											<span class="switch__box__on__off__title">{lang key='emailMarketing.joinOurMailingList'}</span>
											<input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
											</label>
											</div>
										</div>
									</div>
									{/if}
									{if $captcha}
										<div class="col-lg-6 col-12">
											{include file="$template/includes/captcha.tpl"}
										</div>
									{/if}
								</div>
								{/if}
							
								{if $accepttos}
									<div class="form-group mb-7">
										<label for="terms-check" class="coodiv-check-input mb-7 d-flex">
											<input class="d-none accepttos" name="accepttos" type="checkbox" id="terms-check" />
											<span class="checkbox mr-2"></span>
											<p class="coodiv-text-11 text-blackish-blue mb-0">{lang key='ordertosagreement'} <a href="{$tosurl}" target="_blank">{lang key='ordertos'}</a></p>
										</label>
									</div>
								{/if}

								<p class="text-center">
									<input class="d-block w-100 btn btn-lg btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{lang key='clientregistertitle'}"/>
								</p>
						</div>
				</form>
				{/if}
			</div>
			<div class="default__shadow__panel__footer">
				<div class="coodiv-text-11 mb-0 font-weight-400 text-center">{lang key='alreadyregistered'} <a href="{$WEB_ROOT}/login.php">{lang key='clickheretologin'}</a> <span class="text-lowercase">{lang key='remoteAuthn.titleOr'}</span> <a href="{routePath('password-reset-begin')}">{lang key='loginforgotteninstructions'}</a></div>
			</div>
		</div>
		<div class="page__footer d-flex align-items-center {if $coodivsettings.registerformlanguage=='activated' || $coodivsettings.id != '1'}justify-content-between{else}justify-content-center{/if} mt-10">
			<div class="login__register__footer__links">
				<a href="{$WEB_ROOT}/homepage.php">{lang key='globalsystemname'}</a>
				{if $acceptTOS}<a href="{$tosURL}" target="_blank">{lang key='ordertos'}</a>{/if}
				<a href="{$WEB_ROOT}/contact.php">{lang key='contactUs'}</a>
			</div>
			{if $coodivsettings.registerformlanguage=='activated' || $coodivsettings.id != '1'}
				<div class="language__dropdown__select_wrapper bottom">
					{include file="$template/includes/theme-core/language-chooser.tpl"}
				</div>
			{/if}
		</div>
	</div>
</div>

