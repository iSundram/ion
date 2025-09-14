{*
{$price}
<span class="prices__cycles" id="pricingCycle">
{if $priceCycle eq "monthly"}{lang key="pricingCycleShort.monthly"}
{elseif $priceCycle eq "quarterly"}{lang key="pricingCycleShort.quarterly"}
{elseif $priceCycle eq "semiannually"}{lang key="pricingCycleShort.semiannually"}
{elseif $priceCycle eq "annually"}{lang key="pricingCycleShort.annually"}
{elseif $priceCycle eq "biennially"}{lang key="pricingCycleShort.biennially"}
{elseif $priceCycle eq "triennially"}{lang key="pricingCycleShort.triennially"}
{/if}
</span>
*}

<h6 class="price__amount coodiv-text-4 font-weight-bold mb-0">
    {if $priceCurrency}
	<span class="price-prefix">{$priceCurrency}</span>
	{/if}
    {$price}
    {if $priceCurrencySuffix}{$priceCurrencySuffix}
	{/if}
</h6>

{if $priceType !=="free" && $priceType !=="onetime"}
    <p class="coodiv-text-12 font-weight-400 text-gray price-cycle {if $priceCycleShort}price__cycle__inline{/if}">
    {if $priceCycle eq "monthly"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.monthly"}{else}{$LANG.orderpaymenttermmonthly}{/if}
    {elseif $priceCycle eq "quarterly"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.quarterly"}{else}{$LANG.orderpaymenttermquarterly}{/if}
    {elseif $priceCycle eq "semiannually"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.semiannually"}{else}{$LANG.orderpaymenttermsemiannually}{/if}
    {elseif $priceCycle eq "annually"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.annually"}{else}{$LANG.orderpaymenttermannually}{/if}
    {elseif $priceCycle eq "biennially"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.biennially"}{else}{$LANG.orderpaymenttermbiennially}{/if}
    {elseif $priceCycle eq "triennially"}
        {if $priceCycleShort}/{lang key="pricingCycleShort.triennially"}{else}{$LANG.orderpaymenttermtriennially}{/if}
    {/if}
    {if $priceSetupFee} + {$priceSetupFee->toPrefixed()} {$LANG.ordersetupfee}{/if}
    </p>
{else if $priceSetupFee}
    <div class="price-cycle">+ {$priceSetupFee->toPrefixed()} {$LANG.ordersetupfee}</div>
{/if}