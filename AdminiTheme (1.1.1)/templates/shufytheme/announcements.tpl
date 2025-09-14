<div class="announcements">
	<div class="shadow__card announcements__wrapper">
		{foreach $announcements as $announcement}
			<div class="announcement">
				<h6 class="coodiv-text-12 font-weight-400 d-flex align-items-center gap-3 text-gray"><i class="fal fa-calendar-alt fa-fw"></i>{$carbon->createFromTimestamp($announcement.timestamp)->format('jS F Y')}</h6>
				<div class="announcement__header d-flex align-items-center gap-10  mb-5">
					<a class="coodiv-text-6 font-weight-300 d-block" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
					{if $announcement.editLink}
						<a href="{$announcement.editLink}" class="btn btn-default btn-sm">{lang key='edit'}</a>
					{/if}
				</div>
				<article>
					{if $announcement.text|strip_tags|strlen < 350}
						{$announcement.text}
					{else}
						{$announcement.summary}
					{/if}
				</article>
				<div class="d-flex align-items-center justify-content-start">
					<a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="btn btn-primary-light btn-sm">
						{lang key="announcementscontinue"}
					</a>
				</div>
			</div>
		{foreachelse}
			{include file="$template/includes/alert.tpl" type="info" msg="{lang key='noannouncements'}" textcenter=true}
		{/foreach}
	</div>
</div>

{if $prevpage || $nextpage}
    <nav aria-label="Announcements navigation">
        <ul class="pagination">
            {foreach $pagination as $item}
                <li class="page-item{if $item.disabled} disabled{/if}{if $item.active} active{/if}">
                    <a class="page-link" href="{$item.link}">{$item.text}</a>
                </li>
            {/foreach}
        </ul>
    </nav>
{/if}

{if $announcementsFbRecommend}
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/{lang key='locale'}/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
{/if}
