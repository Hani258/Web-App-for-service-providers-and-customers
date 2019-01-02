package mendyourthing.models.dao;

import java.util.List;

/*
 * This is a general interface containing all the common methods 
 * that all the entities will need so that we don't have to 
 * repeat them in each dao interface.
 */
public interface AbstractDao<T> {
	public T findById(long id);

	public List<T> findAll();

	public T create(T entity);

	public T update(T entity);

	public void delete(T entity);

	public void deleteById(long entityId);
}
