$(document).ready ->
 	$(document).ajaxStart($.blockUI).ajaxStop $.unblockUI
$(document).ready ->
		$("abbr.timeago").timeago()
$(document).ready ->
	$(".tablesorter").tablesorter()
$(document).ready ->
		jQuery(document).bind "keydown", "f1", (evt) ->
			jQuery("#modal").modal "show", ->
			false
$(document).ready ->
  $("form").sisyphus()			
