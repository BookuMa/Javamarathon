package jp.co.rakus.java_marathon_beginner_again.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/name-receiver")
public class NameReceiver {
	@RequestMapping("/view-page")
	public String View(){
		return "inputname";
	}
	
	@RequestMapping("/receive")
	public String receive(String name, Model model){
		model.addAttribute("name", name);
		return "outputname";
	}
}
