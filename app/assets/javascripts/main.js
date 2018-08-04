"use strict";
/* 0. Initialization */
// Avoid `console` errors in browsers that lack a console.
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

// Get height on Window resized
$(window).on('resize',function(){
    var slideHeight = $('.slick-track').innerHeight();
	return false;
});


// Smooth scroll <a> links
var $root = $('html, body');
$('a.s-scroll').on('click',function() {
    var href = $.attr(this, 'href');
    $root.animate({
        scrollTop: $(href).offset().top
    }, 500, function () {
        window.location.hash = href;
    });
    return false;
});

/* */

// Page Loader : hide loader when all are loaded
$(window).load(function(){
    $('#page-loader').addClass('hidden');
});

/* 2. Background for page / section */

var background = '#ccc';
var backgroundMask = 'rgba(255,255,255,0.92)';
var backgroundVideoUrl = 'none';

/* Background image as data attribut */
var list = $('.bg-img');

for (var i = 0; i < list.length; i++) {
	var src = list[i].getAttribute('data-image-src');
	list[i].style.backgroundImage = "url('" + src + "')";
	list[i].style.backgroundRepeat = "no-repeat";
	list[i].style.backgroundPosition = "center";
	list[i].style.backgroundSize = "cover";
}

/* Background color as data attribut */
var list = $('.bg-color');
for (var i = 0; i < list.length; i++) {
	var src = list[i].getAttribute('data-bgcolor');
	list[i].style.backgroundColor = src;
}

/* Background slide show */
var imageList = $('.slide-show .img');
var imageSlides = [];
for (var i = 0; i < imageList.length; i++) {
	var src = imageList[i].getAttribute('data-src');
	imageSlides.push({src: src});
}
$(function() {
    $('.slide-show').vegas({
        delay: 5000,
        shuffle: true,
        slides: imageSlides,
    	//transition: [ 'zoomOut', 'burn' ],
		animation: [ 'kenburnsUp', 'kenburnsDown', 'kenburnsLeft', 'kenburnsRight' ]
    });
});

/* Static video background **/
$(function(){
	// Helper function to Fill and Center the HTML5 Video
	$('.video-container video, .video-container object').maximage('maxcover');
});
/** youtube / vimeo background */
$(function(){
    if(backgroundVideoUrl != 'none'){

        //disable video background for smallscreen
        if($(window).width() > 640){
          $.okvideo({ source: backgroundVideoUrl,
                    adproof: true
                    });
        }
    }
});

var isSlide = false;
var slideElem = $('.slide');
var arrowElem = $('.p-footer .arrow-d');
var pageElem = $('.page');
/** Init fullpage.js */
function get_fullpages(anchors_str) {
    var anchors = anchors_str.split(":");
    $('#mainpage').fullpage({
		menu: '#qmenu',
		anchors: anchors,
        verticalCentered: false,
        resize : true,
		responsive: 900,
		scrollOverflow: true,
        css3: true,
        navigation: true,
		onLeave: function(index, nextIndex, direction){
			arrowElem.addClass('gone');
			pageElem.addClass('transition');
//			$('.active').removeClass('transition');
			slideElem.removeClass('transition');
			isSlide = false;
		},
        afterLoad: function(anchorLink, index){
			arrowElem.removeClass('gone');
			pageElem.removeClass('transition');
			if(isSlide){
				slideElem.removeClass('transition');
			}
		},
		afterSlideLoad: function( anchorLink, index, slideAnchor, slideIndex){
			slideElem.removeClass('transition');
			isSlide = true;
//			$('.slide').addClass('transition');
        },
		onSlideLeave: function( anchorLink, index, slideIndex, direction){
//			$('.slide').removeClass('transition');
			if(isSlide){
				slideElem.addClass('transition');
			}
        },
        afterRender: function(){}
    });
}
function start_up(){

}
function modalShow(){
    $(this).removeClass('fade').addClass('show');
}
function modalFade(){
    $(this).addClass('fade').removeClass('show');
}
function choose_category(){
    $('#category_category_id').on('change', function(event){
        event.stopPropagation();
        event.preventDefault();
        $.ajax({
            type: 'GET',
            url: '/categories/'+ $(event.currentTarget).val() +'/session_update',
            cache: false
        }).done(function(data){location.reload();});
    });
}
function admit_gallery(){
    $('#gallery_color_id').on('change', function() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/colors/' + $(this).val() + '/gid?locale=' + locale,
            success: function(data) {
                $('.color_choose .color_square').css('background-color', data.gid);
            }
        });
    });
    $('#gallery_fabric_id').on('change', function() {
        $.ajax({
            type: 'GET',
            url: '/fabrics/' + $(this).val() + '/image?locale=' + locale,
            success: function(data) {
                $('.fabric_insert').html(data);
            }
        });
    });
}
