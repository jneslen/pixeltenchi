<div id="modal" class="modal fade">
	<div class="modal-header">
		<button class="close" data-dismiss="modal">x</button>
		<h3 id="modal-title"><?=$title?></h3>
	</div><!-- modal-header -->
	<div class="modal-body" id="modal-body"><?=$content?></div>
	<div class="modal-footer">
		<?php if($type == 'form'): ?>
		<a href="#" class="btn btn-primary submit-button"><?=__($button_name)?></a>
		<?php endif; ?>
	</div>
</div><!-- modal -->