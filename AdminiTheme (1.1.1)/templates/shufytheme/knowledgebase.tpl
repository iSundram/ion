{if $kbcats}
<div class="knowledgebase__search__bar__wrapper">
	<form role="form" method="post" action="{routePath('knowledgebase-search')}">
		<input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{lang key='clientHomeSearchKb'}" />
		<button type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary">
			{lang key='search'}
		</button>
	</form>
</div>
<div class="kbcat__wrapper mt-8 mb-7">
	<div class="tab__header mb-4">
		<h3 class="coodiv-text-9 mb-0">{lang key='knowledgebasetitle'} {lang key='ordercategories'}</h3>
	</div>
	<div class="shadow__card kb__category__list overflow-hidden">
        {foreach $kbcats as $category}
                <div class="kb__category__item">
                    <a href="{routePath('knowledgebase-category-view', {$category.id}, {$category.urlfriendlyname})}" class="d-flex align-items-center justify-content-between" data-id="{$category.id}">
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
		<h6 class="coodiv-text-9 font-weight-500">{lang key='knowledgebasenoarticles'}</h6>
	</div>
</div>
{/if}

{if $kbmostviews}
<div class="kbcat__wrapper mt-8 mb-7">
	<div class="tab__header mb-4">
		<h3 class="coodiv-text-9 mb-0">{lang key='kbsuggestions'}</h3>
		<p class="coodiv-text-12 text-gray font-weight-400">{lang key='knowledgebasepopular'}</p>
	</div>
	
	<div class="shadow__card kb__category__list kbmostviews__list overflow-hidden">
        {foreach $kbmostviews as $kbarticle}
			<div class="kb__category__item">
				<a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" class="d-flex align-items-center justify-content-between" data-id="{$kbarticle.id}">
					<div class="d-flex gap-10">
						<i class="fas fa-file mt-1 mr-3"></i>
						<div class="text">
							<h6 class="coodiv-text-10 mb-0">{$kbarticle.title}</h6>
							<p class="coodiv-text-12 font-weight-400 text-gray">{$kbarticle.article|truncate:100:"..."}</p>
						</div>
					</div>
                </a>
			</div>
		{/foreach}
	</div>
</div>
{/if}
