$(document).ready(function(){
		$(".btn").click(function(){
			$(this).val("Added");
			});
	$('form').submit(function(){
    $(this).find('input[type=submit]').prop('disabled', true);
	});
});
		
	