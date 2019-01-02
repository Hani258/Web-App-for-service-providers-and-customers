package mendyourthing.models.dao;

import mendyourthing.models.Provider;
import mendyourthing.models.Query;
import mendyourthing.models.Sp_interest;

public interface Sp_interestDao extends AbstractDao<Sp_interest>{
	Query getQueryById( long id );
	Provider getProviderById( long id );

}
