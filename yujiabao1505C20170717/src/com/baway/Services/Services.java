package com.baway.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baway.dao.UserMapper;
import com.baway.pojo.Tuser;

@Service
@Transactional
public class Services implements ServiceImpi{
	//实现接口方法 
	@Autowired
	private UserMapper u;
	
	@Override
	public void add(Tuser tuser) {
		// TODO Auto-generated method stub
		u.add(tuser);
	}

}
