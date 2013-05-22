$(window).load(function(){
  $('#bookmarks-container').masonry({
    itemSelector : '.bookmark'
  });
  
  $('#subcategories-container').masonry({
  	    itemSelector : '.category'
  });
})

$(window).resize(function() {
	$("#bookmarks-container").masonry( 'reload' );
});

var isExecuting = false;
$(function() {
	$(window).scroll(function() {
		if ($(window).scrollTop() + $(window).height() > $(document).height() - 100 && !isExecuting) {
			if ($('.endless .pagination').length > 0) {
				isExecuting = true;
				$.ajax({
					url : $('.pagination .next a').attr('href'),
					success : function() {
						isExecuting = false
					},
					dataType : "script"
				});
			}
			return false;
		}
	});
}); 

$('.bookmark,.category').hover(function() {
	$(this).find('.details').fadeIn('fast');
}, function() {
	$(this).find('.details').fadeOut('fast');
});
