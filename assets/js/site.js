$(document).ready(function() {
	$(document).pngFix();

	$('a[data-toggle=modal]').click(function(event) {
		$('#modal-title').html($(this).attr('data-title'));
		$('#modal-body').load($(this).attr('href'), function() {
			$('#modal').modal({
				backdrop: true,
				show: true
			}).css({
					width: 'auto',
					'margin-left': function () {
						return -($(this).width() / 2);
					}
				});
		});
		event.preventDefault();
	});

	$('#modal .submit-button').click(function() {
		$('#modal form').submit();
	});

	$('#modal form').live('submit', function() {
		$(this).ajaxSubmit({
			target: '#modal-body',
			type: 'post',
			success: function(r){
				obj = $.parseJSON(r);
				if(obj.success == true)
				{
					$('#modal').modal('hide');
					window.location.href = '/thank_you';
				}
			}
		});
		return false;
	});
});