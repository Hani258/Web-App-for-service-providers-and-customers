package mendyourthing.models.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import mendyourthing.models.dao.AbstractDao;

import org.springframework.transaction.annotation.Transactional;

public abstract class AbstractDaoImpl<T extends Serializable> implements
		AbstractDao<T> {
	
	private Class<T> clazz;

	@PersistenceContext
	EntityManager em;

	public final void setClazz(Class<T> clazzToSet) {
		this.clazz = clazzToSet;
	}

	public T findById(long id) {
		return em.find(clazz, id);
	}

	public List<T> findAll() {
		return em.createQuery("from " + clazz.getName()).getResultList();
	}

	@Transactional
	public T create(T entity) {
		em.persist(entity);
		em.flush();
		return entity;
	}

	@Transactional
	public T update(T entity) {
		T done = em.merge(entity);
		return done;
	}

	@Transactional
	public void delete(T entity) {
		em.remove(em.contains(entity) ? entity : em.merge(entity));
		
	}

	@Transactional
	public void deleteById(long entityId) {
		T entity = findById(entityId);
		em.remove(em.contains(entity) ? entity : em.merge(entity));
	}	
}
