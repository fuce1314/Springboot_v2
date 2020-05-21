package com.fc.test.common.support;

import java.util.Arrays;
import java.util.List;
import com.fc.test.util.StringUtils;

import cn.hutool.core.util.StrUtil;

/**
 * 类型转换器
 * 
 * @author fc
 * 
 */
public class Convert {

	/**
	 * 转换为字符串<br>
	 * 如果给定的值为null，或者转换失败，返回默认值<br>
	 * 转换失败不会报错
	 * 
	 * @param value 被转换的值
	 * @param defaultValue 转换错误时的默认值
	 * @return 结果
	 */
	public static String toStr(Object value, String defaultValue) {
		if (null == value) {
			return defaultValue;
		}
		if (value instanceof String) {
			return (String) value;
		}
		return value.toString();
	}

	/**
	 * 转换为Integer数组<br>
	 * @param split 被转换的值
	 * @return 结果
	 */
	public static Integer[] toIntArray(String str) {
		return toIntArray(",", str);
	}

	/**
	 * 转换为Integer数组<br>
	 * @param split 分隔符
	 * @param split 被转换的值
	 * @return 结果
	 */
	public static Integer[] toIntArray(String split, String str) {
		if (StrUtil.isEmpty(str)) {
			return new Integer[] {};
		}
		String[] strings = str.split(split);
		final Integer[] ints = new Integer[strings.length];
		for (int i = 0; i < strings.length; i++) {
			final Integer v = toInt(strings[i], 0);
			ints[i] = v;
		}
		return ints;
	}

	/**
	 * 转换为int<br>
	 * 如果给定的值为空，或者转换失败，返回默认值<br>
	 * 转换失败不会报错
	 * @param value 被转换的值
	 * @param defaultValue 转换错误时的默认值
	 * @return 结果
	 */
	public static Integer toInt(Object value, Integer defaultValue) {
		if (value == null) {
			return defaultValue;
		}
		if (value instanceof Integer) {
			return (Integer) value;
		}
		if (value instanceof Number) {
			return ((Number) value).intValue();
		}
		final String valueStr = toStr(value, null);
		if (StringUtils.isEmpty(valueStr)) {
			return defaultValue;
		}
		try {
			return Integer.parseInt(valueStr.trim());
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * 转换为List<String>数组<br>
	 * @param split 被转换的值
	 * @return 结果
	 */
	public static List<String> toListStrArray(String str) {
		String[] stringArray = toStrArray(str);
		List<String> stringB = Arrays.asList(stringArray);
		return stringB;
	}

	/**
	 * 转换为String数组<br> 
	 * @param split 被转换的值
	 * @return 结果
	 */
	public static String[] toStrArray(String str) {
		return toStrArray(",", str);
	}

	/**
	 * 转换为String数组<br>
	 * 
	 * @param split 分隔符
	 * @param split 被转换的值
	 * @return 结果
	 */
	public static String[] toStrArray(String split, String str) {
		return str.split(split);
	}

}
