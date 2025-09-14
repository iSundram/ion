{if $dlcats}
<div class="knowledgebase__search__bar__wrapper">
	<form role="form" method="post" action="{routePath('download-search')}">
		<input type="text" name="search" id="inputDownloadsSearch" class="form-control " placeholder="{lang key='downloadssearch'}" />
		<button type="submit" id="btnDownloadsSearch" class="btn btn-primary">
			{lang key='search'}
		</button>
	</form>
</div>
<div class="kbcat__wrapper mt-8 mb-7">
	<div class="tab__header mb-4">
		<h3 class="coodiv-text-9 mb-0">{lang key='downloadstitle'} {lang key='ordercategories'}</h3>
	</div>
	<div class="shadow__card kb__category__list overflow-hidden">
        {foreach $dlcats as $category}
                <div class="kb__category__item">
                    <a href="{routePath('download-by-cat', {$category.id}, {$category.urlfriendlyname})}" class="d-flex align-items-center justify-content-between" data-id="{$category.id}">
                        <div class="d-flex align-items-center gap-10">
							<i class="fas fa-folder"></i>
							<h6 class="coodiv-text-10 mb-0">{$category.name} <small class="text-gray">({$category.numarticles})</small></h6>
						</div>
                    </a>
                </div>
        {/foreach}
	</div>
</div>
{else}
<div class="py-6">
	<div class="py-7 no__data__error__box with__icon d-flex flex-column justify-content-center align-items-center">
		<div class="message__image mb-7">
			{include file="$template/assets/svg/core/empty-folder.tpl"}         
		</div>
		<h6 class="coodiv-text-9 font-weight-500">{lang key='downloadsnone'}</h6>
	</div>
</div>
{/if}
{if $mostdownloads}
	<div class="kbcat__wrapper mt-8 mb-7">
		<div class="tab__header mb-4">
			<h3 class="coodiv-text-9 mb-0">{lang key='downloadspopular'}</h3>
		</div>
		
		<div class="shadow__card kb__category__list downloads__list overflow-hidden">
			{foreach $mostdownloads as $download}
				<div class="kb__category__item">
					<a href="{$download.link}" class="d-flex align-items-center justify-content-between" data-id="{$kbarticle.id}">
						<div class="d-flex gap-10">
							{$download.type|replace:'alt':' class="download__icon pr-1" alt'}
							<div class="text">
								<div class="d-flex align-items-center gap-5">
								<h6 class="coodiv-text-10 mb-0">{$download.title} </h6>
								<span class="label label-info m-0">{$download.filesize}</span>
								{if $download.clientsonly}
									<span class="label label-danger m-0">
										{lang key='restricted'}
									</span>
								{/if}
								</div>
								<p class="coodiv-text-12 font-weight-400 text-gray">{$download.description}</p>
							</div>
						</div>
					</a>
				</div>
			{/foreach}
		</div>
	</div>
{/if}
