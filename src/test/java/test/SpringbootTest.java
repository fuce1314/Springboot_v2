package test;


import java.io.File;
import java.io.Writer;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.context.IContext;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;
import com.fc.SpringbootStart;
import com.fc.test.common.spring.SpringUtils;
import com.fc.test.mapper.auto.GeneratorMapper;
import com.fc.test.mapper.custom.TsysUserDao;

import cn.hutool.core.io.file.FileWriter;
import cn.hutool.json.JSONUtil;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootStart.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class SpringbootTest {

	@Autowired
	private GeneratorMapper generatorMapper;
	
	
	
	
	
	@Test
	public void test(){
		/*PermissionTreeModelVo modelVo= sysPremissionService.queryTreePrem();
		Gson gson=new Gson();
		System.out.println();
		System.out.println(gson.toJson(modelVo));
		System.out.println();*/
		
		//System.out.println(JSONUtil.toJsonStr(generatorMapper.queryColumns2("t_test")));
		
		
		TsysUserDao dao=  SpringUtils.getBean(TsysUserDao.class);
		
		Method[] methods= dao.getClass().getMethods();
		for (Method method : methods) {
			Annotation[]  annotations= method.getAnnotations();
			
			for (Annotation annotation : annotations) {
				System.out.println(annotation.toString());
				
				Method[] methods2= annotations.getClass().getDeclaredMethods();
				for (Method method2 : methods2) {
					Annotation[] annotations2=	method2.getAnnotations();
					for (Annotation annotation2 : annotations2) {
						System.out.println("annotation2>>"+annotation2.toString());
					}
				}
			}
		}
		
		System.out.println(dao.queryUserName("admin").getUsername());
	}
	
	public   void main() {
		//创建模版加载器
        ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
        resolver.setPrefix("templates/");  //模板文件的所在目录
        resolver.setSuffix(".TEXT");       //模板文件后缀
        //创建模板引擎
        TemplateEngine templateEngine = new TemplateEngine();
        //将加载器放入模板引擎
        templateEngine.setTemplateResolver(resolver);
        //创建字符输出流并且自定义输出文件的位置和文件名
       // FileWriter writer = new FileWriter("d:/index.html");
        //创建Context对象(存放Model)
        Context context = new Context();
        //放入数据
        Map<String, String> map=new HashMap<String, String>();
        map.put("hello4","444");
        map.put("hello2","2222");
        context.setVariable("hello","111111111");
        context.setVariable("items",map);
        //创建静态文件,"text"是模板html名字
       
       System.out.println(templateEngine.process("example", context)) ;
       
	}
	

	

}
