<div class="custom-alert-text alert alert-{if $type eq "error"}danger{elseif $type}{$type}{else}info{/if}{if $textcenter} text-center{/if}{if $additionalClasses} {$additionalClasses}{/if}{if $hide} w-hidden{/if}"{if $idname} id="{$idname}"{/if}>
{if $errorshtml}
    <strong>{lang key='clientareaerrors'}</strong>
    <ul>
        {$errorshtml}
    </ul>
{else}
    {if $title}
        <h6 class="alert-title coodiv-text-10 mb-1">{$title}</h6>
    {/if}
    <p>{$msg}</p>
{/if}
</div>
