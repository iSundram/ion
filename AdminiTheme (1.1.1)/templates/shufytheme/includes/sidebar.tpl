{foreach $sidebar as $item}
	{if !$item->getName()|lower|strstr:"sidebar"}
	<div menuItemName="{$item->getName()}" class="nav__items__wrapper {$item->getName()|lower} {if $item->getClass()} {$item->getClass()}{/if}{if $item->getExtra('mobileSelect') and $item->hasChildren()} d-none d-md-block{/if}" {if $item->getAttribute('id')}id="{$item->getAttribute('id')}"{/if}>
	   <span class="main__nav__title">
			{if $item->hasIcon()}<i class="{$item->getIcon()}"></i>{/if}
			<span class="main__nav__title__text">{$item->getLabel()}</span>
			{if $item->hasBadge()}<span class="badge">{$item->getBadge()}</span>{/if}
        </span>


            <!-- {if $item->hasBodyHtml()} -->
                <!-- <div class=""> -->
                    <!-- {$item->getBodyHtml()} -->
                <!-- </div> -->
            <!-- {/if} -->
			
			<ul class="nav {if $item->getChildrenAttribute('class')}{$item->getChildrenAttribute('class')}{/if}" role="tablist">
            {if $item->hasChildren()}
                <!-- <div class="list-group list-group-flush d-md-flex{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}" role="tablist"> -->
                    {foreach $item->getChildren() as $childItem}
                        {if $childItem->getUri()}
							<li class="nav-item">
                            <a menuItemName="{$childItem->getName()}"
                               href="{$childItem->getUri()}"
                               class="nav-link list-group-item {if $childItem->isDisabled()} disabled{/if}{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"
                               {if $childItem->getAttribute('dataToggleTab')}
                                   data-toggle="list" role="tab"
                               {/if}
                               {assign "customActionData" $childItem->getAttribute('dataCustomAction')}
                               {if is_array($customActionData)}
                                   data-active="{$customActionData['active']}"
                                   data-identifier="{$customActionData['identifier']}"
                                   data-serviceid="{$customActionData['serviceid']}"
                               {/if}
                               {if $childItem->getAttribute('target')}
                                   target="{$childItem->getAttribute('target')}"
                               {/if}
                               id="{$childItem->getId()}">
                                {if is_array($customActionData)}<span class="loading hidden w-hidden" style="display: none;"><i class="fas fa-spinner fa-spin"></i></span>{/if}
                                
                                {$childItem->getLabel()}
								{if $childItem->hasBadge()}<span class="badge">{$childItem->getBadge()}</span>{/if}
                            </a>
							</li>
                        {else}
                            <li menuItemName="{$childItem->getName()}" class="nav-item-text {if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                {$childItem->getLabel()}
								{if $childItem->hasBadge()}<span class="badge">{$childItem->getBadge()}</span>{/if}
                            </li>
                        {/if}
                    {/foreach}
                <!-- </div> -->
            {/if}
			{if $item->hasFooterHtml()}
			<li class="nav-item-footer">
					{$item->getFooterHtml()|replace:'btn-success':'btn-primary'|replace:'btn-danger':'btn-default'}
			</li>
			{/if}
			</ul>



        
    </div>
	{/if}
{/foreach}
