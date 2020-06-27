package com.ssh.dao;

import java.util.List;

import com.ssh.dto.Bigdata;

public interface ReviewBasicDAO {

	//查询显示前150条关键词
	public List<Bigdata> display();
}
