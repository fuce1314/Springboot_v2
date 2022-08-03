package com.fc.v2.controller.admin.app;

import java.util.HashMap;
import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ApiController")
public class ApiController {
	@GetMapping("/test")
	public Object test() {
		Map<String, String> map=new HashMap<String, String>();
		map.put("a", "1");
		map.put("b", "2");
		map.put("c", "3");
		return map;
		
	}

}
