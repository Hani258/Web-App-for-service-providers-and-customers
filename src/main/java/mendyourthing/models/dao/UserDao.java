package mendyourthing.models.dao;

import mendyourthing.models.User;

public interface UserDao extends AbstractDao<User>{
	User getUserByEmail( String email );
}
