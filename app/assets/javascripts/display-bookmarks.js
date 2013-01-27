$(window).load(function(){
  $('#bookmarks-container').masonry({
    itemSelector : '.bookmark',
    columnWidth : 0
  });
})

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