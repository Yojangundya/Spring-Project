package ipl_auction.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.Dto.Management;
import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@org.springframework.stereotype.Controller
public class Controller {
	@Autowired
	Management management;

	@Autowired
	Team team;

	@Autowired
	Player player;

	@PostMapping("signup")
	public ModelAndView signup(@RequestParam String role) {
		ModelAndView andView = new ModelAndView();
		if (role.equals("Management")) {
			andView.setViewName("managementsignup.jsp");
			andView.addObject("management", management);
		} else if (role.equals("Player")) {
			andView.setViewName("playersignup.jsp");
			andView.addObject("player", player);
		} else if (role.equals("Team")) {
			andView.setViewName("teamsignup.jsp");
			andView.addObject("team", team);
		}
		return andView;

	}
}
