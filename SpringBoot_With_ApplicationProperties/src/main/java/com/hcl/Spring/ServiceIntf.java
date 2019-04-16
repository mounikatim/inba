package com.hcl.Spring;

import java.util.List;

public interface ServiceIntf {

	void save(Pojo pojo);

	List<Pojo> list();

	void delete(int id);

	Pojo edit(int id);

	void update(int id, Pojo pojo);

}
