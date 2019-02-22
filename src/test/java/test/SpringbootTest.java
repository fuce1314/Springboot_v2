package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.fc.SpringbootSwagger2Application;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.custom.BootstrapThree;
import com.fc.test.model.custom.PremissionThreeModelVo;
import com.fc.test.service.SysPremissionService;
import com.google.gson.Gson;

//@RunWith(SpringRunner.class)
//@SpringBootTest(classes = SpringbootSwagger2Application.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class SpringbootTest {
	@Autowired
	private SysPremissionService sysPremissionService;
	@Autowired
	private PermissionDao permissionDao;
	
	public void test(){
		PremissionThreeModelVo modelVo= sysPremissionService.queryThreePrem();
		Gson gson=new Gson();
		System.out.println();
		System.out.println(gson.toJson(modelVo));
		System.out.println();
	}
	
	public void test2(){
		
		/*PremissionThreeModelVo modelVo= sysPremissionService.queryThreePrem();
		TsysPremission home= modelVo.getTsysPremission();
		List<PremissionThreeModelVo> three_mengls= modelVo.getChildList();
		List<BootstrapThree> bootstrapThree_mengls=new  ArrayList<BootstrapThree>();
		for (PremissionThreeModelVo menglx : three_mengls) {
			TsysPremission mengl= menglx.getTsysPremission();
			List<BootstrapThree> bootstrapThree_mens=new  ArrayList<BootstrapThree>();
			
			List<PremissionThreeModelVo> three_mens=menglx.getChildList();
			for (PremissionThreeModelVo buttonx : three_mens) {
				TsysPremission button=  buttonx.getTsysPremission();
				List<PremissionThreeModelVo> three_buttons=buttonx.getChildList();
				List<BootstrapThree> bootstrapThree_buttons=new  ArrayList<BootstrapThree>();
				
				for (PremissionThreeModelVo lasts : three_buttons) {
					TsysPremission last= lasts.getTsysPremission();
					BootstrapThree three_button=new BootstrapThree(last.getName(), last.getIcon(),"",last.getId(),null);
					bootstrapThree_buttons.add(three_button);
				}
				BootstrapThree bootstrapThree_button=new BootstrapThree(button.getName(), button.getIcon(),"",button.getId(), bootstrapThree_buttons);
				bootstrapThree_mens.add(bootstrapThree_button);
			}
			BootstrapThree bootstrapThree_mengl=new BootstrapThree(mengl.getName(), mengl.getIcon(),"",mengl.getId(), bootstrapThree_mens);
			bootstrapThree_mengls.add(bootstrapThree_mengl);
		}
		
		BootstrapThree bootstrapThree=new BootstrapThree(home.getName(), home.getIcon(),"",home.getId(), bootstrapThree_mengls);
		
		*/
		
		
		/*System.out.println(new Gson().toJson(bootstrapThree));*/
		
		
		
	}
	
	
	/**
	 * 判断权限是否有权限
	 * @param myTsysPremissions
	 * @param sysPremission
	 */
	public Boolean ifpermissions(List<TsysPremission>  myTsysPremissions,BootstrapThree sysPremission){
		for (TsysPremission mytsysPremission : myTsysPremissions) {
			if(sysPremission.getId().equals(mytsysPremission.getId())){
				return true;
			}
		}
		return false;
	}
	
	
	public void test3(){
	 Map<String,Object> map=new HashMap<String, Object>();
	 map.put("checked", true);
		//获取自己的权限
		List<TsysPremission>  myTsysPremissions= permissionDao.findByAdminUserId("1");
		//获取所有的权限
		BootstrapThree  sysPremissions= sysPremissionService.getbooBootstrapThreePerm();
		if(ifpermissions(myTsysPremissions, sysPremissions)){
			sysPremissions.setState(map);
			
		}
		List<BootstrapThree>  menugl= sysPremissions.getNodes();
		for (BootstrapThree menuglbootstrapThree : menugl) {
			if(ifpermissions(myTsysPremissions, menuglbootstrapThree)){//菜单栏管理设置
				menuglbootstrapThree.setState(map);
			}
			List<BootstrapThree> menu=menuglbootstrapThree.getNodes();
			for (BootstrapThree menubootstrapThree : menu) {
				if(ifpermissions(myTsysPremissions, menubootstrapThree)){//菜单栏设置
					menubootstrapThree.setState(map);
				}
				
				List<BootstrapThree> buttons=menubootstrapThree.getNodes();
				for (BootstrapThree button : buttons) {
					if(ifpermissions(myTsysPremissions, button)){//按钮设置
						button.setState(map);
					}
				}
			}
			
		}
		
		
		System.out.println(new Gson().toJson(sysPremissions));
		
		
		
		
	}
	

}
