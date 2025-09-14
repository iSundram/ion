"use strict";

$(document).ready(function(){
    var URITYPE = $('select[name="urltype"]');
        URITYPE.on("change", function(){
            $('[name="clientarea-off"],[name="customurl"]').hide();
            $('[name="'+this.value+'"]').show();
        });
    $('[data-toggle="tooltip"]').tooltip();
});


$(document).ready(function(){
    var radiothemesetting = $('input[name="dafaultthemecolor"]');
        radiothemesetting.on("change", function(){
			if ($(this).val() == "theme-style-one") {
				$('#custom-colors-schemes-one').addClass("d-block").removeClass("d-none");
				$('#custom-colors-schemes-two').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-three').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-four').addClass("d-none").removeClass("d-block");
			} else if ($(this).val() == "theme-style-two") {
				$('#custom-colors-schemes-one').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-two').addClass("d-block").removeClass("d-none");
				$('#custom-colors-schemes-three').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-four').addClass("d-none").removeClass("d-block");
			} else if ($(this).val() == "theme-style-three") {
				$('#custom-colors-schemes-one').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-two').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-three').addClass("d-block").removeClass("d-none");
				$('#custom-colors-schemes-four').addClass("d-none").removeClass("d-block");
			} else if ($(this).val() == "theme-style-four") {
				$('#custom-colors-schemes-one').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-two').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-three').addClass("d-none").removeClass("d-block");
				$('#custom-colors-schemes-four').addClass("d-block").removeClass("d-none");
			}
        });
});


$(document).ready(function(){
    var cookiescheckbox  = document.getElementById('yourBox')
    var cookiesposition  = document.getElementById('yourText');
    var cookiestext  = document.getElementById('cookies-box-text');
	
	cookiescheckbox.onchange = function() {
    cookiesposition.disabled = !this.checked;
    cookiestext.disabled = !this.checked;
	};
});







