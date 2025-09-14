<link href="{$WEB_ROOT}/templates/{$template}/assets/css/store.css?v=1.0.0" rel="stylesheet">

<div class="full__with__section landing-page bg-white ssl">

	<div class="pt-15 pb-12">
		<div class="inner__page__content__container">
			<div class="row justify-content-center px-lg-0 px-10 mb-13">
				<div class="col-lg-8 col-11 text-center">
					<h6 class="promo__title coodiv-text-4 font-weight-700">{lang key="store.ssl.dv.title"}</h6>
					<p class="promo__sub__title coodiv-text-8 font-weight-300 mt-4">{lang key="store.ssl.landingPage.tagline1"}</p>
					<p class="promo__sub__title coodiv-text-8 font-weight-300">{lang key="store.ssl.landingPage.tagline2"}</p>
					<div class="promo__btns banner__actions__btns mt-10">
						<a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Tooltip on left" class="btn btn-lg btn-primary">Get Started Now</a>
						<a href="#" class="btn btn-lg btn-primary-outline">{lang key="learnmore"}</a>
					</div>
				</div>
			</div>
		</div>
	</div>
    {include file="$template/store/ssl/shared/nav.tpl" current="dv"}
	
	
	<div class="py-14 white-bg position-relative">
		<div class="inner__page__content__container">
			<div class="row justify-content-start align-items-center">
				<div class="col-md-5 col-12 position-relative">
				<div class="section__graphic__sticky">
					<img src="{$WEB_ROOT}/templates/{$template}/assets/img/core-img/ssl.svg">
                </div>	
				</div>
				<div class="col-md-7 col-12">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.dv.descriptionTitle"}</h2>
					<p class="coodiv-text-9 font-weight-400">{lang key='store.ssl.shared.siteSealDescription'}</p>
					<div class="store__article__text">{lang key="store.ssl.dv.descriptionContent"}</div>
				</div>
			</div>
			
			<div class="row justify-content-center px-lg-0 px-10 mb-8 mt-15">
				<div class="col-lg-8 col-11 text-center">
					<h2 class="coodiv-text-5 font-weight-700 mb-4">{lang key="store.ssl.useCases.title"}</h2>
				</div>
			</div>

            <div class="row features__boxes">
                <div class="col-md-4 col-6">
					<div class="shadow__card py-8 h-100">
						<div class="card__body text-center">
							<i class="fal fa-comment-alt-lines"></i>
							<h4 class="coodiv-text-7 font-weight-200">{lang key="store.ssl.useCases.blogs"}</h4>
						</div>
					</div>
                </div>
                <div class="col-md-4 col-6">
					<div class="shadow__card py-8 h-100">
						<div class="card__body text-center">
							<i class="fal fa-file-alt"></i>
							<h4 class="coodiv-text-7 font-weight-200">{lang key="store.ssl.useCases.infoPages"}</h4>
						</div>
					</div>
                </div>
                <div class="col-md-4 col-6">
					<div class="shadow__card py-8 h-100">
						<div class="card__body text-center">
							<i class="fal fa-server"></i>
							<h4 class="coodiv-text-7 font-weight-200">{lang key="store.ssl.useCases.serverComms"}</h4>
						</div>
					</div>
                </div>
            </div>
			
			
		</div>
	</div>


    {include file="$template/store/ssl/shared/certificate-pricing.tpl" type="dv"}

    {include file="$template/store/ssl/shared/features.tpl" type="dv"}

    {include file="$template/store/ssl/shared/logos.tpl"}

</div>
