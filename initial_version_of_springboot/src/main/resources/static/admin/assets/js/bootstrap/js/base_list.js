/**
 * 用户管理JS
 * 
 * @Author Jack
 */




(function($) {
	var x=$.extend({
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
			            sortable: false,           //是否启用排序
			            sortOrder: "asc",          //排序方式
			            queryParams: oTableInit.queryParams,//传递参数（*）
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
			                fileName: '总台帐报表',  //文件名称设置
			                worksheetName: 'sheet1',  //表格工作区名称
			                tableName: '总台帐报表',
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
			search:function(my){
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
						search.pageSize= params.pageSize;
						
						search.pageNum=params.pageNumber;
						
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
                    return row[$.table._option.columns[1].field]
                })
            }
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
                    }
                };
                $.ajax(config)
            },
			remove:function(id){
				$.modal.confirm("确定删除该条" + "信息吗？", function() {
                    //var url = $.common.isEmpty(id) ? $.table._option.removeUrl : $.table._option.removeUrl.replace("{id}", id);
                    var data = {
                        "ids": id
                    };
                    $.operate.submit(url, "post", "json", data)
                })
			},
			ajaxSuccess: function(result) {
                if (result.code == web_status.SUCCESS) {
                    $.modal.msgSuccess(result.msg);
                    $.table.refresh()
                } else {
                    $.modal.alertError(result.msg)
                }
                $.modal.closeLoading()
            },
		}
	});
	
})(jQuery);
web_status = {
    SUCCESS: 0,
    FAIL: 500
};
modal_status = {
    SUCCESS: "success",
    FAIL: "error",
    WARNING: "warning"
};
