<div class="login__register__sidebar d-lg-flex d-none">

	<div class="website__identity__sidebar d-flex align-items-center justify-content-start mb-8">		
		<a class="website__identity__sidebar__link text-center d-flex align-items-center justify-content-start gap-10" href="{$WEB_ROOT}/index.php">
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
	
	
	<div class="login__register__sidebar__content">
		<h2 class="coodiv-text-6 font-weight-bold login__register__sidebar__title mb-10">{lang key='latestannouncements'}</h2>   
		<div class="login__register__sidebar__content__announcements">
			{foreach from=$announcements item=announcement}
				<div class="login__register__sidebar__content__announcements__item">
					<a class="login__register__sidebar__content__announcements__item__title" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
					<span class="login__register__sidebar__content__announcements__item__date">{$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}</span>
					<div class="login__register__sidebar__content__announcements__item__desc">
						{$announcement.text|truncate:250}					
					</div>
				</div>
			{/foreach}
		</div>
	</div>
	

	<ul class="footer__copyright__social__accounts justify-content-start mt-8">
		{foreach $socialAccounts as $account}
			<li><a target="_blank" href="{$account->getUrl()}"><i class="{$account->getFontAwesomeIcon()}"></i></a></li>
		{/foreach}
	</ul>
</div>
