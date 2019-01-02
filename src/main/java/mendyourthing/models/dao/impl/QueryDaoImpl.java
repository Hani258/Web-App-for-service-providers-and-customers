package mendyourthing.models.dao.impl;

import java.util.List;

import mendyourthing.models.Query;
import mendyourthing.models.dao.QueryDao;

import org.springframework.stereotype.Repository;

@Repository
public class QueryDaoImpl extends AbstractDaoImpl<Query> implements QueryDao {

	public QueryDaoImpl() {
		setClazz(Query.class);
	}

	public List<Query> getQueryByCategory(String category) {
		String query = "from Query query  "
				+ "where lower(query.category) = :category";

		List<Query> queries = em.createQuery(query, Query.class)
				.setParameter("category", category.toLowerCase())
				.getResultList();
		return queries.size() == 0 ? null : queries;
	}
}
