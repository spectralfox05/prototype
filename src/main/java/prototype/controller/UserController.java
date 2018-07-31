package prototype.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import prototype.model.Users;
import prototype.service.UsersService;

@Controller
public class UserController {
	
	@Autowired
	private UsersService us;
	
	@RequestMapping("/home.do")
	public String home() {	
		System.out.println("home");
		return "home";
	}
	@RequestMapping("loginForm.do")
	public String loginForm() {		
		System.out.println("loginForm");
		return "loginForm";
	}
	@RequestMapping("joinForm.do")
	public String joinForm() {		
		System.out.println("joinForm");
		return "joinForm";
	}
	@RequestMapping("privacy.do")
	public String privacy() {		
		System.out.println("privacy");
		return "privacy";
	}
	@RequestMapping("tos.do")
	public String tos() {		
		System.out.println("tos");
		return "tos";
	}
	@RequestMapping("newPw.do")
	public String newPw() {		
		System.out.println("newPw");
		return "newPw";
	}
	@RequestMapping("join.do")
	public String join(Users users, Model model) {
		System.out.println("join");
		int result = us.insert(users);
		if (result > 0) 
			return "redirect:loginForm.do";
		if(users!=null) {
		System.out.println("num: "+users.getUnum());
		System.out.println("name: "+users.getName());
		System.out.println("mail: "+users.getUserEmail());
		}else
			System.out.println("user=null");
		System.out.println("insert실패");
		model.addAttribute("Users", users);
		model.addAttribute("msg", "잘못된 입력");
		return "joinForm";
	}
	
}
