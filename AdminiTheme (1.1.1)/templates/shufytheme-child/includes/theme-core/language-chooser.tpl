{if $languagechangeenabled && count($locales) > 1}
	<div class="language__dropdown__select dropdown dropup language" data-language-select>
		<a class="dropdown__toggle" data-toggle="dropdown" href="#">
			<span class="language__flag toggle__flag {$activeLocale.language|lower}"></span>
			<span class="language__flag__text">{$activeLocale.localisedName}</span>
		</a>
		<div class="dropdown-menu dropdown__language__search" id="languageChooserContent">
			<input type="hidden" data-language-select-value value="{$activeLocale.localisedName}">
			<input type="hidden" data-language-select-backlink value="{$currentpagelinkback}">
			<input type="hidden" data-language-select-lang value="{$LANG['upgradeService']['select']}">
			<div class="dropdown__language__search__child dropdown__header">
				<i class="fal fa-search"></i>
				<input class="languagefiltersearch form-control" placeholder="{$LANG.search}..." type="text" data-language-select-search>
			</div>
			<div class="dropdown__menu__items has-scroll" data-language-select-list>
			{foreach $locales as $locale}
				<li class="dropdown__language__search__child dropdown__menu__item {if $activeLocale.language == $locale.language}active{/if}">
					<a href="{$currentpagelinkback}language={$locale.language}" data-value="{$locale.language}" data-language="{$locale.localisedName}">
						<span class="language__flag {$locale.language}"></span>
						<span class="language__text">{$locale.localisedName}</span>
					</a>
				</li>
			{/foreach}
			</div>                 
		</div>
	</div>
{/if}

