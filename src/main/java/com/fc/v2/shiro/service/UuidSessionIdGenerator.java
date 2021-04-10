package com.fc.v2.shiro.service;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.JavaUuidSessionIdGenerator;
import org.apache.shiro.session.mgt.eis.SessionIdGenerator;

import java.io.Serializable;

public class UuidSessionIdGenerator implements SessionIdGenerator {

	@Override
	public Serializable generateId(Session session) {
		// TODO Auto-generated method stub
		Serializable uuid = new JavaUuidSessionIdGenerator().generateId(session);
		return uuid;
	}

}
