$("#form-edit").validate({

	submitHandler : function(form) {
		edit();
	}
});

function edit() {
	var dataFormJson = $("#form-edit").serialize();
	$.ajax({
		cache : true,
		type : "POST",
		url : rootPath + "/UserController/edit",
		data : dataFormJson,
		async : false,
		error : function(request) {
			$.modal.alertError("系统错误");
		},
		success : function(data) {
			$.operate.saveSuccess(data);
		}
	});
}