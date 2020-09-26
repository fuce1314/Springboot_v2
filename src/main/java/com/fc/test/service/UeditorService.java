package com.fc.test.service;

import java.io.IOException;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.file.FileUploadUtils;
import com.fc.test.mapper.auto.TsysDatasMapper;
import com.fc.test.mapper.auto.TsysFileDataMapper;
import com.fc.test.mapper.auto.TsysFileMapper;
import com.fc.test.model.auto.TsysDatas;
import com.fc.test.model.auto.TsysFile;
import com.fc.test.model.auto.TsysFileData;
import com.fc.test.shiro.util.ShiroUtils;
import com.fc.test.util.SnowflakeIdWorker;
import com.fc.test.util.StringUtils;

/**
 * 百度文件上传service
 * @ClassName:  UeditorService   
 * @author: fc
 * @date:   2019年6月30日 下午5:51:43   
 *
 */
@Service
public class UeditorService {
	@Autowired
	private TsysFileDataMapper tsysFileDataMapper;
	
	//文件存储mapper
	@Autowired
	private TsysDatasMapper tsysDatasMapper;
	//文件信息mapper
	@Autowired
	private TsysFileMapper tsysFileMapper;
	
    
    /**
	 * 文件上传文件存储到文件表
	 * @param record
	 * @param fileURL
	 * @return TsysDatas
	 * @throws IOException 
	 */
	public TsysDatas fileDataByinsert(MultipartFile file) throws IOException {
		//文件上传获取文件名字
        String files = FileUploadUtils.upload(file);
        //补充完整url地址 
        String filesURL="";
        //补充完整的真实地址
        String filesAbPath="";
        if ("Y".equals(V2Config.getIsstatic())) {
        	//相对-static/file_upload
        	filesURL=V2Config.getIsroot_dir()+files;
        	filesAbPath=V2Config.getIsroot_dir()+files;
		}else {
			//绝对-D:/v2file
			filesURL=V2Config.getIsroot_dir()+files;
			filesAbPath=V2Config.getDefaultBaseDir()+files;
		}
        String fileName=file.getOriginalFilename();
    	// 获得文件后缀名称
    	String suffixName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
    	if(StringUtils.isEmpty(suffixName)) {
    		//如果没有后缀默认后缀
    		suffixName=FileUploadUtils.IMAGE_JPG_EXTENSION;
    	}
        
		TsysDatas record=new TsysDatas();
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setFilePath(filesURL);
		record.setFileAbsolutePath(filesAbPath);
		record.setFileSuffix(suffixName);
		record.setFileType(V2Config.getIsstatic());
		if(tsysDatasMapper.insertSelective(record)>0)
		{
			return record;
		}
		return null;
	}
    
    
    /**
     * 添加文件信息
     */
    @Transactional
	public TsysFileData fileInfoByininsert(String dataId) {
    	TsysFile record=new TsysFile();
    	record.setFileName("百度富文本上传");
		//插入创建人id
		record.setCreateUserId(ShiroUtils.getUserId());
		//插入创建人name
		record.setCreateUserName(ShiroUtils.getLoginName());
		//插入创建时间
		record.setCreateTime(new Date());
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		//插入关联表
		TsysFileData tsysFileData=new TsysFileData();
		tsysFileData.setId(SnowflakeIdWorker.getUUID());
		tsysFileData.setFileId(record.getId());
		tsysFileData.setDataId(dataId);
		tsysFileDataMapper.insert(tsysFileData);
		int i= tsysFileMapper.insertSelective(record);
		if(i>0) {
			return tsysFileData;
		}
		return null;
	}
}
