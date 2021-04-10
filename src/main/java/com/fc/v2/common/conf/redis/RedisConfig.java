package com.fc.v2.common.conf.redis;

import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;

/**
 * redis 序列化配置
 * @ClassName: RedisConfig
 * @author fuce
 * @date 2021-01-05 12:03
 */
@Configuration
public class RedisConfig  extends CachingConfigurerSupport{
	
		@Bean
	    @SuppressWarnings(value = { "unchecked", "rawtypes"})
	    public RedisTemplate<Object, Object> redisTemplate(RedisConnectionFactory connectionFactory)
	    {
			
	        RedisTemplate<Object, Object> template = new RedisTemplate<>();
	        template.setConnectionFactory(connectionFactory);

	        FastJson2JsonRedisSerializer serializer = new FastJson2JsonRedisSerializer(Object.class);

	        ObjectMapper mapper = new ObjectMapper();
	        mapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
	        //过期方法
	        //mapper.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
	        mapper.activateDefaultTyping(LaissezFaireSubTypeValidator.instance , ObjectMapper.DefaultTyping.NON_FINAL);
	        serializer.setObjectMapper(mapper);
	        template.setValueSerializer(serializer);
	        // 使用StringRedisSerializer来序列化和反序列化redis的key值
	        template.setKeySerializer(new StringRedisSerializer());
	        template.afterPropertiesSet();
	        System.out.println("xxxxxxxxxxxxxxxxxx");
	        return template;
	    }
}
