package jp.co.rakus.java_marathon_beginner_again.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user-info-controller")
public class UserInfoController {
	@ModelAttribute
	public UserInfoForm setUpUserInfoForm(){
		return new UserInfoForm();
	}
	
	@RequestMapping("/view-page")
	public String viewPage() {
		return "inputuserinfo";
	}
	
	
	@RequestMapping("/show-result")
	public String showResult(UserInfoForm form, Model model){
		UserInfoForm answer = new UserInfoForm();
		answer.setName(form.getName());
		answer.setAge(form.getAge());
		answer.setAddress(form.getAddress());
		model.addAttribute("anaswer", answer);
		
		return "outputuserinfo";
	}
}
