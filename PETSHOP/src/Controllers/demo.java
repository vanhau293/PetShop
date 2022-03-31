package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class demo {
	@RequestMapping("index")
	public String showLogin(){
		return "demo/manager";
	}
}
