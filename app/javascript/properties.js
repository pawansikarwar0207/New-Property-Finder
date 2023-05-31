$("#send-message-to-agent").on("click", function(){
	var agent_id = $("#agent_id").val(),
	first_name = $("#message-first-name").val(),
	last_name = $("#message-last-name").val(),
	message = $("#message-text").val();

	$.ajax({
		url: "/agent/message",
		method: "POST",
		dataType: "json",
		data: {
			agent_id: agent_id,
			first_name: first_name,
			last_name: last_name,
			message: message
		},
		success: function(data){
		}
	});
});
