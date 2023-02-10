package ipl_auction.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.Dao.PlayerDao;
import ipl_auction.Dao.TeamDao;
import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@Controller
public class TeamController {

	@Autowired
	TeamDao teamDao;
	
	@Autowired
	PlayerDao playerDao2;

	@PostMapping("teamsignup")
	public ModelAndView save(@ModelAttribute Team team) {
		teamDao.save(team);
		ModelAndView andView = new ModelAndView("index.jsp");
		andView.addObject("msg", "Team Account Created");
		return andView;
	}

	@PostMapping("teamlogin")
	public ModelAndView login(@RequestParam String username, @RequestParam String password, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Team team = teamDao.login(username);
		if (team == null) {
			andView.setViewName("teamLogin.jsp");
			andView.addObject("msg", "Invalid Username");
		} else {
			if (team.getPassword().equals(password)) {
				if(team.isStatus())
			{
				session.setAttribute("team", team);
				andView.setViewName("teamhome.jsp");
				andView.addObject("msg", "Login Sucesfully");
				andView.addObject("img", team.getImage());
			} else {
				andView.setViewName("teamLogin.jsp");
				andView.addObject("msg", "Contact Management for Access");
			}
		}else {
			andView.setViewName("teamLogin.jsp");
			andView.addObject("msg", "Invalid password");
		}
		}
		return andView;
	}
	@GetMapping("viewallteam")
	public ModelAndView viewAllTeam()
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=teamDao.getAllTeam();
		if(teams.isEmpty())
		{
			 andView.setViewName("managementhome.jsp");
			 andView.addObject("msg", "There are no team present");
			 return andView;
		}else {
			
			andView.setViewName("viewallteam.jsp");
			andView.addObject("teams", teams);
			return andView;
		}
	}
	@RequestMapping("addamount")
	public String addamount(@RequestParam double amount,@RequestParam int id)
	{
		ModelAndView andView=new ModelAndView();
		Team team=teamDao.findById(id);
		team.setWallet(team.getWallet()+amount);
		teamDao.update(team);
		return "viewallteam";
	}
	@RequestMapping("changestatusteam")
	public String changestatus(@RequestParam int id)
	{
		Team team=teamDao.findById(id);
		if(team.isStatus())
		{
			team.setStatus(false);
		}else 
			team.setStatus(true);
			teamDao.update(team);
		return "viewallteam";
	}
	@RequestMapping("buyplayers")
	public ModelAndView buyPlayers(@RequestParam int id,HttpSession session)
	{
		ModelAndView andView=new ModelAndView();
		Team team=(Team) session.getAttribute("team");
		Player player=playerDao2.getPlauyerById(id);
		if(player.getPrice()>team.getWallet())
		{
			andView.addObject("msg", "Insufficient funud");
			andView.addObject("img", team.getImage());
			andView.setViewName("teamhome.jsp");
		}else {
			team.setWallet(team.getWallet()-player.getPrice());
			player.setStatus("Sold");
			player.setTeam(team);
			List<Player> players=team.getPlayers();
			players.add(player);
			team.setPlayers(players);
			
			teamDao.update(team);
			playerDao2.updatePlayer(player);
			
			andView.addObject("msg", "Player Bought Sucessfully");
			andView.addObject("img", team.getImage());
			andView.setViewName("teamhome.jsp");
		}
		return andView;
	}
	@RequestMapping("viewteam")
	public ModelAndView viewPlayers(HttpSession session)
	{
		Team team=(Team) session.getAttribute("team");
		ModelAndView andView=new ModelAndView();
		List<Player> players=team.getPlayers();
		if(players.isEmpty())
		{
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("teamnamw", team.getName());
			andView.addObject("msg", "No Players Are There");
			return andView;
		}else {
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("teamname", team.getName());
			andView.addObject("players", players);
			return andView;
			
		}
	}
	@RequestMapping("teamhomedummy")
	public ModelAndView dummy(HttpSession session)
	{
		Team team=(Team) session.getAttribute("team");
		ModelAndView andView=new ModelAndView("teamhome.jsp");
		andView.addObject("img", team.getImage());
		return andView;
		
	}
	@RequestMapping("viewteambyname")
	public ModelAndView viewTeamByname()
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=teamDao.getAllTeam();
		
		andView.setViewName("viewteambyname.jsp");
		andView.addObject("teams", teams);
		return andView;
				
	}
	@RequestMapping("fetchusingteam")
	public ModelAndView fetchTeamByName(@RequestParam String name)
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=teamDao.getAllTeamByName(name	);
		Team team=teams.get(0);
		List<Player> players=team.getPlayers();
		andView.setViewName("viewmyteam.jsp");
		andView.addObject("players", players);
		return andView;
	}
	
}
