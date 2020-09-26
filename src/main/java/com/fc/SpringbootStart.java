package com.fc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;


/**
 * 项目启动方法
 * @author fuce
 *
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class SpringbootStart {

    public static void main(String[] args) {

        SpringApplication.run(SpringbootStart.class, args);
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
