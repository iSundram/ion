{foreach $navbar as $item}
	{if $item->hasChildren()}
		<div menuItemName="{$item->getName()}" class="sidebar__item sidebar__item_dropdown" id="{$item->getId()}-menu-wrapper">
			<div class="sidebar__top">
			  <button class="sidebar__head">
				  {if $item->hasIcon()}
				  <i class="side__bar__item__icon {$item->getIcon()}"></i>
				  {else}
				  <i class="side__bar__item__icon fal fa-home"></i>
				  {/if}
				  <span class="side__bar__item__text">{$item->getLabel()}</span>
				  {if $item->getBadge()!=="none" && $item->hasBadge()}
					 <span class="side__bar__item__icon__badge">{$item->getBadge()}</span>
				  {/if}
			  </button>
			</div>
			<div class="sidebar__body links__with__background" id="{$item->getId()}-menu-item">
				<span class="sidebar__dropdown__title">{$item->getLabel()}</span>
				<div class="sidebar__body__scrollable__element">
					{foreach $item->getChildren() as $childItem}
						<a href="{$childItem->getUri()}" class="sidebar__link {if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}" {if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
							 {if $childItem->hasIcon()}
							 <i class="{$childItem->getIcon()}"></i>
							 {/if}
							 {$childItem->getLabel()}
							 {if $childItem->hasBadge()}<span class="childitem__side__bar__item__icon__badge">{$childItem->getBadge()}</span>{/if}
						 </a>
					{/foreach}
				</div>
			</div>
		</div>
	{else}
		<a menuItemName="{$item->getName()}" id="{$item->getId()}" class="sidebar__item {if $item->getClass()} {$item->getClass()}{/if}" href="{$item->getUri()}" {if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if} data-placement="right" title="{$item->getLabel()}">
			{if $item->hasIcon()}
			<i class="side__bar__item__icon {$item->getIcon()}"></i>
			{else}
			<i class="side__bar__item__icon fal fa-home"></i>
			{/if}
			<span class="side__bar__item__text">{$item->getLabel()}</span>
			{if $item->getBadge()!=="none" && $item->hasBadge()}
				<span class="side__bar__item__icon__badge">{$item->getBadge()}</span>
			{/if}
		</a>
	{/if}	
{/foreach}

