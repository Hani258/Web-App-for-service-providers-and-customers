package mendyourthing.models.dao.impl;

import mendyourthing.models.Provider;
import mendyourthing.models.Query;
import mendyourthing.models.Sp_interest;
import mendyourthing.models.dao.Sp_interestDao;

import org.springframework.stereotype.Repository;

@Repository
public class Sp_interestDaoImpl extends AbstractDaoImpl<Sp_interest> implements Sp_interestDao {
	
	public Sp_interestDaoImpl(){
		setClazz(Sp_interest.class);
	}
	
	
//    public Sp_interest getQueryById( long id )
//    {
//        long id = "from Query query "
//                + "where lower(query.id) = :id";
//
//        List<Query> queries = em.createQuery( query, query.class )
//            .setParameter( "id", id.toLowerCase() )
//            .getResultList();
//        return queries.size() == 0 ? null : queries.get( 0 );
//    }


	@Override
	public Query getQueryById(long id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Provider getProviderById(long id) {
		// TODO Auto-generated method stub
		return null;
	}
}
