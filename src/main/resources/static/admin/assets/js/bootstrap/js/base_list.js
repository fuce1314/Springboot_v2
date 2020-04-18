/**
 * 用户管理JS
 * 
 * @Author Jack
 */
(function($) {
	$.extend({
		table:{
			_option: {},
			oTableInit:function(parms){//初始化表单
				$.table._option=parms;
			    var oTableInit = new Object();
			    //初始化Table
			    oTableInit.Init = function () {
			        $('#dataTable').bootstrapTable({
			        	contentType: "application/x-www-form-urlencoded",
			            url:parms.dataUrl,     //请求后台的URL（*）
			            method: 'post',           //请求方式（*）
			            toolbar: '#exampleTableEventsToolbar',        //工具按钮用哪个容器
			            striped: true,           //是否显示行间隔色
			            cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			            pagination: true,          //是否显示分页（*）
			            sortable: true,           //是否启用排序
			            sortOrder: "asc",          //排序方式
			            queryParams: $.table.queryParams,//传递参数（*）
			            smartDisplay:false,
			            sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
			            pageNumber:1,            //初始化加载第一页，默认第一页
			            pageSize: 10,            //每页的记录行数（*）
			            pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
			            strictSearch: true,
			            clickToSelect: true,        //是否启用点击选中行
			           // height: 460,            //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			            uniqueId: "id",           //每一行的唯一标识，一般为主键列
			            queryParamsType: "",//参数类型  为null 后台用pageHelp  默认为limit
			            search: !0,
			            showRefresh: !0,//刷新按钮
			            showToggle: !0,//排版按钮
			            showColumns: !0,//显示列按钮
			            columns:parms.dataColumns,
			            showToggle : false, //是否显示详细视图和列表视图的切换按钮
			            //>>>>>>>>>>>>>>导出excel表格设置
			            showExport: true,  //是否显示导出按钮
			            buttonsAlign:"right",  //按钮位置
			            exportDataType : "all",
			            Icons:'glyphicon-export',
			            exportOptions:{
			                ignoreColumn: [0,1],  //忽略某一列的索引
			                fileName: '报表导出',  //文件名称设置
			                worksheetName: 'sheet1',  //表格工作区名称
			                tableName: '报表导出',
			                excelstyles: ['background-color', 'color', 'font-size', 'font-weight']
			            },

			            //导出excel表格设置<<<<<<<<<<<<<<<<
			            
			            onLoadSuccess: function(){  //加载成功时执行
			                console.info("加载成功");
				        },
				        onLoadError: function(){  //加载失败时执行
				            console.info("加载数据失败");
				        }
			        });
			    };
			    return oTableInit;
			},
			queryParams:function(params){//参数查询
				 var search = {};
				 search.pageSize= params.pageSize;
				 search.pageNum=params.pageNumber;
				 search.searchText=params.searchText;
				 //排序
				 search.orderByColumn=params.sortName;
				 search.isAsc=params.sortOrder;
				 return search;
				 
			},
			search:function(my){//查询条件
				var form=$(my).parents("form");
				var search = {};
				 $.each(form.serializeArray(), function(i, field) {
					 search[field.name] = field.value;
                 });
				 var params = $("#dataTable").bootstrapTable("getOptions");
				 params.queryParams=function(params){
					/* return {
							pageSize: params.pageSize,  //每页要显示的数据条数
							pageNum: params.pageNumber, //页码
							searchText:params.searchText //搜索字段
							/*sort: params.sort, // 要排序的字段
					        sortOrder: params.order, // 排序规则
					        dataId: $("#dataId").val() // 额外添加的参数
						};*/
					 	search.orderByColumn=params.sortName;
					 	search.isAsc=params.sortOrder;
						search.pageSize= params.pageSize;
						search.pageNum=params.pageNumber;
						if($.common.isNotEmpty(params.searchText)){
							search.searchText=params.searchText;
						}
					 return search;
				 }
				 $("#dataTable").bootstrapTable("refresh", params)
			},
			selectColumns: function(column) {
                return $.map($("#dataTable").bootstrapTable("getSelections"), function(row) {
                    return row[column]
                })
            },
            selectFirstColumns: function() {
                return $.map($("#dataTable").bootstrapTable("getSelections"), function(row) {
                    return row[$.table._option.dataColumns[1].field]
                })
            },
            refresh: function() {
                $("#dataTable").bootstrapTable("refresh", {
                    url: $.table._option.dataUrl,
                    silent: true
                })
            },
            //回显数据字典
            selectDictLabel: function(datas, value) {
            	var actions = [];
                $.each(datas, function(index, dict) {
                    if (dict.dictValue == ('' + value)) {
                    	var listClass = $.common.equals("default", dict.listClass) ? "" : "badge badge-" + dict.listClass;
                    	actions.push($.common.sprintf("<span class='%s'>%s</span>", listClass, dict.dictLabel));
                        return false;
                    }
                });
                return actions.join('');
            },
            //table参数end
		},
		operate:{
			submit: function(url, type, dataType, data) {
                $.modal.loading("正在处理中，请稍后...");
                var config = {
                    url: url,
                    type: type,
                    dataType: dataType,
                    data: data,
                    success: function(result) {
                        $.operate.ajaxSuccess(result)
                    },
                	error:function(jqXHR, textStatus, errorThrown){
                		$.modal.alertError(textStatus);
                		$.modal.closeLoading();
                		
                	}
                };
                $.ajax(config)
            },
            add: function(id) {
                var url = $.common.isEmpty(id) ? $.table._option.createUrl : $.table._option.createUrl.replace("{id}", id);
                $.modal.open("添加" + $.table._option.modalName, url);
            },
            edit: function(id) {
                var url = $.table._option.updateUrl.replace("{id}", id);
                $.modal.open("修改" + $.table._option.modalName, url);
            },
			remove:function(id){
				$.modal.confirm("确定删除该条" +$.table._option.modalName+ "信息吗？", function() {
                    var url = $.common.isEmpty(id) ? $.table._option.removeUrl : $.table._option.removeUrl.replace("{id}", id);
                    var data = {
                        "ids": id
                    };
                    $.operate.submit(url, "post", "json", data);
                })
			},
			batRemove: function() {
                var rows = $.common.isEmpty($.table._option.id) ? $.table.selectFirstColumns() : $.table.selectColumns($.table._option.id);
                if (rows.length == 0) {
                    $.modal.alertWarning("请至少选择一条记录");
                    return
                }
                $.modal.confirm("确认要删除选中的" + rows.length + "条数据吗?", function() {
                    var url = $.table._option.removeUrl;
                    var data = {
                        "ids": rows.join()
                    };
                    $.operate.submit(url, "post", "json", data);
                })
            },
			ajaxSuccess: function(result) {
                if (result.code == web_status.SUCCESS) {
                    $.modal.msgSuccess(result.msg);
                    $.table.refresh();
                } else {
                    $.modal.alertError(result.msg);
                }
                $.modal.closeLoading();
            },
            saveSuccess: function(result) {
                if (result.code == web_status.SUCCESS) {
                    $.modal.msgReload("保存成功,正在刷新数据请稍后……", modal_status.SUCCESS)
                } else {
                    $.modal.alertError(result.msg);
                }
                $.modal.closeLoading();
            }, // post请求传输
            post: function(url, data, callback) {
            	$.operate.submit(url, "post", "json", data, callback);
            },
            // get请求传输
            get: function(url, callback) {
            	$.operate.submit(url, "get", "json", "", callback);
            }
            //其他方法END
		},
		modal: {//模态弹窗
            icon: function(type) {
                var icon = "";
                if (type == modal_status.WARNING) {
                    icon = 0;
                } else {
                    if (type == modal_status.SUCCESS) {
                        icon = 1;
                    } else {
                        if (type == modal_status.FAIL) {
                            icon = 2;
                        } else {
                            icon = 3;
                        }
                    }
                }
                return icon
            },
            msg: function(content, type) {
                if (type != undefined) {
                    layer.msg(content, {
                        icon: $.modal.icon(type),
                        time: 1000,
                        shift: 5
                    })
                } else {
                    layer.msg(content);
                }
            },
            msgError: function(content) {
                $.modal.msg(content, modal_status.FAIL)
            },
            msgSuccess: function(content) {
                $.modal.msg(content, modal_status.SUCCESS)
            },
            msgWarning: function(content) {
                $.modal.msg(content, modal_status.WARNING)
            },
            alert: function(content, type) {
                layer.alert(content, {
                    icon: $.modal.icon(type),
                    title: "系统提示",
                    btn: ["确认"],
                    btnclass: ["btn btn-primary"],
                })
            },
            msgReload: function(msg, type) {
                layer.msg(msg, {
                    icon: $.modal.icon(type),
                    time: 500,
                    shade: [0.1, "#8F8F8F"]
                }, function() {
                    $.modal.reload();
                })
            },
            alertError: function(content) {
                $.modal.alert(content, modal_status.FAIL);
            },
            alertSuccess: function(content) {
                $.modal.alert(content, modal_status.SUCCESS);
            },
            alertWarning: function(content) {
                $.modal.alert(content, modal_status.WARNING);
            },
            close: function() {
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            },
            confirm: function(content, callBack) {
                layer.confirm(content, {
                    icon: 3,
                    title: "系统提示",
                    btn: ["确认", "取消"],
                    btnclass: ["btn btn-primary", "btn btn-danger"],
                }, function(index) {
                    layer.close(index);
                    callBack(true);
                })
            },
            open: function(title, url, width, height) {
                if (navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i)) {
                    width = "auto";
                    height = "auto";
                }
                if ($.common.isEmpty(title)) {
                    title = false;
                }
                if ($.common.isEmpty(url)) {
                    url = "404.html";
                }
                if ($.common.isEmpty(width)) {
                    width = 800;
                }
                if ($.common.isEmpty(height)) {
                    height = ($(window).height() - 50);
                }
                layer.open({
                    type: 2,
                    area: [width + "px", height + "px"],
                    fix: false,
                    maxmin: true,
                    shade: 0.3,
                    title: title,
                    content: url
                })
            },
            openFull: function(title, url, width, height) {
                if (navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i)) {
                    width = "auto";
                    height = "auto"
                }
                if ($.common.isEmpty(title)) {
                    title = false
                }
                if ($.common.isEmpty(url)) {
                    url = "404.html"
                }
                if ($.common.isEmpty(width)) {
                    width = 800
                }
                if ($.common.isEmpty(height)) {
                    height = ($(window).height() - 50)
                }
                var index = layer.open({
                    type: 2,
                    area: [width + "px", height + "px"],
                    fix: false,
                    maxmin: true,
                    shade: 0.3,
                    title: title,
                    content: url
                });
                layer.full(index)
            },
            loading: function(message) {
                $.blockUI({
                    message: '<div class="loaderbox"><div class="loading-activity"></div> ' + message + "</div>"
                })
            },
            closeLoading: function() {
                setTimeout(function() {
                    $.unblockUI()
                }, 50)
            },
            reload: function() {
            	parent.location.reload()
            }
        },
        // 通用方法封装处理
    	common: {
    		// 判断字符串是否为空
            isEmpty: function (value) {
                if (value == null || this.trim(value) == "") {
                    return true;
                }
                return false;
            },
            // 判断一个字符串是否为非空串
            isNotEmpty: function (value) {
            	return !$.common.isEmpty(value);
            },
            // 空对象转字符串
            nullToStr: function(value) {
                if ($.common.isEmpty(value)) {
                    return "-";
                }
                return value;
            },
            // 是否显示数据 为空默认为显示
            visible: function (value) {
                if ($.common.isEmpty(value) || value == true) {
                    return true;
                }
                return false;
            },
            // 空格截取
            trim: function (value) {
                if (value == null) {
                    return "";
                }
                return value.toString().replace(/(^\s*)|(\s*$)|\r|\n/g, "");
            },
            // 比较两个字符串（大小写敏感）
            equals: function (str, that) {
            	return str == that;
            },
            // 比较两个字符串（大小写不敏感）
            equalsIgnoreCase: function (str, that) {
            	return String(str).toUpperCase() === String(that).toUpperCase();
            },
            // 将字符串按指定字符分割
            split: function (str, sep, maxLen) {
            	if ($.common.isEmpty(str)) {
            	    return null;
            	}
            	var value = String(str).split(sep);
            	return maxLen ? value.slice(0, maxLen - 1) : value;
            },
            // 字符串格式化(%s )
            sprintf: function (str) {
                var args = arguments, flag = true, i = 1;
                str = str.replace(/%s/g, function () {
                    var arg = args[i++];
                    if (typeof arg === 'undefined') {
                        flag = false;
                        return '';
                    }
                    return arg;
                });
                return flag ? str : '';
            },
            // 指定随机数返回
            random: function (min, max) {
                return Math.floor((Math.random() * max) + min);
            },
            // 判断字符串是否是以start开头
            startWith: function(value, start) {
                var reg = new RegExp("^" + start);
                return reg.test(value)
            },
            // 判断字符串是否是以end结尾
            endWith: function(value, end) {
                var reg = new RegExp(end + "$");
                return reg.test(value)
            },
            // 数组去重
            uniqueFn: function(array) {
                var result = [];
                var hashObj = {};
                for (var i = 0; i < array.length; i++) {
                    if (!hashObj[array[i]]) {
                        hashObj[array[i]] = true;
                        result.push(array[i]);
                    }
                }
                return result;
            },
            // 数组中的所有元素放入一个字符串
            join: function(array, separator) {
            	if ($.common.isEmpty(array)) {
            	    return null;
            	}
                return array.join(separator);
            },
            // 获取form下所有的字段并转换为json对象
            formToJSON: function(formId) {
            	 var json = {};
                 $.each($("#" + formId).serializeArray(), function(i, field) {
                	 json[field.name] = field.value;
                 });
            	return json;
            }
        },
        form: {
            selectCheckeds: function(name) {
                var checkeds = "";
                $('input:checkbox[name="' + name + '"]:checked').each(function(i) {
                    if (0 == i) {
                        checkeds = $(this).val()
                    } else {
                        checkeds += ("," + $(this).val())
                    }
                });
                return checkeds
            },
            selectSelects: function(name) {
                var selects = "";
                $("#" + name + " option:selected").each(function(i) {
                    if (0 == i) {
                        selects = $(this).val()
                    } else {
                        selects += ("," + $(this).val())
                    }
                });
                return selects
            }
        }
        
	});
	
})(jQuery);
web_status = {
    SUCCESS: 200,
    FAIL: 500
};
modal_status = {
    SUCCESS: "success",
    FAIL: "error",
    WARNING: "warning"
};
