package com.fc;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.fc.test.model.custom.PremissionThreeModelVo;
import com.fc.test.service.SysPremissionService;
import com.google.gson.Gson;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootSwagger2Application.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)

public class Test {
	@Autowired
	private SysPremissionService sysPremissionService;
	
	@org.junit.Test
	public void test(){
		PremissionThreeModelVo modelVo= sysPremissionService.queryThreePrem();
		Gson gson=new Gson();
		System.out.println();
		System.out.println(gson.toJson(modelVo));
		System.out.println();
	}
}
