package com.fc.v2.common.conf.xss;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.web.servlet.HandlerMapping;
/**
 * Created by wjy on 2020/11/5.
 * xss 包装
 */
public class XssHttpServletRequestWrapper extends HttpServletRequestWrapper {
 
	public XssHttpServletRequestWrapper(HttpServletRequest request) {
		super(request);
	}
 
	/**
	 * 对header处理
	 * @param name
	 * @return
	 */
	@Override
	public String getHeader(String name) {
		String value = super.getHeader(name);
		return XssUtil.cleanXSS(value);
	}
 
	/**
	 * 对参数处理
	 * @param name
	 * @return
	 */
	@Override
	public String getParameter(String name) {
		String value = super.getParameter(name);
		return XssUtil.cleanXSS(value);
	}
 
	/**
	 * 对数值进行处理
	 * @param name
	 * @return
	 */
	@Override
	public String[] getParameterValues(String name) {
		String[] values = super.getParameterValues(name);
		if (values != null) {
			int length = values.length;
			String[] escapseValues = new String[length];
			for (int i = 0; i < length; i++) {
				escapseValues[i] = XssUtil.cleanXSS(values[i]);
			}
			return escapseValues;
		}
		return super.getParameterValues(name);
	}
 
	/**
	 * 主要是针对HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE 获取pathvalue的时候把原来的pathvalue经过xss过滤掉
	 */
	@Override
	public Object getAttribute(String name) {
		// 获取pathvalue的值
		if (HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE.equals(name)) {
			Map uriTemplateVars = (Map) super.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);
			if (Objects.isNull(uriTemplateVars)) {
				return uriTemplateVars;
			}
			Map newMap = new LinkedHashMap<>();
			uriTemplateVars.forEach((key, value) -> {
				if (value instanceof String) {
					newMap.put(key, XssUtil.cleanXSS((String) value));
				} else {
					newMap.put(key, value);
 
				}
			});
			return newMap;
		} else {
			return super.getAttribute(name);
		}
	}
}