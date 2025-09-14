<link rel="shortcut icon" type="image/x-icon" href="{if $coodivsettings.seositefavicon == null}{$WEB_ROOT}/templates/{$template}/assets/img/favicon.ico{else}{$coodivsettings.seositefavicon}{/if}">
<meta name="description" content="{$coodivsettings.seositedescription}">
<meta name="owner" content="{$coodivsettings.seoorganizationname}">
<meta name="copyright" content="{if $coodivsettings.seositename == null}{$companyname}{else}{$coodivsettings.seositename}{/if}">
<meta name="category" content="{$coodivsettings.seocontacttype}">
<meta name="classification" content="{$coodivsettings.seowebsitetype}">
<meta name="locale" content="{$LANG.locale}" />
<meta property="og:locale" content="{$LANG.locale}" />
<meta property="og:site_name" content="{if $coodivsettings.seositename == null}{$companyname}{else}{$coodivsettings.seositename}{/if}" />
<meta property="og:type" content="{$coodivsettings.seowebsitetype}" />
<meta property="og:title" content="{if $coodivsettings.seositename == null}{$companyname}{else}{$coodivsettings.seositename}{/if}" />
<meta property="og:description" content="{$coodivsettings.seositedescription}" />
<meta property="og:url" content="{$systemsslurl}" />
<meta property="og:image" content="{if $coodivsettings.seoopengraph == null}https://coodiv.net/blog/wp-content/uploads/2022/05/placeholder.jpg{else}{$coodivsettings.seoopengraph}{/if}" />
<meta property="og:image:secure_url" content="{if $coodivsettings.seoopengraph == null}https://coodiv.net/blog/wp-content/uploads/2022/05/placeholder.jpg{else}{$coodivsettings.seoopengraph}{/if}" />
<meta name="twitter:image" content="{if $coodivsettings.seoopengraph == null}https://coodiv.net/blog/wp-content/uploads/2022/05/placeholder.jpg{else}{$coodivsettings.seoopengraph}{/if}" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="{$coodivsettings.seotwitterusername}" />
<meta name="twitter:title" content="{if $coodivsettings.seositename == null}{$companyname}{else}{$coodivsettings.seositename}{/if}" />
<meta name="twitter:description" content="{$coodivsettings.seositedescription}" />
<meta name="og:phone_number" content="{$coodivsettings.seoorganizationphonenumber}"/>
<meta name="phone_number" content="{$coodivsettings.seoorganizationphonenumber}"/>

{include file="$template/includes/theme-core/typographie.tpl"}
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/theme.min.css?v=1.1.1">

{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/css/bootstrap.rtl.min.css?v=1.1.1">
{/if}

<!-- Vendor stylesheets  -->
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/css/app.min.css?v=1.1.1">
{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/css/app.rtl.css?v=1.1.1">
{/if}

<!-- Custom theme Color Schemes stylesheets  -->
{if $coodivcolorsettings.dafaultthemecolor=='theme-style-one'}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/default-style.css">
{else if $coodivcolorsettings.dafaultthemecolor=='theme-style-two'}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/green-style.css">
{else if $coodivcolorsettings.dafaultthemecolor=='theme-style-three'}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/purple-style.css">
{else if $coodivcolorsettings.dafaultthemecolor=='theme-style-four'}
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/red-style.css">
{/if}

<!-- Custom theme typographie settings  -->
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/typographie.css">

{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/custom.css">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/modules/addons/shufyTheme/css-values/homepage-plans.css">

<script>
	var csrfToken = '{$token}',
		markdownGuide = '{lang|addslashes key="markdown.title"}',
		locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
		saved = '{lang|addslashes key="markdown.saved"}',
		saving = '{lang|addslashes key="markdown.saving"}',
		whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
		whmcsThemeName = "{$template}",
		requiredText = '{lang|addslashes key="orderForm.required"}',
		recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{$WEB_ROOT}/templates/{$template}/assets/js/scripts.min.js?v={$shuffythemeversion}"></script>
{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}


