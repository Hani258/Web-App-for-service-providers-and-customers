package mendyourthing.models.dao;

import mendyourthing.models.Provider;

public interface ProviderDao extends AbstractDao<Provider>{
	Provider getProviderByEmail( String email );
}
