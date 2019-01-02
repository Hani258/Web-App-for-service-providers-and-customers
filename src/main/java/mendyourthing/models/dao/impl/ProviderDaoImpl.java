package mendyourthing.models.dao.impl;

import java.util.List;

import mendyourthing.models.Provider;
import mendyourthing.models.dao.ProviderDao;

import org.springframework.stereotype.Repository;

@Repository
public class ProviderDaoImpl extends AbstractDaoImpl<Provider> implements ProviderDao {
	
	public  ProviderDaoImpl(){
		setClazz(Provider.class);
	}
	
	
    public Provider getProviderByEmail( String email )
    {
        String query = "from Provider provider "
            + "where lower(provider.email) = :email";

        List<Provider> provider = em.createQuery( query, Provider.class )
            .setParameter( "email", email.toLowerCase() )
            .getResultList();
        return provider.size() == 0 ? null : provider.get( 0 );
    }
}
