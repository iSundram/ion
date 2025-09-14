<!-- Theme google fonts  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}
{if $coodivtypographiesettings.themesettingtyponamertl=='noto'}
<link href="https://fonts.googleapis.com/css2?family=Noto+Naskh+Arabic:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">	
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/noto.css">
{else if $coodivtypographiesettings.themesettingtyponamertl=='rubik'}
<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">	
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/rubik-rtl.css">
{else if $coodivtypographiesettings.themesettingtyponamertl=='tajawal'}
<link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/tajawal.css">
{else if $coodivtypographiesettings.themesettingtyponamertl=='kufam'}
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">	
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/kufam.css">
{else}
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">	
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/cairo.css">
{/if}

{else}


{if $coodivtypographiesettings.themesettingtyponame=='lato'}
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/lato.css">
{else if $coodivtypographiesettings.themesettingtyponame=='abhaya'}
<link href="https://fonts.googleapis.com/css2?family=Abhaya+Libre:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/abhaya.css">
{else if $coodivtypographiesettings.themesettingtyponame=='merriweather'}
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/merriweather.css">
{else if $coodivtypographiesettings.themesettingtyponame=='alegreya'}
<link href="https://fonts.googleapis.com/css2?family=Alegreya:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/alegreya.css">
{else if $coodivtypographiesettings.themesettingtyponame=='montserrat'}
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/montserrat.css">
{else if $coodivtypographiesettings.themesettingtyponame=='aleo'}
<link href="https://fonts.googleapis.com/css2?family=Aleo:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/aleo.css">
{else if $coodivtypographiesettings.themesettingtyponame=='muli'}
<link href="https://fonts.googleapis.com/css2?family=Muli:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/muli.css">
{else if $coodivtypographiesettings.themesettingtyponame=='arapey'}
<link href="https://fonts.googleapis.com/css2?family=Arapey:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/arapey.css">
{else if $coodivtypographiesettings.themesettingtyponame=='nunito'}
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/nunito.css">
{else if $coodivtypographiesettings.themesettingtyponame=='asap'}
<link href="https://fonts.googleapis.com/css2?family=Asap+Condensed:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/asap.css">
{else if $coodivtypographiesettings.themesettingtyponame=='assistant'}
<link href="https://fonts.googleapis.com/css2?family=Assistant:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/assistant.css">
{else if $coodivtypographiesettings.themesettingtyponame=='open-sans'}
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/open-sans.css">
{else if $coodivtypographiesettings.themesettingtyponame=='barlow'}
<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/barlow.css">
{else if $coodivtypographiesettings.themesettingtyponame=='oswald'}
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/oswald.css">
{else if $coodivtypographiesettings.themesettingtyponame=='bitter'}
<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/bitter.css">
{else if $coodivtypographiesettings.themesettingtyponame=='poppins'}
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/poppins.css">
{else if $coodivtypographiesettings.themesettingtyponame=='brawler'}
<link href="https://fonts.googleapis.com/css2?family=Brawler:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/brawler.css">
{else if $coodivtypographiesettings.themesettingtyponame=='roboto'}
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/roboto.css">
{else if $coodivtypographiesettings.themesettingtyponame=='caladea'}
<link href="https://fonts.googleapis.com/css2?family=Caladea:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/caladea.css">
{else if $coodivtypographiesettings.themesettingtyponame=='rokkitt'}
<link href="https://fonts.googleapis.com/css2?family=Rokkitt:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/rokkitt.css">
{else if $coodivtypographiesettings.themesettingtyponame=='carme'}
<link href="https://fonts.googleapis.com/css2?family=Carme:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/carme.css">
{else if $coodivtypographiesettings.themesettingtyponame=='rubik'}
<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/rubik.css">
{else if $coodivtypographiesettings.themesettingtyponame=='encode'}
<link href="https://fonts.googleapis.com/css2?family=Encode+Sans+Semi+Condensed:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/encode.css">
{else if $coodivtypographiesettings.themesettingtyponame=='enriqueta'}
<link href="https://fonts.googleapis.com/css2?family=Enriqueta:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/enriqueta.css">
{else if $coodivtypographiesettings.themesettingtyponame=='source-sans-pro'}
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/source-sans-pro.css">
{else if $coodivtypographiesettings.themesettingtyponame=='frank-ruhl-libre'}
<link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/frank-ruhl-libre.css">
{else if $coodivtypographiesettings.themesettingtyponame=='spectral'}
<link href="https://fonts.googleapis.com/css2?family=Spectral:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/spectral.css">
{else if $coodivtypographiesettings.themesettingtyponame=='work-sans'}
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/work-sans.css">
{else if $coodivtypographiesettings.themesettingtyponame=='gelasio'}
<link href="https://fonts.googleapis.com/css2?family=Gelasio:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/gelasio.css">
{else if $coodivtypographiesettings.themesettingtyponame=='headland-one'}
<link href="https://fonts.googleapis.com/css2?family=Headland+One:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/headland-one.css">
{else}
<link href="https://fonts.googleapis.com/css2?family=Inter+Tight:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" media="all" href="{$WEB_ROOT}/templates/{$template}/assets/google-fonts-caller/inter-tight.css">
{/if}


{/if}



