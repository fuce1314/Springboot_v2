package com.fc.test.common.conf;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.pagehelper.PageHelper;

/**
* 分页插件配置类
* @ClassName: PageHelperConf
* @Description: TODO(这里用一句话描述这个类的作用)
* @author fuce
* @date 2018年6月3日
*
 */
@Configuration
public class PageHelperConf {

    /**
     * 分页插件处理
     * @return
     */
    @Bean
    public PageHelper pageHelper() {
        PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("offsetAsPageNum", "true");
        properties.setProperty("rowBoundsWithCount", "true");
        properties.setProperty("reasonable", "true");
        properties.setProperty("dialect", "mysql");    //配置mysql数据库的方言
        pageHelper.setProperties(properties);
        return pageHelper;
    }
}
