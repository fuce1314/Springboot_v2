package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.QiNiuCloudService;
import com.fc.test.util.QiNiuResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @ClassName dell
 * @Description TOOD
 * @Author X
 * @Data 2019/11/13
 * @Version 1.0
 **/
@Controller
@RequestMapping("QiNiuCloudController")
public class QiNiuCloudController extends BaseController {

    @Autowired
    private QiNiuCloudService qiNiuCloudService;

    //跳转页面参数
    private String prefix = "admin/fileCloud";

    /**
     * 文件上传云库展示页面
     * TODO(请说明这个方法的作用).
     * @param model
     * @return
     */
    @GetMapping("/view")
    @RequiresPermissions("system:file:view")
    public String view(ModelMap model)
    {
        String str="图片上传云库";
        setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }


    @PostMapping("/uploadToQiNiu")
    @ResponseBody
    public QiNiuResult upload(@RequestParam("file")MultipartFile uploadFile){
        try {
            return qiNiuCloudService.uploadToQiNiu(uploadFile);
        } catch (IOException e){
           e.printStackTrace();
           return QiNiuResult.error(e.getMessage());
        }
    }
}
