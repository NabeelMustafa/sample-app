$(function(){

	//Home text fade on scroll	
	
   $(window).scroll(function () { 
        var $Fade = $('.tp-caption');
        //Get scroll position of window 
        var windowScroll = $(this).scrollTop();
        //Slow scroll and fade it out 
        $Fade.css({
            'margin-top': -(windowScroll / 0) + "px",
            'opacity': 1 - (windowScroll / 400)
        });
    });		

   $('.phone').mask('(00)00000-0000');

   $('#rev_slider_wrapper').parallax("50%", 0.4);

	$("#owl-logos-1").owlCarousel({
		items : 2,
		itemsMobile : false, 
		pagination : false,
		autoplay: false,
		// autoPlay : 3000,
		slideSpeed : 300,
	    responsive:{
	        500:{
	            items:2,
	            nav:true
	        },
	        600:{
	            items:2,
	            nav:false
	        },
	        900:{
	            items:2,
	            nav:true,
	            loop:false
	        },
	        1200:{
	            items:3,
	            nav:true,
	            loop:false
	        }
	    }		
	});	 

	$("#logo-partners").owlCarousel({
		items : 4,
		itemsMobile : false, 
		pagination : true,
		autoplay: false,
		// autoPlay : 3000,
		slideSpeed : 300,
	    responsive:{
	        500:{
	            items:2,
	            nav:true
	        },
	        600:{
	            items:2,
	            nav:false
	        },
	        900:{
	            items:2,
	            nav:true,
	            loop:false
	        },
	        1200:{
	            items:3,
	            nav:true,
	            loop:false
	        }
	    }		
	});	 	  

	//Full Accordion
			
	$(".accordion").smk_Accordion({
		closeAble: true 
	});		

	//Revolution Slider
	
		var revapi46;
		$(document).ready(function() {
			if($("#rev_slider").revolution == undefined){
				revslider_showDoubleJqueryError("#rev_slider");
			}else{
				revapi46 = $("#rev_slider").show().revolution({
					sliderType:"standard",
					jsFileLocation:"",
					sliderLayout:"fullscreen",
					dottedOverlay:"none",
					autoplay: false,
					delay:8000,
					navigation: {
						keyboardNavigation:"off",
						keyboard_direction: "horizontal",
						mouseScrollNavigation:"off",
						onHoverStop:"off",
						bullets: {
							enable:true,
							hide_onmobile:true,
							hide_under:600,
							style:"hebe",
							hide_onleave:true,
							hide_delay:200,
							hide_delay_mobile:1200,
							direction:"horizontal",
							h_align:"center",
							v_align:"bottom",
							h_offset:-520,
							v_offset:150,
							space:15,
							tmp:'<span class="tp-bullet-image"></span>'
						},
						touch:{
							touchenabled:"on",
							swipe_threshold: 75,
							swipe_min_touches: 1,
							swipe_direction: "horizontal",
							drag_block_vertical: false
						}
					},
					responsiveLevels:[1240,1024,778,480],
					gridwidth:[1240,1024,778,480],
					gridheight:[960,768,480,320],
					lazyType:"none",
					parallax: {
						type:"mouse",
						origo:"slidercenter",
						speed:2000,
						levels:[2,3,4,5,6,7,12,16,10,50],
						disable_onmobile:"on"
					},
					shadow:0,
					spinner:"off",
					stopLoop:"off",
					stopAfterLoops:-1,
					stopAtSlide:-1,
					shuffle:"off",
					autoHeight:"on",
					fullScreenAlignForce:"off",
					fullScreenOffsetContainer: "off",
					fullScreenOffset: "",
					disableProgressBar:"on",
					hideThumbsOnMobile:"on",
					hideSliderAtLimit:0,
					stopAfterLoops:0,
					stopAtSlide:1,
					hideCaptionAtLimit:0,
					hideAllCaptionAtLilmit:0,
					debugMode:false,
					fallbacks: {
						simplifyAll:"off",
						nextSlideOnWindowFocus:"off",
						disableFocusListener:false,
					}
				});
			}
		});	/*ready*/
	
	$(document).ready(function() {

	
		//Preloader
		
		  $(".animsition").animsition({
		  
			inClass               :   'fade-in',
			outClass              :   'fade-out',
			inDuration            :    500,
			outDuration           :    500,
			linkElement           :   '.animsition-link', 
			// e.g. linkElement   :   'a:not([target="_blank"]):not([href^=#])'
			loading               :    true,
			loadingParentElement  :   'body', //animsition wrapper element
			loadingClass          :   'animsition-loading',
			unSupportCss          : [ 'animation-duration',
									  '-webkit-animation-duration',
									  '-o-animation-duration'
									],
			//"unSupportCss" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser. 
			//The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
			
			overlay               :   false,
			
			overlayClass          :   'animsition-overlay-slide',
			overlayParentElement  :   'body'
		  });

	  	$("#gallery-picture").owlCarousel({		
			items : 1,
			pagination : true,
			navigation: false,
			singleItem: true,
			dotsContainer: true,
			lazyLoad: true,
    		transitionStyle : "fade",
	        smartSpeed: 900,
	        autoPlay: true,
    	    autoPlayTimeout: 1000
		});	 

		/* Quote Carousel */		
		
		$("#owl-quote").owlCarousel({
			pagination : true,
			transitionStyle : "fade",
			slideSpeed : 500,
			paginationSpeed : 500,
			singleItem:true,
			autoPlay: 5000
		});	
		
	
	//Scroll back to top
	
		var offset = 450;
		var duration = 500;
		$(window).scroll(function() {
			if ($(this).scrollTop() > offset) {
				$('.scroll-to-top').fadeIn(duration);
			} else {
				$('.scroll-to-top').fadeOut(duration);
			}
		});
				

	    // var scrollTop;
	    // window.onscroll = function () {
	    //     scrollTop = $(window).scrollTop();

	    //     if (scrollTop > 44) {
	    //         $('.navbar').addClass('navbar-fixed');
	    //     } else {
	    //         $('.navbar').removeClass('navbar-fixed');
	    //     }
	    // }		


		// Filter Imagens

			var container = $('#box-gallery');

				function getNumbColumns() { 
				var winWidth = $(window).width(), 
					columnNumb = 1;
				
				
				if (winWidth > 1500) {
					columnNumb = 4;
				} else if (winWidth > 1200) {
					columnNumb = 3;
				} else if (winWidth > 900) {
					columnNumb = 2;
				} else if (winWidth > 600) {
					columnNumb = 2;
				} else if (winWidth > 300) {
					columnNumb = 1;
				}
				
				return columnNumb;
			}
			
			
			function setColumnWidth() { 
				var winWidth = $(window).width(), 
					columnNumb = getNumbColumns(), 
					postWidth = Math.floor(winWidth / columnNumb);

			}

			$('#portfolio-filter #filter a').click(function () { 
				var selector = $(this).attr('data-filter');
				
				$(this).parent().parent().find('a').removeClass('current');
				$(this).addClass('current');
				
				container.isotope( { 
					filter : selector 
				});
				
				setTimeout(function () { 
					reArrangeProjects();
				}, 300);
				
				
				return false;
			});
			
			function reArrangeProjects() { 
				setColumnWidth();
				container.isotope('reLayout');
			}
			
			
			container.imagesLoaded(function () { 
				setColumnWidth();
			
				container.isotope( { 
					itemSelector : '.portfolio-wrap-four', 
					layoutMode : 'masonry', 
					resizable : false 
				} );
			} );
			
			
			$(window).on('debouncedresize', function () { 
				reArrangeProjects();
				
			} );

			// Select all links with hashes
			$('#exCollapsingNavbar a[href*="#"]')
			  // Remove links that don't actually link to anything
			  .not('[href="#"]')
			  .not('[href="#0"]')
			  .click(function(event) {
			    // On-page links
			    if (
			      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
			      && 
			      location.hostname == this.hostname
			    ) {
			      // Figure out element to scroll to
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			      // Does a scroll target exist?
			      if (target.length) {
			        // Only prevent default if animation is actually gonna happen
			        event.preventDefault();
			        $('html, body').animate({
			          scrollTop: target.offset().top
			        }, 1500, function() {
			          // Callback after animation
			          // Must change focus!
			          var $target = $(target);
			          $target.focus();
			          if ($target.is(":focus")) { // Checking if the target was focused
			            return false;
			          } else {
			            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
			            $target.focus(); // Set focus again
			          };
			        });
			      }
			    }
			  });


	});

});

$(document).ready(function() {"use strict";
	 
	  var sync1 = $("#sync21");
	  var sync2 = $("#sync22");
	 
	  sync1.owlCarousel({
		singleItem : true,
		transitionStyle : "fade",
		autoHeight : true,
		slideSpeed : 1500,
		navigation: false,
		pagination:false,
		afterAction : syncPosition,
		responsiveRefreshRate : 200
	  });

	  
	  sync2.owlCarousel({
		items : 2,
		itemsDesktop      : [1199,2],
		itemsDesktopSmall     : [979,2],
		itemsTablet       : [768,2],
		itemsMobile       : [479,2],
		pagination:false,
		responsiveRefreshRate : 100,
		afterInit : function(el){
		  el.find(".owl-item").eq(0).addClass("synced");
		}
	  });
	 
	  function syncPosition(el){
		var current = this.currentItem;
		$("#sync22")
		  .find(".owl-item")
		  .removeClass("synced")
		  .eq(current)
		  .addClass("synced")
		if($("#sync22").data("owlCarousel") !== undefined){
		  center(current)
		}
	  }
	 
	  $("#sync22").on("click", ".owl-item", function(e){
		e.preventDefault();
		var number = $(this).data("owlItem");
		sync1.trigger("owl.goTo",number);
	  });
	 
	  function center(number){
		var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
		var num = number;
		var found = false;
		for(var i in sync2visible){
		  if(num === sync2visible[i]){
			var found = true;
		  }
		}
	 
		if(found===false){
		  if(num>sync2visible[sync2visible.length-1]){
			sync2.trigger("owl.goTo", num - sync2visible.length+2)
		  }else{
			if(num - 1 === -1){
			  num = 0;
			}
			sync2.trigger("owl.goTo", num);
		  }
		} else if(num === sync2visible[sync2visible.length-1]){
		  sync2.trigger("owl.goTo", sync2visible[1])
		} else if(num === sync2visible[0]){
		  sync2.trigger("owl.goTo", num-1)
		}
		
	  }
 } );
 