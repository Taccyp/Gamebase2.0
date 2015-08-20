$(document).ready(function(){
		$(".add_collection_button").click(function(){
			$(this).val("Added");
			});
	$('form').submit(function(){
    $(this).find('input[type=submit]').prop('disabled', true);
	});
});
		
	