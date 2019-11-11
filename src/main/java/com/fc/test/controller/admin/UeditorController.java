package com.fc.test.controller.admin;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.fc.test.common.base.BaseController;
import com.fc.test.model.auto.TsysDatas;
import com.fc.test.model.custom.PublicMsg;
import com.fc.test.model.custom.Ueditor;
import com.fc.test.service.UeditorService;
import io.swagger.annotations.Api;

@Controller
@Api(value = "百度编辑器")
@RequestMapping("/UeditorController")
public class UeditorController  extends BaseController{
	@Autowired
	private UeditorService ueditorService;
	
	
	@RequestMapping("/ueditor")
    @ResponseBody
    public Object ueditor(HttpServletRequest request,String action,MultipartFile upfile) {
		if("config".equals(action)) {
			  return PublicMsg.UEDITOR_CONFIG;
		}
		if ("uploadimage".equals(action)) {//图片上传
			
			try {
				//添加文件到本地
				TsysDatas	tsysDatas = ueditorService.fileDataByinsert(upfile);
				//添加文件信息
				ueditorService.fileInfoByininsert(tsysDatas.getId());
				String url2=request.getScheme()+"://"+ request.getServerName()+":"+request.getLocalPort()+request.getContextPath()+"/"+tsysDatas.getFilePath();
				Ueditor ueditor = new Ueditor("SUCCESS",url2, "ssss", "");
			    return ueditor;
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return null;
		}if ("uploadfile".equals(action)) {//文件上传


		}
		return PublicMsg.UeditorMsg.ERROR.get();
    }

    @RequestMapping(value="/imgUpload")
    @ResponseBody
    public Ueditor imgUpload(MultipartFile upfile) {
        Ueditor ueditor = new Ueditor();
        return ueditor;
    }
    
    

    	
    public String updateAvatar(MultipartFile file)
    {
        try
        {
            if (!file.isEmpty())
            {
                //插入文件存储表
            	String id=sysDatasService.insertSelective(file);
                if(id!=null){
                	 return id;
                }
            }
            return null;
        }
        catch (Exception e)
        {
            return null;
        }
    }

	
}
