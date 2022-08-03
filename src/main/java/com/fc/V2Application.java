package com.fc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class,scanBasePackages = "com.fc.v2")
public class V2Application {

    public static void main(String[] args) {

        SpringApplication.run(V2Application.class, args);
        System.out.println("*******************************************\n" +
        		"* 码云地址                                  *\n" +
        		"* https://gitee.com/bdj/SpringBoot_v2     *\n" +
        		"*                                         *\n" +
        		"*******************************************\n" +
        		"           _.._        ,-------------------.\n" +
        		"        ,'      `.    ( 启动成功！开启学习之旅！      )\n" +
        		"       /  __) __` \\    `-,-----------------'\n" +
        		"      (  (`-`(-')  ) _.-'\n" +
        		"      /)  \\  = /  (\n" +
        		"     /'    |--' .  \\\n" +
        		"    (  ,---|  `-.)__`\n" +
        		"     )(  `-.,--'   _`-.\n" +
        		"    '/,'          (  Uu\",\n" +
        		"     (_       ,    `/,-' )\n" +
        		"     `.__,  : `-'/  /`--'\n" +
        		"       |     `--'  |\n" +
        		"       `   `-._   /\n" +
        		"        \\        (\n" +
        		"        /\\ .      \\. \n" +
        		"       / |` \\     ,-\\\n" +
        		"      /  \\| .)   /   \\\n" +
        		"     ( ,'|\\    ,'     :\n" +
        		"     | \\,`.`--\"/      }\n" +
        		"     `,'    \\  |,'    /\n" +
        		"    / \"-._   `-/      |\n" +
        		"    \"-.   \"-.,'|     ;\n" +
        		"   /        _/[\"---'\"\"]\n" +
        		"  :        /  |\"-     '\n" +
        		"  '           |      /\n" +
        		"              `      |");


    }

}
