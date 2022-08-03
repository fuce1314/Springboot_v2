package com.fc.v2.common.conf;

import org.springframework.stereotype.Component;
import org.springframework.web.filter.FormContentFilter;

/**
 * 让put能获取到参数
 */
@Component
public class PutFilter extends FormContentFilter {
}