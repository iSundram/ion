<div class="content-block standout-features standout">
    <div class="container">
        <div class="row text-center">
            {if $type == 'ev'}
                <div class="col-md-6 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.ev.visualVerification'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.ev.visualVerificationDescription'}</p>
                </div>
            {elseif $type == 'ov'}
                <div class="col-md-6 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.ov.ov'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.ov.ovDescription'}</p>
                </div>
            {else}
                <div class="col-md-6 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.delivery'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.deliveryDescription'}</p>
                </div>
            {/if}
            <div class="col-md-6 col-lg-4">
                <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.siteSeal'}</h4>
                <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.siteSealDescription'}</p>
            </div>
            {if $type == 'ev'}
                <div class="col-md-12 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.ev.warranty'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.ev.warrantyDescription'}</p>
                </div>
            {elseif $type == 'ov'}
                <div class="col-md-12 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.ov.warranty'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.ov.warrantyDescription'}</p>
                </div>
            {else}
                <div class="col-md-12 col-lg-4">
                    <h4 class="coodiv-text-8 font-weight-700">{lang key='store.ssl.shared.googleRanking'}</h4>
                    <p class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.googleRankingDescription'}</p>
                </div>
            {/if}
        </div>
    </div>
</div>


<div class="py-18 border-top-light {$type}">
	<div class="inner__page__content__container">
		<div class="row justify-content-center px-lg-0 px-10 mb-13">
			<div class="col-lg-8 col-11 text-center">
				<h2 class="coodiv-text-4 font-weight-700 mb-4">{lang key='store.ssl.shared.features'}</h2>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-lock"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.encryptData'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-credit-card"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.secureTransactions'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-trophy"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.legitimacy'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-certificate"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.fastestSsl'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-window-maximize"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.browserCompatability'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-search"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.seoRank'}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-clock"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">
						 {if $type == 'ev'}
						   {lang key='store.ssl.shared.ev.issuance'}
						{elseif $type == 'ov'}
						   {lang key='store.ssl.shared.ov.issuance'}
						{else}
						  {lang key='store.ssl.shared.issuance'}
						{/if}
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3 col-md-6 col-12">
				<div class="box-features-one">
					<i class="fad fa-sync"></i>
					<div class="text mt-7">
						<h5 class="coodiv-text-10 font-weight-400">{lang key='store.ssl.shared.freeReissues'}</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
