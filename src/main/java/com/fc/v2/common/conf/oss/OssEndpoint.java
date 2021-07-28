
package com.fc.v2.common.conf.oss;

import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.model.auto.SysFile;
import com.fc.v2.model.auto.TsysUser;
import com.fc.v2.service.SysFileService;
import com.fc.v2.shiro.util.ShiroUtils;
import com.fc.v2.util.SnowflakeIdWorker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * aws 对外提供服务端点
 * @ClassName: OssEndpoint
 * @author fuce
 * @date 2021-02-28 20:01
 */
@RestController
@RequestMapping("/oss")
public class OssEndpoint {

	private final OssTemplate template;

	@Autowired
	public SysFileService sysFileService;

	public OssEndpoint(OssTemplate ossTemplate) {
		this.template=ossTemplate;
	}


	/**
	 * 创建桶
	 * @param bucketName
	 * @return
	 */
	@PostMapping("/bucket/{bucketName}")
	public Bucket createBucker(@PathVariable String bucketName) {

		template.createBucket(bucketName);
		return template.getBucket(bucketName).get();

	}

	/**
	 * 获取所有桶
	 * @return
	 */
	@GetMapping("/bucket")
	public List<Bucket> getBuckets() {
		return template.getAllBuckets();
	}


	/**
	 * 获取桶
	 * @param bucketName 桶名
	 * @return
	 */
	@GetMapping("/bucket/{bucketName}")
	public Bucket getBucket(@PathVariable String bucketName) {
		return template.getBucket(bucketName).orElseThrow(() -> new IllegalArgumentException("Bucket Name not found!"));
	}

	/**
	 * 删除桶
	 * @param bucketName 桶名
	 */
	@DeleteMapping("/bucket/{bucketName}")
	@ResponseStatus(HttpStatus.ACCEPTED)
	public void deleteBucket(@PathVariable String bucketName) {
		template.removeBucket(bucketName);
	}

	/**
	 * 上传文件
	 * @param object 文件流对象
	 * @param bucketName 桶名
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/object/{bucketName}")
	public AjaxResult createObject(@RequestBody MultipartFile object, @PathVariable String bucketName) throws Exception {
		String fileName = object.getOriginalFilename();
		String suffixName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
		String uuid=SnowflakeIdWorker.getUUID();
		String fileSuffixName=uuid+suffixName;
		PutObjectResult putObjectResult=template.putObject(bucketName, fileSuffixName, object.getInputStream(), object.getSize(), object.getContentType());
		if(putObjectResult!=null){
			TsysUser tsysUser=ShiroUtils.getUser();
			SysFile sysFile=null;
			if(tsysUser!=null) {
				sysFile=new SysFile(uuid,  fileSuffixName,  bucketName, object.getSize(), object.getContentType(),ShiroUtils.getUserId(), ShiroUtils.getLoginName(), new Date(),null, null, null);
			}else {
				sysFile=new SysFile(uuid,  fileSuffixName,  bucketName, object.getSize(), object.getContentType(),"-", "-", new Date(),null, null, null);
			}
			int i=sysFileService.insertSelective(sysFile);
			if(i>0){
				return AjaxResult.successData(200,template.getObjectInfo(bucketName,  fileSuffixName));
			}
		}
		return AjaxResult.error("上传失败");
	}




	/**
	 * 上传文件
	 * @param object 上传对象
	 * @param bucketName 桶名
	 * @param objectName 对象名字
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/object/{bucketName}/{objectName}")
	public S3Object createObject(@RequestBody MultipartFile object, @PathVariable String bucketName,
			@PathVariable String objectName)  throws Exception{
		template.putObject(bucketName, objectName, object.getInputStream(), object.getSize(), object.getContentType());
		return template.getObjectInfo(bucketName, objectName);

	}

	/**
	 * 根据文件前置查询文件
	 * @param bucketName
	 * @param objectName
	 * @return
	 */
	@GetMapping("/object/{bucketName}/{objectName}")
	public List<S3ObjectSummary> filterObject(@PathVariable String bucketName, @PathVariable String objectName) {

		return template.getAllObjectsByPrefix(bucketName, objectName, true);

	}


	/**
	 * 获取文件外链
	 * @param bucketName 桶名
	 * @param objectName 对象名字
	 * @param expires 时间
	 * @return
	 */
	@GetMapping("/object/{bucketName}/{objectName}/{expires}")
	public Map<String, Object> getObject(@PathVariable String bucketName, @PathVariable String objectName,
			@PathVariable Integer expires) {
		Map<String, Object> responseBody = new HashMap<>(8);
		// Put Object info
		responseBody.put("bucket", bucketName);
		responseBody.put("object", objectName);
		responseBody.put("url", template.getObjectURL(bucketName, objectName, expires));
		responseBody.put("expires", expires);
		return responseBody;
	}

	/**
	 * 删除文件
	 * @param bucketName 桶名
	 * @param objectName 对象名
	 */
	@ResponseStatus(HttpStatus.ACCEPTED)
	@DeleteMapping("/object/{bucketName}/{objectName}/")
	public void deleteObject(@PathVariable String bucketName, @PathVariable String objectName) {

		try {
			template.removeObject(bucketName, objectName);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	/**
	 * 修改文件
	 * @param object 文件流对象
	 * @param bucketName 桶名
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/edit/{id}/{bucketName}")
	public AjaxResult createObject(@PathVariable("id") String id,@RequestBody MultipartFile object, @PathVariable("bucketName") String bucketName) throws Exception {
		SysFile oldSysFile=sysFileService.selectByPrimaryKey(id);
		if(oldSysFile!=null){
			String fileName = object.getOriginalFilename();
			String suffixName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
			String uuid=SnowflakeIdWorker.getUUID();
			String fileSuffixName=uuid+suffixName;
			PutObjectResult putObjectResult=template.putObject(bucketName, fileSuffixName, object.getInputStream(), object.getSize(), object.getContentType());
			if(putObjectResult!=null){
				oldSysFile.setFileSize(object.getSize());
				oldSysFile.setUpdateUserId(ShiroUtils.getUserId());
				oldSysFile.setUpdateUserName(ShiroUtils.getLoginName());
				oldSysFile.setUpdateTime(new Date());
				oldSysFile.setFileName(fileSuffixName);
				oldSysFile.setBucketName(bucketName);
				oldSysFile.setFileSuffix(object.getContentType());
				int i=sysFileService.updateByPrimaryKeySelective(oldSysFile);
				if(i>0){
					return AjaxResult.successData(200,template.getObjectInfo(bucketName,  fileSuffixName));
				}
			}
		}
		return AjaxResult.error("修改失败");
	}
	
	/**
	 * 富文本上传文件
	 * @param object 文件流对象
	 * @param bucketName 桶名
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/createObjectLayedit/{bucketName}")
	public Object createObjectLayedit(@RequestBody MultipartFile file, @PathVariable String bucketName) throws Exception {
		Map<String,Object> retmap=new HashMap<String, Object>();
		Map<String,Object> retdatamap=new HashMap<String, Object>();
		String fileName = file.getOriginalFilename();
		String suffixName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
		String uuid=SnowflakeIdWorker.getUUID();
		String fileSuffixName=uuid+suffixName;
		PutObjectResult putObjectResult=template.putObject(bucketName, fileSuffixName, file.getInputStream(), file.getSize(), file.getContentType());
		if(putObjectResult!=null){
			TsysUser tsysUser=ShiroUtils.getUser();
			SysFile sysFile=null;
			if(tsysUser!=null) {
				sysFile=new SysFile(uuid,  fileSuffixName,  bucketName, file.getSize(), file.getContentType(),ShiroUtils.getUserId(), ShiroUtils.getLoginName(), new Date(),null, null, null);
			}else {
				sysFile=new SysFile(uuid,  fileSuffixName,  bucketName, file.getSize(), file.getContentType(),"-", "-", new Date(),null, null, null);
			}
			int i=sysFileService.insertSelective(sysFile);
			if(i>0){
				retmap.put("code",0);
				retmap.put("msg","上传成功!");
				String bucketURL=template.getOssProperties().getEndpoint()+"/"+template.getOssProperties().getBucketName()+"/";
				retdatamap.put("src",bucketURL+template.getObjectInfo(bucketName,  fileSuffixName).getKey());
				retmap.put("data",retdatamap);
				return retmap;
			}
		}
		retmap.put("code",500);
		retmap.put("msg","上传失败!");
		return retmap;
	}

}
