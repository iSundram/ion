{if $selectedAccountId === $client->id}
    {foreach $client->payMethods->validateGateways()->sortByExpiryDate() as $payMethod}
        {assign "payMethodExpired" 0}
        {assign "expiryDate" ""}
        {if $payMethod->isCreditCard()}
            {if ($payMethod->payment->isExpired())}
                {assign "payMethodExpired" 1}
            {/if}

            {if $payMethod->payment->getExpiryDate()}
                {assign "expiryDate" $payMethod->payment->getExpiryDate()->format('m/Y')}
            {/if}
        {/if}
		<div class="existing__payment__card__item gap-10 {if $payMethodExpired}existing__payment__card__item__expired{/if}">
			<div class="paymethod-info radio-inline" data-paymethod-id="{$payMethod->id}">
				<input type="radio"
					   name="ccinfo"
					   class="existing-card"
					   {if $payMethodExpired}disabled{/if}
					   data-payment-type="{$payMethod->getType()}"
					   data-payment-gateway="{$payMethod->gateway_name}"
					   data-order-preference="{$payMethod->order_preference}"
					   value="{$payMethod->id}">
			</div>
			
			<div class="cc__item__icon">
				{if $payMethod->payment->getDisplayName()|strstr:"Visa"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/visa.svg" alt=""/>
				{elseif $payMethod->payment->getDisplayName()|strstr:"Jcb"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/jcb.svg" alt=""/>
				{elseif $payMethod->payment->getDisplayName()|strstr:"Mastercard" || $payMethod->payment->getDisplayName()|strstr:"MasterCard"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/mastercard.svg" alt=""/>
				{elseif $payMethod->payment->getDisplayName()|strstr:"Amex"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/american-express.svg" alt=""/>
				{elseif $payMethod->payment->getDisplayName()|strstr:"Discover"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/discover.svg" alt=""/>
				{elseif $payMethod->payment->getDisplayName()|strstr:"Diners"}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/credit-card.svg" alt=""/>
				{else}
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/creditcards/credit-card.svg" alt=""/>
				{/if}
				</div>
			<div class="paymethod-info" data-paymethod-id="{$payMethod->id}">
				<h6 class="coodiv-text-9 mb-0 d-flex align-items-center gap-5">
				{if $payMethod->isCreditCard() || $payMethod->isRemoteBankAccount()}
					{$payMethod->payment->getDisplayName()}
				{else}
					<span class="type">
					{$payMethod->payment->getAccountType()}
				    </span>
					{substr($payMethod->payment->getAccountNumber(), -4)}
				{/if}
				<small class="d-flex gap-5 coodiv-text-12">
				{$expiryDate}
				{if $payMethodExpired}<span class="label label-danger mb-0 ml-2">Expired</span>{/if}
				</small>
				</h6>
			</div>
		</div>
    {/foreach}
{/if}
