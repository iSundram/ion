<div class="front__get__started__wrapper text-center dark-mode-texts">
	<div class="main__page__content">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-10 col-12">
				<h6 class="coodiv-text-4 font-weight-700">
					{if $coodivhomepagesettings.themehomepagesettingsavingbannertitle == null}
						Get Started Now, And Save Up To 60%
					{else}
						{$coodivhomepagesettings.themehomepagesettingsavingbannertitle}
					{/if}
				</h6>
				<p class="coodiv-text-9 font-weight-300">
					{if $coodivhomepagesettings.themehomepagesettingsavingbannersubtitle == null}
						Mauris blandit arcu nec tellus lobortis, vitae aliquam lectus varius. Nunc sed magna ac nisi ultrices aliquam a ac turpis. Proin sagittis vel ipsum vitae luctus.
					{else}
						{$coodivhomepagesettings.themehomepagesettingsavingbannersubtitle}
					{/if}
				</p>
				<div class="d-flex align-items-center justify-content-center mt-10">
					<a href="{if $coodivhomepagesettings.themehomepagesettingsavingbannerbtnlink == null}#{else}{$coodivhomepagesettings.themehomepagesettingsavingbannerbtnlink}{/if}" class="btn btn-lg btn-primary-outline-white">
						{if $coodivhomepagesettings.themehomepagesettingsavingbannerbtntext == null}
							Learn more
						{else}
							{$coodivhomepagesettings.themehomepagesettingsavingbannerbtntext}
						{/if}
					</a>
				</div>
			</div>
		</div>
	</div>
</div>