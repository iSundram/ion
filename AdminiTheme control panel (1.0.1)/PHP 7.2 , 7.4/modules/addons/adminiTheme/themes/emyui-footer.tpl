<ul class="footer">
    {foreach from=$menu item=item}
		<li {if $item.css_id} id="{$item.css_id}"{/if} {if $item.css_class} class="{$item.css_class}"{/if}>
			<a href="{$item.fullurl}" target="{$item.targetwindow}">
			{if $item.css_icon}<i class="{$item.css_icon}"></i>{/if}
			{$item.title}
			{if $item.badge!=="none"}&nbsp;<span class="badge">{$item.badge}</span>{/if}
			</a>
			{if $item.children}
			<ul>
				{foreach from=$item.children item=level2}
				<li {if $level2.css_class} class="{$level2.css_class}"{/if}>
					<a href="{$level2.fullurl}" target="{$level2.targetwindow}">{if $level2.css_icon}<i class="{$level2.css_icon}"></i>&nbsp;{/if}{$level2.title}</a>
				</li>
				{/foreach}
			</ul>
			{/if}
		</li>
    {/foreach}
</ul>