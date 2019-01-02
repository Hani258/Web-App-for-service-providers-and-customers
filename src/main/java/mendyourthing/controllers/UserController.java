package mendyourthing.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import mendyourthing.models.Profile;
import mendyourthing.models.Provider;
import mendyourthing.models.Query;
import mendyourthing.models.Sp_interest;
import mendyourthing.models.User;
import mendyourthing.models.dao.ProfileDao;
import mendyourthing.models.dao.ProviderDao;
import mendyourthing.models.dao.QueryDao;
import mendyourthing.models.dao.Sp_interestDao;
import mendyourthing.models.dao.UserDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	@Autowired
	private ProviderDao providerDao;

	@Autowired
	private QueryDao queryDao;

	@Autowired
	private ProfileDao profileDao;

	@Autowired
	private Sp_interestDao sp_interestDao;

	@Autowired
	private HttpSession session;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("M/d/yyyy"), true));
	}

	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public String register(ModelMap models) {
		models.put("user", new User());
		return "register";
	}

	@RequestMapping(value = "/provider_register.html", method = RequestMethod.GET)
	public String provider_register(ModelMap models) {
		models.put("Provider", new Provider());
		return "provider_register";
	}

	@RequestMapping(value = "/register.html", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute User user,
			BindingResult bindingResult, SessionStatus sessionStatus) {
		User userObj = userDao.getUserByEmail(user.getEmail());
		if (userObj != null) {
			ObjectError error = new ObjectError("email",
					"User already exists !");
			bindingResult.addError(error);
		}
		if (bindingResult.hasErrors())
			return "register";
		user.setEmail(user.getEmail().toLowerCase());
		user = userDao.create(user);
		return "redirect:/login.html";
	}

	@RequestMapping(value = "/provider_register.html", method = RequestMethod.POST)
	public String provider_register(@Valid @ModelAttribute Provider provider,
			BindingResult bindingResult, SessionStatus sessionStatus) {
		// Provider providerObj =
		// providerDao.getProviderByEmail(provider.getEmail());
		// if (providerObj != null) {
		// ObjectError error = new ObjectError("email",
		// "Provider already exists !");
		// bindingResult.addError(error);
		// }
		if (bindingResult.hasErrors())
			return "provider_register";
		provider.setEmail(provider.getEmail().toLowerCase());
		provider = providerDao.create(provider);
		return "redirect:/provider_login.html";
	}

	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String login(ModelMap models) {
		models.put("user", new User());
		return "login";
	}

	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public String login(@RequestParam String email,
			@RequestParam String password, SessionStatus sessionStatus,
			ModelMap models) {

		if (email != null) {
			email = email.toLowerCase();
		}

		User userObj = userDao.getUserByEmail(email);
		if (userObj != null) {
			if (userObj.getPassword().equals(password)) {

				session.setAttribute("user", userObj);
				session.setAttribute("type", "user");
				return "redirect:/user.html";

			} else {
				return "redirect:/login.html";
			}
		} else {
			return "redirect:/login.html";
		}
	}

	@RequestMapping(value = "/provider_login.html", method = RequestMethod.GET)
	public String provider_login(ModelMap models) {
		models.put("Provider", new Provider());
		return "provider_login";
	}

	@RequestMapping(value = "/provider_login.html", method = RequestMethod.POST)
	public String provider_login(@RequestParam String email,
			@RequestParam String password, SessionStatus sessionStatus,
			ModelMap models) {

		if (email != null) {
			email = email.toLowerCase();
		}

		Provider providerObj = providerDao.getProviderByEmail(email);
		if (providerObj != null) {
			if (providerObj.getPassword().equals(password)) {
				session.setAttribute("Provider", providerObj);
				session.setAttribute("type", "Provider");
				return "redirect:/provider.html";

			} else {
				return "redirect:/provider_login.html";
			}
		} else {
			return "redirect:/provider_login.html";
		}
	}

	@RequestMapping(value = "/search.html", method = RequestMethod.GET)
	public String search(ModelMap models) {
		return "search";
	}

	@RequestMapping(value = "/search.html", method = RequestMethod.POST)
	public String search(@RequestParam String category,
			SessionStatus sessionStatus, ModelMap models) {
		System.out.println(category);
		List<Query> queries = queryDao.getQueryByCategory(category);
		models.put("queries", queries);
		return "query_list";

	}

	@RequestMapping(value = "/search1.html", method = RequestMethod.GET)
	public String search1(ModelMap models) {
		return "search1";
	}

	@RequestMapping(value = "/search1.html", method = RequestMethod.POST)
	public String search1(@RequestParam String category,
			SessionStatus sessionStatus, ModelMap models) {
		System.out.println(category);
		List<Profile> profiles = profileDao.getProfileByCategory(category);
		models.put("profiles", profiles);
		return "provider_list";

	}

	@RequestMapping(value = "/query.html", method = RequestMethod.GET)
	public String query(ModelMap models) {
		models.put("query", new Query());
		return "query";
	}

	@RequestMapping(value = "/query.html", method = RequestMethod.POST)
	public String query(@ModelAttribute Query query,
			SessionStatus sessionStatus, ModelMap models) {
		Query queryObj = queryDao.create(query);
		return "redirect:/user.html";
	}

	@RequestMapping(value = "/profile.html", method = RequestMethod.GET)
	public String profile(ModelMap models) {
		models.put("Profile", new Profile());
		return "profile";
	}

	@RequestMapping(value = "/profile.html", method = RequestMethod.POST)
	public String profile(@ModelAttribute Profile profile,
			SessionStatus sessionStatus, ModelMap models) {
		Profile profileObj = profileDao.create(profile);
		return "redirect:/provider.html";
	}
	
	@RequestMapping(value = "/interest.html", method = RequestMethod.GET)
	public String interest(ModelMap models) {
	
		return "query_list";
	}

	@RequestMapping(value = "/interest.html", method = RequestMethod.POST)
	public String interest(@ModelAttribute Sp_interest sp_interest,
			@RequestParam long qid, @RequestParam long spid,
			SessionStatus sessionStatus, ModelMap models) {

		System.out.println(qid);

		Query query = queryDao.findById(qid);
		Provider provider = providerDao.findById(spid);

		sp_interest.setQuery(query);
		sp_interest.setProvider(provider);
		
		Sp_interest sp_interestObj = sp_interestDao.create(sp_interest);

		return "sp_interest";
	}

	@RequestMapping(value = "/about.html", method = RequestMethod.GET)
	public String about(ModelMap models) {
		return "about";
	}

	@RequestMapping(value = "/logout.html", method = RequestMethod.GET)
	public String logout(ModelMap models) {
		session.invalidate();
		return "redirect:/login.html";
	}

	@RequestMapping(value = "/user.html", method = RequestMethod.GET)
	public String user(ModelMap models) {
		return "user";
	}

	@RequestMapping(value = "/provider.html", method = RequestMethod.GET)
	public String provider(ModelMap models) {

		return "provider";
	}
	
	@RequestMapping(value = "/categories.html", method = RequestMethod.GET)
	public String categories(ModelMap models) {
		return "categories";
	}
	

	@RequestMapping(value = "/cars.html", method = RequestMethod.GET)
	public String cars(ModelMap models) {
		return "cars";
	}
	@RequestMapping(value = "/post-ad.html", method = RequestMethod.GET)
	public String ad(ModelMap models) {
		return "post-ad";
	}
	@RequestMapping(value = "/bikes.html", method = RequestMethod.GET)
	public String bikes(ModelMap models) {
		return "bikes";
	}
	
	@RequestMapping(value = "/electronics-appliances.html", method = RequestMethod.GET)
	public String electronics(ModelMap models) {
		return "electronics-appliances";
	}
	@RequestMapping(value = "/fashion.html", method = RequestMethod.GET)
	public String fashion(ModelMap models) {
		return "fashion";
	}
	@RequestMapping(value = "/furnitures.html", method = RequestMethod.GET)
	public String furnitures(ModelMap models) {
		return "furnitures";
	}
	@RequestMapping(value = "/privacy.html", method = RequestMethod.GET)
	public String privacy(ModelMap models) {
		return "privacy";
	}
	@RequestMapping(value = "/contact.html", method = RequestMethod.GET)
	public String contact(ModelMap models) {
		return "contact";
	}
	@RequestMapping(value = "/faq.html", method = RequestMethod.GET)
	public String faq(ModelMap models) {
		return "faq";
	}
	@RequestMapping(value = "/single.html", method = RequestMethod.GET)
	public String single(ModelMap models) {
		return "single";
	}
	@RequestMapping(value = "/howitworks.html", method = RequestMethod.GET)
	public String howitworks(ModelMap models) {
		return "howitwork";
	}
	@RequestMapping(value = "/regions.html", method = RequestMethod.GET)
	public String regions(ModelMap models) {
		return "regions";
	}
	@RequestMapping(value = "/popular-search.html", method = RequestMethod.GET)
	public String popular(ModelMap models) {
		return "popular-search";
	}
	
	@RequestMapping(value = "/mobiles.html", method = RequestMethod.GET)
	public String mobiles(ModelMap models) {
		return "mobiles";
	}
	@RequestMapping(value = "/terms.html", method = RequestMethod.GET)
	public String terms(ModelMap models) {
		return "terms";
	}
	
	@RequestMapping(value = "/feedback.html", method = RequestMethod.GET)
	public String feedback(ModelMap models) {
		return "feedback";
	}
	@RequestMapping(value = "/services.html", method = RequestMethod.GET)
	public String services(ModelMap models) {
		return "services";
	}
	@RequestMapping(value = "/computers.html", method = RequestMethod.GET)
	public String computers(ModelMap models) {
		return "computers";
	}
	
//	@RequestMapping(value = "/electronics-appliances.html", method = RequestMethod.GET)
//	public String electronics(ModelMap models) {
//		return "electronics-appliances";
//	}
//	

	

	@RequestMapping(value = "/admin.html", method = RequestMethod.GET)
	public String admin(ModelMap models) {
		return "admin";
	}

	@RequestMapping(value = "/edit_profile.html", method = RequestMethod.GET)
	public String edit_profile(@RequestParam String email, ModelMap models) {
		models.put("user", userDao.getUserByEmail(email));
		return "edit_profile";
	}

	@RequestMapping(value = "/edit_profile.html", method = RequestMethod.POST)
	public String edit_profile(@Valid @ModelAttribute User user,
			BindingResult bindingResult, SessionStatus sessionStatus) {
		System.out.println(bindingResult);
		if (bindingResult.hasErrors())
			return "edit_profile";

		user = userDao.update(user);
		return "redirect:/";
	}
}
