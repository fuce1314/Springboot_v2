package com.fc.test.common.listener;

import com.fc.test.quartz.QuartzScheduler;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.HashMap;
import java.util.Map;

/**
 * @Auther: Jan 橙寂
 * @Date: 2019-7-1 11:06
 * @Description:
 * @Version: 1.0
 */
@WebListener
public class ConfigListener implements ServletContextListener {

    @Autowired
    private QuartzScheduler scheduler;
    private static Map<String, String> conf = new HashMap<>();

    public static Map<String, String> getConf() {
        return conf;
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        conf.clear();
    }

    @Override
    public void contextInitialized(ServletContextEvent evt) {
        ServletContext sc = evt.getServletContext();

        //项目发布,当前运行环境的绝对路径
        conf.put("realPath", sc.getRealPath("/").replaceFirst("/", ""));

        //servletContextPath,默认""
        conf.put("contextPath", sc.getContextPath());

        //开启定时调度
      //  scheduler.startJob();
    }

}