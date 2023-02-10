package ipl_auction.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.Dao.ManagementDao;
import ipl_auction.Dto.Management;

@Controller
public class ManagementController {

	@Autowired
	ManagementDao managementDao;

	@PostMapping("managementsignup")
	public ModelAndView savemanagement(@ModelAttribute Management management) {
		managementDao.save(management);
		ModelAndView andView = new ModelAndView("index.jsp");
		andView.addObject("msg", "Managaement Account got Created");
		return andView;
	}

	@PostMapping("managementlogin")
	public ModelAndView login(@RequestParam String username, @RequestParam String password) {
		ModelAndView andView = new ModelAndView();
		Management management = managementDao.login(username);
		if (management == null) {
			andView.setViewName("managementLogin.jsp");
			andView.addObject("msg", "Invalid UserName");
		} else {
			if (management.getPassword().equals(password)) {
				andView.setViewName("managementhome.jsp");
				andView.addObject("msg", "Login Sucesfully");
			} else {
				andView.setViewName("managementLogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}

}
