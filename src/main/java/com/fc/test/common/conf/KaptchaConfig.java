package com.fc.test.common.conf;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;

/**
 * 谷歌验证码配置文件
 * @author fuce 
 * @date: 2018年9月12日 上午11:02:13
 */
@Configuration
public class KaptchaConfig {
	 @Bean(name = "captchaProducer")
	    public DefaultKaptcha getKaptchaBean()
	    {
	        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
	        Properties properties = new Properties();
	        properties.setProperty("kaptcha.border", "yes");
	        properties.setProperty("kaptcha.border.color", "105,179,90");
	        properties.setProperty("kaptcha.textproducer.font.color", "blue");
	        properties.setProperty("kaptcha.image.width", "160");
	        properties.setProperty("kaptcha.image.height", "60");
	        properties.setProperty("kaptcha.textproducer.font.size", "28");
	        properties.setProperty("kaptcha.session.key", "kaptchaCode");
	        properties.setProperty("kaptcha.textproducer.char.spac", "35");
	        properties.setProperty("kaptcha.textproducer.char.length", "5");
	        properties.setProperty("kaptcha.textproducer.font.names", "Arial,Courier");
	        properties.setProperty("kaptcha.noise.color", "white");
	        Config config = new Config(properties);
	        defaultKaptcha.setConfig(config);
	        return defaultKaptcha;
	    }

	    @Bean(name = "captchaProducerMath")
	    public DefaultKaptcha getKaptchaBeanMath()
	    {
	        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
	        Properties properties = new Properties();
	        properties.setProperty("kaptcha.border", "yes");
	        properties.setProperty("kaptcha.border.color", "105,179,90");
	        properties.setProperty("kaptcha.textproducer.font.color", "blue");
	        properties.setProperty("kaptcha.image.width", "100");
	        properties.setProperty("kaptcha.image.height", "30");
	        properties.setProperty("kaptcha.textproducer.font.size", "30");
	        properties.setProperty("kaptcha.session.key", "kaptchaCodeMath");
	        properties.setProperty("kaptcha.textproducer.impl", "com.fc.test.common.support.KaptchaTextCreator");
	        properties.setProperty("kaptcha.textproducer.char.spac", "5");
	        properties.setProperty("kaptcha.textproducer.char.length", "6");
	        properties.setProperty("kaptcha.textproducer.font.names", "Arial,Courier");
	        properties.setProperty("kaptcha.noise.color", "white");
	        properties.setProperty("kaptcha.noise.impl", "com.google.code.kaptcha.impl.NoNoise");
	        properties.setProperty("kaptcha.obscurificator.impl", "com.google.code.kaptcha.impl.ShadowGimpy");
	        Config config = new Config(properties);
	        defaultKaptcha.setConfig(config);
	        return defaultKaptcha;
	    }
}
