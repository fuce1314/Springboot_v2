package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.fc.SpringbootStart;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.custom.BootstrapTree;
import com.fc.test.model.custom.PremissionTreeModelVo;
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
		/*PremissionTreeModelVo modelVo= sysPremissionService.queryTreePrem();
		Gson gson=new Gson();
		System.out.println();
		System.out.println(gson.toJson(modelVo));
		System.out.println();*/
	}
	
	public void test2(){
		
		/*PremissionTreeModelVo modelVo= sysPremissionService.queryTreePrem();
		TsysPremission home= modelVo.getTsysPremission();
		List<PremissionTreeModelVo> tree_mengls= modelVo.getChildList();
		List<BootstrapTree> bootstrapTree_mengls=new  ArrayList<BootstrapTree>();
		for (PremissionTreeModelVo menglx : tree_mengls) {
			TsysPremission mengl= menglx.getTsysPremission();
			List<BootstrapTree> bootstrapTree_mens=new  ArrayList<BootstrapTree>();
			
			List<PremissionTreeModelVo> tree_mens=menglx.getChildList();
			for (PremissionTreeModelVo buttonx : tree_mens) {
				TsysPremission button=  buttonx.getTsysPremission();
				List<PremissionTreeModelVo> tree_buttons=buttonx.getChildList();
				List<BootstrapTree> bootstrapTree_buttons=new  ArrayList<BootstrapTree>();
				
				for (PremissionTreeModelVo lasts : tree_buttons) {
					TsysPremission last= lasts.getTsysPremission();
					BootstrapTree tree_button=new BootstrapTree(last.getName(), last.getIcon(),"",last.getId(),null);
					bootstrapTree_buttons.add(tree_button);
				}
				BootstrapTree bootstrapTree_button=new BootstrapTree(button.getName(), button.getIcon(),"",button.getId(), bootstrapTree_buttons);
				bootstrapTree_mens.add(bootstrapTree_button);
			}
			BootstrapTree bootstrapTree_mengl=new BootstrapTree(mengl.getName(), mengl.getIcon(),"",mengl.getId(), bootstrapTree_mens);
			bootstrapTree_mengls.add(bootstrapTree_mengl);
		}
		
		BootstrapTree bootstrapTree=new BootstrapTree(home.getName(), home.getIcon(),"",home.getId(), bootstrapTree_mengls);
		
		*/
		
		
		/*System.out.println(new Gson().toJson(bootstrapTree));*/
		
		
		
	}
	
	
	/**
	 * 判断权限是否有权限
	 * @param myTsysPremissions
	 * @param sysPremission
	 */
	public Boolean ifpermissions(List<TsysPremission>  myTsysPremissions,BootstrapTree sysPremission){
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
		BootstrapTree  sysPremissions= sysPremissionService.getbooBootstrapTreePerm();
		if(ifpermissions(myTsysPremissions, sysPremissions)){
			sysPremissions.setState(map);
			
		}
		List<BootstrapTree>  menugl= sysPremissions.getNodes();
		for (BootstrapTree menuglbootstrapTree : menugl) {
			if(ifpermissions(myTsysPremissions, menuglbootstrapTree)){//菜单栏管理设置
				menuglbootstrapTree.setState(map);
			}
			List<BootstrapTree> menu=menuglbootstrapTree.getNodes();
			for (BootstrapTree menubootstrapTree : menu) {
				if(ifpermissions(myTsysPremissions, menubootstrapTree)){//菜单栏设置
					menubootstrapTree.setState(map);
				}
				
				List<BootstrapTree> buttons=menubootstrapTree.getNodes();
				for (BootstrapTree button : buttons) {
					if(ifpermissions(myTsysPremissions, button)){//按钮设置
						button.setState(map);
					}
				}
			}
			
		}
		
		
		System.out.println(new Gson().toJson(sysPremissions));
		
		
		
		
	}
	

}
