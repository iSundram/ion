<div class="row justify-content-start mb-10">
	<div class="col-md-8 col-12">
		<h6 class="coodiv-text-8 font-weight-400 mb-0">{lang key="createNewSupportRequest"}</h6>
		<p class="coodiv-text-11 font-weight-400 text-gray">{lang key='supportticketsheader'}</p>
	</div>
</div>

<div class="row justify-content-start">
	{foreach $departments as $num => $department}
	<div class="col-lg-4 col-md-6 col-12">
		<a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}" href="#" class="shadow__card d-block support__departments__block h-100 coodiv-hover-y">
			<div class="card__header card__header__no__border d-flex align-items-center pb-4">
			<h6 class="coodiv-text-9 font-weight-500 mb-0">{$department.name}</h6>
			</div>
			<div class="card__body pt-0">
			{if $department.description}
				<p class="coodiv-text-11 font-weight-400 mb-0">{$department.description}</p>
			{/if}
			</div>
		</a>
	</div>
	{foreachelse}
		<div class="col-md-12">
			{include file="$template/includes/alert.tpl" type="info" msg="{lang key='nosupportdepartments'}" textcenter=true}
		</div>
	{/foreach}
</div>
