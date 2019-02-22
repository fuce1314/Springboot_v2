/**
 * 用户页面js
 */

$("#form-add").validate({
	rules:{
		username:{
			required:true,
			minlength: 2,
			maxlength: 20,
			remote: {
                url: rootPath + "/UserController/checkLoginNameUnique",
                type: "post",
                dataType: "json",
                dataFilter: function(data, type) {
                    if (data == "0")
                    	return true;
                    else 
                    	return false;
                }
            }
		},
		deptName:{
			required:true,
		},
		password:{
			required:true,
			minlength: 5,
			maxlength: 20
		},
		email:{
			required:true,
            email:true,
            remote: {
                url:rootPath + "/UserController/checkEmailUnique",
                type: "post",
                dataType: "json",
                data: {
                    name: function () {
                        return $.trim($("#email").val());
                    }
                },
                dataFilter: function (data, type) {
                    if (data == "0") return true;
                    else return false;
                }
            }
		},
		phonenumber:{
			required:true,
			isPhone:true,
            remote: {
                url: rootPath + "system/user/checkPhoneUnique",
                type: "post",
                dataType: "json",
                data: {
                    name: function () {
                        return $.trim($("#phonenumber").val());
                    }
                },
                dataFilter: function (data, type) {
                    if (data == "0") return true;
                    else return false;
                }
            }
		},
	},
	messages: {
        "username": {
            remote: "用户已经存在"
        },
		"email": {
            remote: "Email已经存在"
        },
		"phonenumber":{
        	remote: "手机号码已经存在"
		}
    },
	submitHandler:function(form){
		add();
	}
});

/**
 * 用户添加方法
 */
function add() {
	var dataFormJson=$("#form-add").serialize();
	$.ajax({
		cache : true,
		type : "POST",
		url : rootPath + "/UserController/add",
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

