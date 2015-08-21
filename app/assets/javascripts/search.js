$(document).ready(function(){
		$(".btn-success").click(function(){
			$(this).val("Added");
			$(this).toggleClass("btn-danger");
			});
	$('form').submit(function(){
    $(this).find('input[type=submit]').prop('disabled', true);
	});
});
		
	