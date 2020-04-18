package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.QiNiuCloudService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

/**
 * 七牛文件上传controller
 * @Author QQ1057718016
 * @Data 2019/11/13
 * @Version 1.0
 **/
@Api(value = "七牛文件上传")
@Controller
@RequestMapping("/QiNiuCloudController")
public class QiNiuCloudController extends BaseController {

    @Autowired
    private QiNiuCloudService qiNiuCloudService;

    //跳转页面参数
    private String prefix = "admin/qiniu_cloud";

   /**
    * 文件上传云库展示页面
    * @param model
    * @return
    * @Author QQ1057718016
    * @Date 2019年11月20日 下午10:19:55
    */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:qiniucloud:view")
    public String view(ModelMap model)
    {
        String str="图片上传云库";
        setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }

    /**
     * 七牛文件上传
     * @param uploadFile
     * @return
     * @Author QQ1057718016
     * @Date 2019年11月20日 下午10:08:10
     */
    //@Log(title = "七牛文件上传", action = "1")
  	@ApiOperation(value = "七牛文件上传", notes = "七牛文件上传")
    @PostMapping("/uploadToQiNiu")
    @ResponseBody
    public AjaxResult upload(@RequestParam("file")MultipartFile uploadFile){
        try {
            return qiNiuCloudService.uploadToQiNiu(uploadFile);
        } catch (IOException e){
        	e.printStackTrace();
           return AjaxResult.error(e.getMessage());
        }
    }
}
