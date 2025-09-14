<div class="header__latest__annoncements">
	<div class="header__new__title"><span class="badge news__title" href="#" target="_blank" >{lang key='news'}:</span></div>
	<div class="header__new__articles">
	{foreach from=$announcements item=announcement}
		<a class="news-article" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" target="_blank">
			{$announcement.title}
		</a>
	{/foreach}
	</div>
</div>