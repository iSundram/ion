/*!
 * Shuffytheme demo js file
 * Copyright (c) 2024 Coodiv team
 * File version (1.0.0)
 * https://coodiv.net (Nedjai Mohamed)
 */
$(document).ready(function() {
	$('#closeDemoModalBtn').on('click', function(){
		$("#blockSubmitDemoModal").modal('hide');
	});
	$('.page__account__contacts__new__form, .page__clientareadetails__form, .page__user__profile__form, .page__user__password__form').on('submit', function(e){
		e.preventDefault();
		$("#blockSubmitDemoModal").modal('show');
	});
});

$(document).ready(function() {
	const $sidebar = $('#demosidebar');
	const $sidebarToggler = $('#shuffytheme__demo__sidebar__toggler');

	$sidebarToggler.on('click', function() {
		$sidebar.toggleClass('demo__sidebar__open');
	});

	$(document).on('click', function(event) {
		if (!$(event.target).closest('#demosidebar').length && !$(event.target).is('#shuffytheme__demo__sidebar__toggler')) {
			$sidebar.removeClass('demo__sidebar__open');
		}
	});
});
$(document).ready(function() {
	$('.sidebardemo__custom__radioinput').on('click', function() {
		const urlWithoutParams = window.location.origin + window.location.pathname;
		history.replaceState({}, document.title, urlWithoutParams);
		$('#fullpage-overlay').fadeIn();
		setTimeout(function() {
			$('#fullpage-overlay').fadeOut();
		}, 2000);
	});
});

$(document).ready(function() {
    function changeTheme(theme) {
        $('body').removeClass('theme-style-one theme-style-two theme-style-three theme-style-four');
        $('body').addClass(theme);
        localStorage.setItem('themeClass', theme);
    }
    var savedTheme = localStorage.getItem('themeClass');
    if (savedTheme) {
        changeTheme(savedTheme);
    }
    $('.sidebardemo__custom__radioinput').on('click', function() {
        var selectedTheme = $(this).data('theme');
        changeTheme(selectedTheme);
    });
    $('.sidebardemo__custom__radioinput.blue').change(function() {
		setTimeout(function() {
			changeTheme('theme-style-one');
		}, 1000);
    });
    $('.sidebardemo__custom__radioinput.green').change(function() {
		setTimeout(function() {
			changeTheme('theme-style-two');
		}, 1000);
    });

    $('.sidebardemo__custom__radioinput.purple').change(function() {
		setTimeout(function() {
			changeTheme('theme-style-three');
		}, 1000);
    });

    $('.sidebardemo__custom__radioinput.red').change(function() {
		setTimeout(function() {
			changeTheme('theme-style-four');
		}, 1000);
    });
});
function getUrlParams() {
    const params = {};
    const queryString = window.location.search.substring(1);
    const urlParams = new URLSearchParams(queryString);
    for (const [key, value] of urlParams.entries()) {
        params[key] = value;
    }
    return params;
}
function mapClassNames(paramValue) {
    const classMap = {
        'blue': 'theme-style-one',
        'green': 'theme-style-two',
        'purple': 'theme-style-three',
        'red': 'theme-style-four',
    };
    return classMap[paramValue] || '';
}
function mapLayoutNames(paramValue) {
    const layoutMap = {
        'horizontaltopsidebar': 'horizontal__sidebar horizontal__top__sidebar',
        'horizontalbuttomsidebar': 'horizontal__sidebar',
        'leftsidebar': 'left__layout__sidebar',
    };
    return layoutMap[paramValue] || '';
}
function mapSidebarbgNames(paramValue) {
    const SidebarbgMap = {
        'darkbgsidebar': 'dark__sidebar__color',
        'lightbgsidebar': 'default-color',
    };
    return SidebarbgMap[paramValue] || '';
}
function mapLogoplacementNames(paramValue) {
    const LogoplacementMap = {
        'sidebarlogo': 'header__sidebar__logo',
        'toplogo': 'header__top__logo',
    };
    return LogoplacementMap[paramValue] || '';
}
function mapsidebarstylesNames(paramValue) {
    const sidebarstylesMap = {
        'default': 'minimalist__sidebar',
        'bigicons': 'big__icons__sidebar',
        'defaultseparated': 'separated__sidebar minimalist__sidebar',
        'bigiconsseparated': 'big__icons__sidebar separated__sidebar',
    };
    return sidebarstylesMap[paramValue] || '';
}
function addClassesFromUrlParams() {
    const urlParams = getUrlParams();
    const $body = $('body');
	
	
	if (urlParams.coodivsidebarstyle) {
		localStorage.removeItem('SidebarlabelsstylesClass');
		$body.removeClass('minimalist__sidebar big__icons__sidebar separated__sidebar');
        const SidebarstylesClass = mapsidebarstylesNames(urlParams.coodivsidebarstyle);
        if (SidebarstylesClass) {
            $body.addClass(SidebarstylesClass);
            localStorage.setItem('SidebarstylesClass', SidebarstylesClass);
        }
    }
	
	if (urlParams.coodivlogoplacement) {
		localStorage.removeItem('LogoplacementlabelClass');
		$body.removeClass('header__top__logo header__sidebar__logo');
        const LogoplacementClass = mapLogoplacementNames(urlParams.coodivlogoplacement);
        if (LogoplacementClass) {
            $body.addClass(LogoplacementClass);
            localStorage.setItem('LogoplacementClass', LogoplacementClass);
        }
    }

    if (urlParams.coodivstyle) {
        $body.removeClass('theme-style-one theme-style-two theme-style-three theme-style-four');

        const themeClass = mapClassNames(urlParams.coodivstyle);
        if (themeClass) {
            $body.addClass(themeClass);
            localStorage.setItem('themeClass', themeClass);
        }
    }
    if (urlParams.coodivlayout) {
		localStorage.removeItem('sidebarplacementslabelClass');
		$body.removeClass('horizontal__sidebar horizontal__top__sidebar left__layout__sidebar right__layout__sidebar');
        const layoutClass = mapLayoutNames(urlParams.coodivlayout);
        if (layoutClass) {
            $body.addClass(layoutClass);
            localStorage.setItem('layoutClass', layoutClass);
        }
    }
    if (urlParams.coodivsidebarbg) {
		localStorage.removeItem('sidebarbglabelClass');
		$body.removeClass('dark__sidebar__color default-color');
        const SidebarbgClass = mapSidebarbgNames(urlParams.coodivsidebarbg);
        if (SidebarbgClass) {
            $body.addClass(SidebarbgClass);
            localStorage.setItem('SidebarbgClass', SidebarbgClass);
        }
    }
}

const savedThemeClass = localStorage.getItem('themeClass');
if (savedThemeClass) {
	$('body').addClass(savedThemeClass);
}
addClassesFromUrlParams();

// Function to handle sidebar styles changes
const storedLayout = localStorage.getItem('SidebarstylesClass');
const storedLayoutlabels = localStorage.getItem('SidebarlabelsstylesClass');
if (storedLayout) {
	$('#waitfordemoisloading').removeClass('d-none');
	$('body').removeClass('minimalist__sidebar big__icons__sidebar separated__sidebar');
	$('body').addClass(storedLayout);
	setTimeout(function() {
		$('#waitfordemoisloading').addClass('d-none');
	}, 500);
}
if (storedLayoutlabels) {
	setTimeout(function() {
	$('.' + storedLayoutlabels + ' .iradio_square-blue').addClass('checked');
	}, 2000);
}
$(document).ready(function() {
	var sidebarlayouclassMap = {
		'default': 'minimalist__sidebar',
		'bigicons': 'big__icons__sidebar',
		'defaultsepareted': 'separated__sidebar minimalist__sidebar',
		'bigiconssepareted': 'big__icons__sidebar separated__sidebar',
	};
	var sidebarlayoulabelsclassMap = {
		'default': 'demo__sidebar__default__label',
		'bigicons': 'demo__sidebar__bigicons__label',
		'defaultsepareted': 'demo__sidebar__defaultsepareted__label',
		'bigiconssepareted': 'demo__sidebar__bigiconssepareted__label',
	};
    function changeBodyClass() {
        var selectedValue = $('input[name="sidebarlayouts"]:checked').val();
        var selectedClass = sidebarlayouclassMap[selectedValue];
        var selectedlabelsClass = sidebarlayoulabelsclassMap[selectedValue];
		const urlWithoutParams = window.location.origin + window.location.pathname;
		history.replaceState({}, document.title, urlWithoutParams);
		$('#fullpage-overlay').fadeIn();
		setTimeout(function() {
			$('#fullpage-overlay').fadeOut();
		}, 2000);
		setTimeout(function() {
        $('body').removeClass('minimalist__sidebar big__icons__sidebar separated__sidebar');
        $('body').addClass(selectedClass);
		}, 1000);
        localStorage.setItem('SidebarstylesClass', selectedClass);
        localStorage.setItem('SidebarlabelsstylesClass', selectedlabelsClass);
    }
    $('.demo__sidebar__layout').change(changeBodyClass);
});







// Function to handle sidebar layouts changes
const storedsidebarplacements = localStorage.getItem('layoutClass');
const storedsidebarplacementslabels = localStorage.getItem('sidebarplacementslabelClass');
if (storedsidebarplacements) {
	$('body').removeClass('horizontal__sidebar horizontal__top__sidebar left__layout__sidebar right__layout__sidebar');
	$('body').addClass(storedsidebarplacements);
}
if (storedsidebarplacementslabels) {
	setTimeout(function() {
	$('.' + storedsidebarplacementslabels + ' .iradio_square-blue').addClass('checked');
	}, 2000);
}
$(document).ready(function() {
	var sidebarplacmentsclassMap = {		
		'horizontaltop': 'horizontal__sidebar horizontal__top__sidebar',
        'horizontal': 'horizontal__sidebar',
        'left': 'left__layout__sidebar',		
	};
	var sidebarplacmentslabelclassMap = {
		'left': 'demo__sidebar__left__label',
		'horizontal': 'demo__sidebar__horizontal__label',
		'horizontaltop': 'demo__sidebar__horizontaltop__label',
	};
    function changesidebarPlaceClass() {
        var selectedValue = $('input[name="sidebarplacements"]:checked').val();
        var selectedClass = sidebarplacmentsclassMap[selectedValue];
        var selectedlabelsClass = sidebarplacmentslabelclassMap[selectedValue];
		const urlWithoutParams = window.location.origin + window.location.pathname;
		history.replaceState({}, document.title, urlWithoutParams);
		$('#fullpage-overlay').fadeIn();
		setTimeout(function() {
			$('#fullpage-overlay').fadeOut();
		}, 2000);
		setTimeout(function() {
        $('body').removeClass('horizontal__sidebar horizontal__top__sidebar left__layout__sidebar right__layout__sidebar');
        $('body').addClass(selectedClass);
		}, 1000);
        localStorage.setItem('layoutClass', selectedClass);
        localStorage.setItem('sidebarplacementslabelClass', selectedlabelsClass);
    }
    $('.demo__sidebar__placements').change(changesidebarPlaceClass);
});






// Function to handle sidebar bg changes
const storedsidebarbg = localStorage.getItem('SidebarbgClass');
const storedsidebarbglabels = localStorage.getItem('sidebarbglabelClass');
if (storedsidebarbg) {
	$('body').removeClass('dark__sidebar__color default-color');
	$('body').addClass(storedsidebarbg);
}
if (storedsidebarbglabels) {
	setTimeout(function() {
	$('.' + storedsidebarbglabels + ' .iradio_square-blue').addClass('checked');
	}, 2000);
}
$(document).ready(function() {
	var sidebarbgclassMap = {		
		'dark': 'dark__sidebar__color',
        'light': 'default-color',
	};
	var sidebarbglabelclassMap = {
		'dark': 'demo__sidebar__dark__label',
		'light': 'demo__sidebar__light__label',
	};
    function changesidebarbgClass() {
        var selectedValue = $('input[name="sidebarbg"]:checked').val();
        var selectedClass = sidebarbgclassMap[selectedValue];
        var selectedlabelsClass = sidebarbglabelclassMap[selectedValue];
		const urlWithoutParams = window.location.origin + window.location.pathname;
		history.replaceState({}, document.title, urlWithoutParams);
		$('#fullpage-overlay').fadeIn();
		setTimeout(function() {
			$('#fullpage-overlay').fadeOut();
		}, 2000);
		setTimeout(function() {
        $('body').removeClass('dark__sidebar__color default-color');
        $('body').addClass(selectedClass);
		}, 1000);
        localStorage.setItem('SidebarbgClass', selectedClass);
        localStorage.setItem('sidebarbglabelClass', selectedlabelsClass);
    }
    $('.demo__sidebar__bg').change(changesidebarbgClass);
});




// Function to handle logo placements
const storedlogoposition = localStorage.getItem('LogoplacementClass');
const storedstoredlogopositionlabels = localStorage.getItem('LogoplacementlabelClass');
if (storedlogoposition) {
	$('body').removeClass('header__top__logo header__sidebar__logo');
	$('body').addClass(storedlogoposition);
}
if (storedstoredlogopositionlabels) {
	setTimeout(function() {
	$('.' + storedstoredlogopositionlabels + ' .iradio_square-blue').addClass('checked');
	}, 2000);
}
$(document).ready(function() {
	var logopositionclassMap = {		
		'sidebar': 'header__sidebar__logo',
        'topheader': 'header__top__logo',
	};
	var logopositionlabelclassMap = {
		'sidebar': 'demo__logo__position__sidebar__label',
		'topheader': 'demo__logo__position__topheader__label',
	};
    function changelogoplacementClass() {
        var selectedValue = $('input[name="logoposition"]:checked').val();
        var selectedClass = logopositionclassMap[selectedValue];
        var selectedlabelsClass = logopositionlabelclassMap[selectedValue];
		const urlWithoutParams = window.location.origin + window.location.pathname;
		history.replaceState({}, document.title, urlWithoutParams);
		$('#fullpage-overlay').fadeIn();
		setTimeout(function() {
			$('#fullpage-overlay').fadeOut();
		}, 2000);
		setTimeout(function() {
        $('body').removeClass('header__top__logo header__sidebar__logo');
        $('body').addClass(selectedClass);
		}, 1000);
        localStorage.setItem('LogoplacementClass', selectedClass);
        localStorage.setItem('LogoplacementlabelClass', selectedlabelsClass);
    }
    $('.demo__logo__position').change(changelogoplacementClass);
});







$(document).ready(function() {
	var checkboxedtopheader = localStorage.getItem('boxedtopheader');
	if (checkboxedtopheader === 'checked') {
		$('#boxedtopheader').prop('checked', true);
		$('body').removeClass('header__full__width');
		$('body').addClass('header__not__full__width');
	}

	$('#boxedtopheader').change(function() {
		if ($(this).is(':checked')) {
			$('body').removeClass('header__full__width');
			$('body').addClass('header__not__full__width');
			localStorage.setItem('boxedtopheader', 'checked');
		} else {
			$('body').addClass('header__full__width');
			$('body').removeClass('header__not__full__width');
			localStorage.setItem('boxedtopheader', 'unchecked');
		}
	});
});

$(document).ready(function() {
	var checkboxedsidebar = localStorage.getItem('boxedsidebar');
	if (checkboxedsidebar === 'checked') {
		$('#boxedsidebar').prop('checked', true);
		$('body').removeClass('horizontal__sidebar__full__width');
		$('body').addClass('horizontal__sidebar__not__full__width');
	}

	$('#boxedsidebar').change(function() {
		if ($(this).is(':checked')) {
			$('body').removeClass('horizontal__sidebar__full__width');
			$('body').addClass('horizontal__sidebar__not__full__width');
			localStorage.setItem('boxedsidebar', 'checked');
		} else {
			$('body').addClass('horizontal__sidebar__full__width');
			$('body').removeClass('horizontal__sidebar__not__full__width');
			localStorage.setItem('boxedsidebar', 'unchecked');
		}
	});
});
		
		

function resetParameters() {
	localStorage.removeItem('SidebarstylesClass');
	localStorage.removeItem('SidebarlabelsstylesClass');
	localStorage.removeItem('layoutClass');
	localStorage.removeItem('sidebarplacementslabelClass');
	localStorage.removeItem('SidebarbgClass');
	localStorage.removeItem('sidebarbglabelClass');
	localStorage.removeItem('LogoplacementClass');
	localStorage.removeItem('LogoplacementlabelClass');
    localStorage.removeItem('themeClass');
    localStorage.removeItem('boxedsidebar');
    localStorage.removeItem('boxedtopheader');

    const urlWithoutParams = window.location.origin + window.location.pathname;
    history.replaceState({}, document.title, urlWithoutParams);
    location.reload();
}
$('#demosettingsresetButton').click(function() {
	$('#demosettingsresetButton').addClass('loading');
	resetParameters();
});
