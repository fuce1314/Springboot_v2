package com.fc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/**
 * 项目启动方法
 * @author Administrator
 *
 */
@SpringBootApplication
@MapperScan(value = "com.fc.test.mapper")
public class SpringbootStart {

    public static void main(String[] args) {

        SpringApplication.run(SpringbootStart.class, args);
        System.out.println("/**" + 
        		" " + 
        		" " + 
        		" *                                                    __----~~~~~~~~~~~------___\n" + 
        		" *                                   .  .   ~~//====......          __--~ ~~\n" + 
        		" *                   -.            \\_|//     |||\\\\  ~~~~~~::::... /~\n" + 
        		" *                ___-==_       _-~o~  \\/    |||  \\\\            _/~~-\n" + 
        		" *        __---~~~.==~||\\=_    -_--~/_-~|-   |\\\\   \\\\        _/~\n" + 
        		" *    _-~~     .=~    |  \\\\-_    '-~7  /-   /  ||    \\      /\n" + 
        		" *  .~       .~       |   \\\\ -_    /  /-   /   ||      \\   /\n" + 
        		" * /  ____  /         |     \\\\ ~-_/  /|- _/   .||       \\ /\n" + 
        		" * |~~    ~~|--~~~~--_ \\     ~==-/   | \\~--===~~        .\\\n" + 
        		" *          '         ~-|      /|    |-~\\~~       __--~~\n" + 
        		" *                      |-~~-_/ |    |   ~\\_   _-~            /\\\n" + 
        		" *                           /  \\     \\__   \\/~                \\__\n" + 
        		" *                       _--~ _/ | .-~~____--~-/                  ~~==.\n" + 
        		" *                      ((->/~   '.|||' -_|    ~~-/ ,              . _||\n" + 
        		" *                                 -_     ~\\      ~~---l__i__i__i--~~_/\n" + 
        		" *                                 _-~-__   ~)  \\--______________--~~\n" + 
        		" *                               //.-~~~-~_--~- |-------~~~~~~~~\n" + 
        		" *                                      //.-~~~--\\\n" + 
        		" *                              启动成功!\n" + 
        		" */\n" + 
        		"");
    }
}
