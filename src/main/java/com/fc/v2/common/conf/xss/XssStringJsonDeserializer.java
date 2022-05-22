package com.fc.v2.common.conf.xss;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
* Created by wjy on 2020/11/5.
* 基于xss的JsonDeserializer
*/
public class XssStringJsonDeserializer extends JsonDeserializer<String> {


	@Override
	public Class<String> handledType() {
		return String.class;
	}

	@Override
	public String deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
		return XssUtil.cleanXSS(jsonParser.getValueAsString());
	}
}