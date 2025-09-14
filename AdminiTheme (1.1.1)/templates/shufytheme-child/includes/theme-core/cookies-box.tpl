<div id="popuppfirsttime" class="flowting__cookies__box__wrapper {$coodivsettings.cookiesboxposition}">
	<div class="flowting__cookies__box__header">
		<h6 class="coodiv-text-9 font-weight-bold mb-0">Do you allow us to use cookies ?</h6>
	</div>
	<div class="flowting__cookies__box__body">
	<p class="coodiv-text-11 font-weight-300 mb-0">
	{if $coodivsettings.cookiesboxtext == null}
		We use cookies to learn where you struggle when you're navigating our website and them for your future visit, learn more about cookies in our <a href="#">terms of use</a>
	{else}
		{$coodivsettings.cookiesboxtext}
	{/if}
	</p>
	</div>
	<div class="flowting__cookies__box__footer btn__cotaniner d-flex flex-wrap gap-5 justify-content-end">
		<button id="gbpr-badge-decline" type="button" class="btn btn-light btn-sm">decline all</button>
		<button id="gbpr-badge-close" type="button" class="btn btn-primary btn-sm">Allow all</button>
	</div>
</div>