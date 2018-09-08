package com.fc;

import java.util.ArrayList;
import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.custom.BootstrapThree;
import com.fc.test.model.custom.PremissionThreeModelVo;
import com.fc.test.service.SysPremissionService;
import com.google.gson.Gson;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootSwagger2Application.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)

public class Test {
	@Autowired
	private SysPremissionService sysPremissionService;
	
	//@org.junit.Test
	public void test(){
		PremissionThreeModelVo modelVo= sysPremissionService.queryThreePrem();
		Gson gson=new Gson();
		System.out.println();
		System.out.println(gson.toJson(modelVo));
		System.out.println();
	}
	@org.junit.Test
	public void test2(){
		
		PremissionThreeModelVo modelVo= sysPremissionService.queryThreePrem();
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
		
		
		
		
		System.out.println(new Gson().toJson(bootstrapThree));
		
		
		
	}
	
	public static void main(String[] args) {
		Test test=new Test();
		test.test2();
	}
}
