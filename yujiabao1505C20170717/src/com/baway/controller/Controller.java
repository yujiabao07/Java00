package com.baway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baway.Services.ServiceImpi;
import com.baway.pojo.Tuser;

@org.springframework.stereotype.Controller
@RequestMapping("user")
public class Controller {
	
	@Autowired
	private ServiceImpi s;
	//��תҳ��·��
	@RequestMapping("insert")
	public String add(Tuser tuser){
		s.add(tuser);
	//����5�������
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "adds";
		
	}
}
