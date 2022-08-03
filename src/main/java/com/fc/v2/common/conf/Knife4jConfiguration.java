package com.fc.v2.common.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

@Configuration
@EnableSwagger2WebMvc
public class Knife4jConfiguration {
	@Autowired
	private V2Config v2Config;

    @Bean(value = "defaultApi2")
    public Docket defaultApi2() {
    	Contact contact=new Contact("v2","https://gitee.com/bdj/SpringBoot_v2", "87766867@qq.com"); 
        Docket docket=new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(new ApiInfoBuilder()
                        //.title("swagger-bootstrap-ui-demo RESTful APIs")
                        .description("SpringBoot_v2项目是努力打造springboot框架的极致细腻的脚手架")
                        //服务条款Url
                        .termsOfServiceUrl("https://gitee.com/bdj/SpringBoot_v2/blob/master/LICENSE")
                        .contact(contact)
                        .version(v2Config.getVersion())
                        .build())
                //分组名称
                .groupName("v2")
                .select()
                //这里指定Controller扫描包路径
                .apis(RequestHandlerSelectors.basePackage("com.fc.v2.controller"))
                .paths(PathSelectors.any())
                .build();
        return docket;
    }
}
