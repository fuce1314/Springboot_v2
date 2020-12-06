package com.fc.test.shiro.service;

import java.io.Serializable;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.JavaUuidSessionIdGenerator;
import org.apache.shiro.session.mgt.eis.SessionIdGenerator;

public class UuidSessionIdGenerator implements SessionIdGenerator {

	@Override
	public Serializable generateId(Session session) {
		// TODO Auto-generated method stub
		Serializable uuid = new JavaUuidSessionIdGenerator().generateId(session);
		return uuid;
	}

}
