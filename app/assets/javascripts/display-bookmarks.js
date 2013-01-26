$(window).load(function(){
  $('#bookmarks-container').masonry({
    itemSelector : '.bookmark',
    columnWidth : 5
  });
})

var isExecuting = false;
$(function() {
	$(window).scroll(function() {
		if ($(window).scrollTop() + $(window).height() > $(document).height() - 100 && !isExecuting) {
			if ($('.pagination').length > 0) {
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