package com.fc.v2.model.custom;

/**
 * 百度编辑器
* @ClassName: PublicMsg
* @author fuce
* @date 2019-09-02 01:11
*
 */
public class PublicMsg {
	 public final static String UEDITOR_CONFIG = "{" +
	            "    \"imageActionName\": \"uploadimage\"," +
	            "    \"imageFieldName\": \"upfile\"," +
	            "    \"imageMaxSize\": 2048000," +
	            "    \"imageAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"]," +
	            "    \"imageCompressEnable\": true," +
	            "    \"imageCompressBorder\": 1600," +
	            "    \"imageInsertAlign\": \"none\"," +
	            "    \"imageUrlPrefix\": \"\"," +
	            "    \"imagePathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "" +
	            "    \"scrawlActionName\": \"uploadscrawl\"," +
	            "    \"scrawlFieldName\": \"upfile\"," +
	            "    \"scrawlPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "    \"scrawlMaxSize\": 2048000," +
	            "    \"scrawlUrlPrefix\": \"\"," +
	            "    \"scrawlInsertAlign\": \"none\"," +
	            "" +
	            "    \"snapscreenActionName\": \"uploadimage\"," +
	            "    \"snapscreenPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "    \"snapscreenUrlPrefix\": \"\"," +
	            "    \"snapscreenInsertAlign\": \"none\"," +
	            "" +
	            "    \"catcherLocalDomain\": [\"127.0.0.1\", \"localhost\", \"img.baidu.com\"]," +
	            "    \"catcherActionName\": \"catchimage\"," +
	            "    \"catcherFieldName\": \"source\"," +
	            "    \"catcherPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "    \"catcherUrlPrefix\": \"\"," +
	            "    \"catcherMaxSize\": 2048000," +
	            "    \"catcherAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"]," +
	            "" +
	            "    \"videoActionName\": \"uploadvideo\"," +
	            "    \"videoFieldName\": \"upfile\"," +
	            "    \"videoPathFormat\": \"/ueditor/jsp/upload/video/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "    \"videoUrlPrefix\": \"\"," +
	            "    \"videoMaxSize\": 102400000," +
	            "    \"videoAllowFiles\": [" +
	            "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\"," +
	            "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\"]," +
	            "" +
	            "    \"fileActionName\": \"uploadfile\"," +
	            "    \"fileFieldName\": \"upfile\"," +
	            "    \"filePathFormat\": \"/ueditor/jsp/upload/file/{yyyy}{mm}{dd}/{time}{rand:6}\"," +
	            "    \"fileUrlPrefix\": \"\"," +
	            "    \"fileMaxSize\": 51200000," +
	            "    \"fileAllowFiles\": [" +
	            "        \".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"," +
	            "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\"," +
	            "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\"," +
	            "        \".rar\", \".zip\", \".tar\", \".gz\", \".7z\", \".bz2\", \".cab\", \".iso\"," +
	            "        \".doc\", \".docx\", \".xls\", \".xlsx\", \".ppt\", \".pptx\", \".pdf\", \".txt\", \".md\", \".xml\"" +
	            "    ]," +
	            "" +
	            "    \"imageManagerActionName\": \"listimage\"," +
	            "    \"imageManagerListPath\": \"/ueditor/jsp/upload/image/\"," +
	            "    \"imageManagerListSize\": 20," +
	            "    \"imageManagerUrlPrefix\": \"\"," +
	            "    \"imageManagerInsertAlign\": \"none\"," +
	            "    \"imageManagerAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"]," +
	            "" +
	            "    \"fileManagerActionName\": \"listfile\"," +
	            "    \"fileManagerListPath\": \"/ueditor/jsp/upload/file/\"," +
	            "    \"fileManagerUrlPrefix\": \"\"," +
	            "    \"fileManagerListSize\": 20," +
	            "    \"fileManagerAllowFiles\": [" +
	            "        \".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"," +
	            "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\"," +
	            "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\"," +
	            "        \".rar\", \".zip\", \".tar\", \".gz\", \".7z\", \".bz2\", \".cab\", \".iso\"," +
	            "        \".doc\", \".docx\", \".xls\", \".xlsx\", \".ppt\", \".pptx\", \".pdf\", \".txt\", \".md\", \".xml\"" +
	            "    ] " +
	            "" +
	            "}";
	    /**
	     * Ueditor的返回状态类型
	     */
	    public enum UeditorMsg{
	        SUCCESS("SUCCESS"),ERROR("上传失败");
	        private String v;
	        UeditorMsg(String v){
	            this.v =v;
	        }
	        public String get(){
	            return this.v;
	        }
	    }
}
