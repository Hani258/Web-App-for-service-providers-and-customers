package mendyourthing.models.dao;

import java.util.List;

import mendyourthing.models.Profile;

public interface ProfileDao extends AbstractDao<Profile>{
	List<Profile> getProfileByCategory( String category );
}
