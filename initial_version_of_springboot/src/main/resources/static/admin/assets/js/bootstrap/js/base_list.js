/**
 * 用户管理JS
 * 
 * @Author Jack
 */
$(function () {
    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();
})

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#dataTable').bootstrapTable({
            url: dataUrl,     //请求后台的URL（*）
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
            search: !0,
            showRefresh: !0,//刷新按钮
            showToggle: !0,//排版按钮
            showColumns: !0,//显示列按钮
            columns: dataColumns,
            onLoadSuccess: function(){  //加载成功时执行
                console.info("加载成功");
	        },
	        onLoadError: function(){  //加载失败时执行
	            console.info("加载数据失败");
	        }
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        return dataQueryParams(params);
    };
    return oTableInit;
};