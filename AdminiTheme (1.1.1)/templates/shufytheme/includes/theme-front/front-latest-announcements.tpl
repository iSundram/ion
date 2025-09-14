{if $announcements}
<div class="homepage__main__announcements py-14">
	<div class="row justify-content-center mb-10">
		<div class="col-md-8 col-12 text-center">
			<h6 class="coodiv-text-10 font-weight-300 sub-color text-uppercase">{lang key='announcementsdescription'}</h6>
			<h6 class="coodiv-text-6 font-weight-700">{lang key='latestannouncements'}</h6>
		</div>
	</div>
	<div class="row justify-content-start">
		{foreach from=$announcements item=announcement}
			{if $announcement@index < 3}
				<div class="col-lg-4 col-md-6 col-12">
					<div class="homepage__main__announcements__box light-mode-texts">
						<div class="homepage__main__announcements__box__body">
							<a class="homepage__main__announcements__box__title main-text-color hover-underline coodiv-text-9 font-weight-700 mb-3 d-block" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
							<div class="homepage__main__announcements__box__text__wrapper">{$announcement.text}</div>
						</div>
						<div class="homepage__main__announcements__box__footer">
						<h6 class="announcements__date coodiv-text-12 font-weight-400"><i class="fal fa-calendar"></i> {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}</h6>
						<a class="announcements__readmore" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}"><i class="fal fa-eye"></i> {lang key='readmore'}</a>
						</div>
					</div>
				</div>
			{/if}
		{/foreach}
	</div>	
</div>
{/if}