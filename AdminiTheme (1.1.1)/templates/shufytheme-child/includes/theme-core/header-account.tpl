{if $loggedin}
	<div class="header__item header__icon__small header__item_user">
		<button class="header__head">
		{if $coodivsettings.gravatar=='activated' || $coodivsettings.id != '1'}
			<img src="https://www.gravatar.com/avatar/{$loggedinuser->email|md5}" alt="Avatar">
		{else}
			<img src="{$WEB_ROOT}/templates/{$template}/assets/img/blank-avatar.webp" alt="image">
		{/if}
		</button>
		<div class="header__body header__account__infomrmations">
		<div class="header__top">
			<div class="header__title">
				<div class="header__title__informations__avatar">
					{if $coodivsettings.gravatar=='activated' || $coodivsettings.id != '1'}
						<img src="https://www.gravatar.com/avatar/{$loggedinuser->email|md5}" alt="Avatar">
					{else}
						<img src="{$WEB_ROOT}/templates/{$template}/assets/img/blank-avatar.webp" alt="image">
					{/if}
				</div>
				<div class="text">{lang key='welcomeback'}, {$clientsdetails.firstname} <a href="{$WEB_ROOT}/clientarea.php?action=details">{$LANG.clientareanavdetails}</a></div>
			</div>
			<div class="actions actions_small">
			  <button class="actions__button"><i class="fal fa-ellipsis-h"></i></button>
			  <div class="actions__body">
				<a href="{$WEB_ROOT}/user/profile" class="actions__option"><i class="icon fal fa-pen"></i> {lang key='yourProfile'}</a>
				<a href="{$WEB_ROOT}/clientarea.php?action=changepw" class="actions__option"><i class="icon fal fa-lock"></i> {lang key='clientareanavchangepw'}</a>
				<a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="actions__option"><i class="icon fal fa-address-card"></i> {lang key='clientareanavcontacts'}</a>
				<a href="{$WEB_ROOT}/logout.php" class="actions__option"><i class="icon fal fa-power-off"></i> {lang key='logouttitle'}</a>
			  </div>
			</div>
		  </div>
		  <div class="header__nav__wrapper">
			  <div class="header__nav">
				  <a class="header__link" href="{$WEB_ROOT}/clientarea.php">{lang key='clientareatitle'}</a>
				  <a class="header__link" href="{$WEB_ROOT}/user/accounts">{lang key='navSwitchAccount'}</a>
				  <a class="header__link" href="{$WEB_ROOT}/account/paymentmethods">{lang key='paymentMethods.title'}</a>
				  <div class="nav__link__wrapper__flex d-flex justify-content-between align-items-center"><a class="header__link" href="{$WEB_ROOT}/clientarea.php?action=addfunds">{lang key='affiliatesbalance'}</a> <div class="header__links__downloads"><a class="compteur" href="{$WEB_ROOT}/clientarea.php?action=addfunds">{$clientsstats.creditbalance}</a></div></div>
				  <a class="header__link" href="{$WEB_ROOT}/clientarea.php?action=security">{lang key='orderForm.accountSecurity'}</a>
			  </div>
			  <div class="header__nav">
				  <span class="header__link__title">{lang key='clientareatitle'}</span>
				  <a class="header__link" href="{$WEB_ROOT}/clientarea.php"><i class="fal fa-home"></i> {lang key='clientareatitle'}</a>
				  <div class="nav__link__wrapper__flex d-flex justify-content-between align-items-center"><a class="header__link" href="{$WEB_ROOT}/clientarea.php?action=services"><i class="fal fa-box"></i> {lang key='clientareanavservices'}</a> <div class="header__links__downloads"><a class="compteur" href="{$WEB_ROOT}/clientarea.php?action=services">{$clientsstats.productsnumactive}</a></div></div>
				  <div class="nav__link__wrapper__flex d-flex justify-content-between align-items-center"><a class="header__link" href="{$WEB_ROOT}/clientarea.php?action=domains"><i class="fal fa-globe"></i> {lang key='clientareanavdomains'}</a> <div class="header__links__downloads"><a class="compteur" href="{$WEB_ROOT}/clientarea.php?action=domains">{$clientsstats.numactivedomains}</a></div></div>
				  <div class="nav__link__wrapper__flex d-flex justify-content-between align-items-center"><a class="header__link" href="{$WEB_ROOT}/supporttickets.php"><i class="fal fa-life-ring"></i> {lang key='clientareanavsupporttickets'}</a> <div class="header__links__downloads"><a class="compteur" href="{$WEB_ROOT}/supporttickets.php">{$clientsstats.numtickets}</a></div></div>
				  <div class="nav__link__wrapper__flex d-flex justify-content-between align-items-center"><a class="header__link" href="{$WEB_ROOT}/clientarea.php?action=invoices"><i class="fal fa-wallet"></i> {lang key='invoices'}</a> <div class="header__links__downloads"><a class="compteur" href="{$WEB_ROOT}/clientarea.php?action=invoices">{$clientsstats.numunpaidinvoices}</a></div></div>
			  </div>
			  <div class="header__nav">
				<a class="header__link color" href="{$WEB_ROOT}/cart.php"><i class="fal fa-shopping-bag"></i> {lang key='navservicesorder'}</a>
			  </div>
			  <div class="header__nav">
				  <a class="header__link" href="{$WEB_ROOT}/serverstatus.php">{lang key='networkstatustitle'}</a>
				  <a class="header__link" href="{$WEB_ROOT}/knowledgebase.php">{lang key='knowledgebasetitle'}</a>
				  <a class="header__link" href="{$WEB_ROOT}/downloads.php">{lang key='downloadstitle'}</a>
			  </div>
		  </div>
		</div>
	</div>
{/if}