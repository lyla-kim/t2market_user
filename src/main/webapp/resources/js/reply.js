console.log("Reply Module........");

var replyService = (function(){
	
	function add(reply, callback, error) {
		console.log("add reply........");
		
		$.ajax({
			type : 'post',
			method: 'post',
			url : '/replies/new',
			data : reply,//JSON,//JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result,status, xhr) {
				alert("abc")
				if (callback) {
					
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				alert("bacd")
				if(error) {
					error(er);
					
				}
			}
		})
	}
	return {
		add : add
	};
})();