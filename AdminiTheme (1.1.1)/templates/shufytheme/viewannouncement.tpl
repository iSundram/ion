<div class="shadow__card">
    <div class="card__body py-9 px-10">
		<ul class="list-inline d-flex align-items-center gap-10">
            <li class="list-inline-item coodiv-text-12 font-weight-400 d-flex align-items-center gap-3 text-gray">
                <i class="far fa-calendar-alt fa-fw"></i>
                {$carbon->createFromTimestamp($timestamp)->format('l, jS F, Y')}
            </li>
            <li class="list-inline-item coodiv-text-12 font-weight-400 d-flex align-items-center gap-3 text-gray">
                <i class="far fa-clock fa-fw"></i>
                {$carbon->createFromTimestamp($timestamp)->format('H:ia')}
            </li>
        </ul>
		<div class="announcement__header d-flex align-items-center gap-10 mb-5">
			<a class="coodiv-text-6 font-weight-300 d-block">{$title}</a>
			{if $twittertweet}
                <div class="float-right">
                    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-size="large" data-via="{$twitterusername}">
                        Tweet
                    </a>
                    <script src="https://platform.twitter.com/widgets.js"></script>
                </div>
            {/if}
		</div>

        <div class="py-5 view__anonmcenemt__text">
            {$text}
        </div>

        {if $facebookrecommend}
            <div id="fb-root"></div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
            </div>
        {/if}
    </div>
	<div class="card__footer d-flex align-items-center justify-content-between">
	<a href="{routePath('announcement-index')}" class="btn btn-default btn-sm">{lang key='clientareabacklink'}</a>
	{if $editLink}
		<a href="{$editLink}" class="btn btn-default btn-sm">{lang key='edit'}</a>
	{/if}
	</div>
</div>

{if $facebookcomments}
    <div class="card">
        <div class="card-body p-5">
            <div id="fb-root">
            </div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="100%"></fb:comments>
        </div>
    </div>
{/if}


