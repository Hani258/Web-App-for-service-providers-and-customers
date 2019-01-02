package mendyourthing.models.dao.impl;

import java.util.List;

import mendyourthing.models.Profile;
import mendyourthing.models.dao.ProfileDao;

import org.springframework.stereotype.Repository;

@Repository
public class ProfileDaoImpl extends AbstractDaoImpl<Profile> implements ProfileDao {
	
	public  ProfileDaoImpl(){
		setClazz(Profile.class);
	}
	
	
    public List<Profile> getProfileByCategory( String category )
    {
        String query = "from Profile profile "
            + "where lower(Profile.category) = :category";

        List<Profile> profiles = em.createQuery( query, Profile.class )
            .setParameter( "category", category.toLowerCase() )
            .getResultList();
        return profiles.size() == 0 ? null : profiles;
    }


	
}


	
