package com.hcl.Spring;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class DaoImplementation implements Daointf {
@PersistenceContext

     private EntityManager entityManager;

	public void save(Pojo pojo) {
		entityManager.persist(pojo);
		}

	public List<Pojo> list() {
		
		return entityManager.createQuery("from Pojo" ).getResultList();
	}

	@Override
	public void delete(int id) {
		entityManager.createNativeQuery("delete from Pojo where id=?").setParameter(1, id).executeUpdate();
		
	}

	@Override
	public Pojo edit(int id) {
		
		List<Pojo> sql= entityManager.createQuery(" from Pojo where id=?").setParameter(1, id).getResultList();
		Iterator<Pojo> it=sql.iterator();
		Pojo p=null;
		while(it.hasNext())
		{
			p=it.next();
		}
		return p;
	}

	public void update(int id, Pojo pojo) {
		Query sql=entityManager.createNativeQuery("update Pojo set name=?,ph=?,city=? where id=?");
		sql.setParameter(1, pojo.getName());
		sql.setParameter(2, pojo.getPh());
		sql.setParameter(3, pojo.getCity());
		sql.setParameter(4,id);
		sql.executeUpdate();
	}

}
