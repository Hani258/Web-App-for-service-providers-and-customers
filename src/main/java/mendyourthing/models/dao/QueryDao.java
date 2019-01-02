package mendyourthing.models.dao;

import java.util.List;

import mendyourthing.models.Query;

public interface QueryDao extends AbstractDao<Query>{
	List<Query> getQueryByCategory( String Category );
}
