{if $kbarticle.voted}
    {include file="$template/includes/alert.tpl" type="success alert-bordered-left" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
{/if}
<div class="shadow__card">
	<div class="card__header d-flex align-items-center justify-content-between">
		<h6 class="coodiv-text-9 mb-0">{$kbarticle.title}</h6>
		<div class="btns__group d-flex align-items-center gap-5">
			<a href="#" class="btn btn-default btn-sm" onclick="window.print();return false">{lang key='print'}</a>
			{if $kbarticle.editLink}
				<a href="{$kbarticle.editLink}" class="btn btn-default btn-sm">
					{lang key='edit'}
				</a>
			{/if}
		</div>
	</div>
	<div class="card__body">
		<article class="knowledgebase__article__text">
            {$kbarticle.text}
        </article>
	</div>
</div>

<div class="shadow__card mt-6">
	<div class="card__body">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<h6 class="coodiv-text-10 font-weight-600 mb-1">{if $kbarticle.voted}{$LANG.knowledgebaserating}{else}{$LANG.knowledgebasehelpful}{/if}</h6>
				<p class="coodiv-text-12 font-weight-400 text-gray"><i class="fas fa-heart mr-2"></i> {$kbarticle.useful} {$LANG.knowledgebaseratingtext} ({$kbarticle.votes} {$LANG.knowledgebasevotes})</p>
			</div>
			{if !$kbarticle.voted}
				<div class="col-auto">					
					 <form action="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" method="post" class="d-flex justify-content-between">
						<input type="hidden" name="useful" value="vote">
						<div class="btns__group d-flex align-items-center gap-5">
							<button class="btn btn-sm btn-primary-light align-items-center gap-4" type="submit" name="vote" value="yes">
								<i class="fas fa-thumbs-up"></i>
								{lang key='knowledgebaseyes'}
							</button>
							<button class="btn btn-sm btn-primary-light align-items-center gap-4" type="submit" name="vote" value="no">
								<i class="fas fa-thumbs-down"></i>
								{lang key='knowledgebaseno'}
							</button>
						</div>
					</form>
				</div>
			{/if}
		</div>
	</div>
</div>
{if $kbarticles}
	<div class="kbcat__wrapper mt-7">
		<div class="tab__header mb-4">
			<h3 class="coodiv-text-9 mb-0">{lang key='knowledgebaserelated'}</h3>
			<p class="coodiv-text-12 text-gray font-weight-400">{lang key='knowledgebasepopular'}</p>
		</div>
		<div class="shadow__card kb__category__list kbmostviews__list overflow-hidden">
			{foreach $kbarticles as $kbarticle}
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