package com.fc.v2.common.conf.xss;

import java.util.Objects;

/**
* Created by wjy on 2020/11/5.
* xss工具类
*/
public class XssUtil {

	public static String cleanXSS(String value) {
		if (Objects.isNull(value)) {
			return value;
		}
		//在这里自定义需要过滤的字符
		value = value.replaceAll("<", "& lt;").replaceAll(">", "& gt;");
		value = value.replaceAll("\\(", "& #40;").replaceAll("\\)", "& #41;");
		value = value.replaceAll("'", "& #39;");
		value = value.replaceAll("eval\\((.*)\\)", "");
		value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
		value = value.replaceAll("<script>", "");
		return value;
	}
}