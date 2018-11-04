// https: //www.youtube.com/watch?v=LF8TWAIOq9Q
document.addEventListener("turbolinks:before-cache", function () {
	$('.chosen-container').remove();
	$('.sweet-overlay').remove();
	$('#informant').hide();
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

	$('.status-edit a').unbind('click').on('click', function(e) {
		$('#informant').hide().removeClass('success').removeClass('error').show('fast').find('.saving.updating').show().siblings().hide();
	});

	$('.apt .apt-button').unbind('click').on('click', function (e) {
		$('#informant').hide().removeClass('success').removeClass('error').show('fast').find('.saving.updating').show().siblings().hide();
	});

	$('.reminder a').unbind('click').on('click', function (e) {
		$('#informant').hide().removeClass('success').removeClass('error').show('fast').find('.saving.updating').show().siblings().hide();
	});
	
	$('.reminder a').bind('ajax:error', function (xhr, settings) {
		var informant = $("#informant");
		failureAlert(informant);
	});

	$('.status-edit a').bind('ajax:error', function (xhr, settings) {
		var informant = $("#informant");
		informant.addClass('error').find('.saving.failed').show().siblings().hide('fast',
		function () {
			stopper();
			starter();
		});
	});

	$('.update-apts').bind('ajax:error', function (xhr, settings) {
		var informant = $("#informant");
		failureAlert(informant);
	});

	$('.status-edit a').bind('ajax:success', function (xhr, settings) {
		var informant = $("#informant");
		successAlert(informant);
	});

	$('.edit-apt').unbind('click').on('click', function(e) {
		$(this).closest('li').removeClass('done-deal');
	});
});


UnobtrusiveFlash.flashOptions["timeout"] = 4000; // milliseconds

// .bind('ajax:beforeSend', function (xhr, settings) {})
// 	.bind('ajax:success', function (xhr, data, status) {})
// 	.bind('ajax:complete', function (xhr, status) {})
// 	.bind('ajax:error', function (xhr, data, status) {})

var determiner;
function starter() {
	determiner = setTimeout(function () {
		$('#informant').hide();
	}, 2000);
};

function successAlert(informant) {
	informant.addClass('success').find('.saving.succeeded').show().siblings().hide('fast',
		function () {
			stopper();
			starter();
		});
};

function failureAlert(informant) {
	informant.addClass('error').find('.saving.failed').show().siblings().hide('fast',
		function () {
			stopper();
			starter();
		});
};


function stopper() {
	clearTimeout(determiner);
};

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


