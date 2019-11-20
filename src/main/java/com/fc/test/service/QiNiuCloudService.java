package com.fc.test.service;

import com.fc.test.common.domain.AjaxResult;
import com.google.gson.Gson;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.util.UUID;

/**
 * 七牛Service
 * @Author QQ1057718016
 * @Data 2019/11/13
 * @Version 1.0
 **/
@Service
public class QiNiuCloudService {

    @Value("${oss.qiniu.accessKey}")
    private String accessKey;

    @Value("${oss.qiniu.bucket}")
    private String bucket;

    @Value("${oss.qiniu.secretKey}")
    private String secretKey;

    @Value("${oss.qiniu.domain}")
    private String domain;

    public AjaxResult uploadToQiNiu(MultipartFile uploadFile) throws IOException {

        //构造一个带指定 Region 对象的配置类
        Configuration cfg = new Configuration(Region.huanan());
        //文件上传管理器
        UploadManager uploadManager = new UploadManager(cfg);
        //生成上传凭证，然后准备上传
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);
        //给图片重新设定名字
        String fileName = uploadFile.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString().toUpperCase().replace("-", "");
        fileName = uuid + suffix;
        //默认不指定key的情况下，以文件内容的hash值作为文件名
        Response response = uploadManager.put(uploadFile.getBytes(), fileName, upToken);
        //解析上传成功的结果
        DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
        // System.out.println(putRet.key);
        //System.out.println(putRet.hash);
        //成功 返回url name
        
        return  AjaxResult.success()
                .put("url", domain + "/" + putRet.key)
                .put("name", putRet.key);
        
    }
}
