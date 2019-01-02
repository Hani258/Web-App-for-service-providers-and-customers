package mendyourthing.models.dao.impl;

import java.util.List;

import mendyourthing.models.User;
import mendyourthing.models.dao.UserDao;

import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl extends AbstractDaoImpl<User> implements UserDao {
	
	public UserDaoImpl(){
		setClazz(User.class);
	}
	
	
    public User getUserByEmail( String email )
    {
        String query = "from User user "
                + "where lower(user.email) = :email";

        List<User> users = em.createQuery( query, User.class )
            .setParameter( "email", email.toLowerCase() )
            .getResultList();
        return users.size() == 0 ? null : users.get( 0 );
    }
}
