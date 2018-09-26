// https: //www.youtube.com/watch?v=LF8TWAIOq9Q
document.addEventListener("turbolinks:before-cache", function () {
	$('.chosen-container').remove();
	$('.sweet-overlay').remove();
});

document.addEventListener("turbolinks:load", function () {

  $('.menu-item').unbind('click').on('click', function(e) {
    $(e.target).closest('li').toggleClass('selected').siblings('.sub-menu').slideToggle('fast');
	});
	
	$('.menu-item a').unbind('click').on('click', function(e) {
		e.stopPropagation();
		$('.sub-menu-selected').removeClass('sub-menu-selected');
		$(this).closest('li').addClass('sub-menu-selected')
		$(this).find('.loader').show();
		console.log($(e).siblings('.loader').length, 'in here');
	});

	$('form.blog-p').unbind('submit').on('submit', function(e) {
		swal('Loading statistics...', '', 'info');
	});
});

UnobtrusiveFlash.flashOptions["timeout"] = 4000; // milliseconds


function moveCursorToEnd(el) {
	if (typeof el.selectionStart == "number") {
		el.selectionStart = el.selectionEnd = el.value.length;
	} else if (typeof el.createTextRange != "undefined") {
		el.focus();
		var range = el.createTextRange();
		range.collapse(false);
		range.select();
	}
}


