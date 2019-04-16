package com.hcl.Spring;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ServiceImple implements ServiceIntf {
@Autowired
Daointf dao;
	public void save(Pojo pojo) {
	dao.save(pojo);	
		
	}

	public List<Pojo> list() {
		
		return dao.list();
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
		
	}

	@Override
	public Pojo edit(int id) {
	
		return dao.edit(id);
	}

	@Override
	public void update(int id, Pojo pojo) {
		dao.update(id,pojo);
		
	}

}
